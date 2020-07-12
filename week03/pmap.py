import argparse
import time
import json
import os
import socket
from  concurrent.futures import ThreadPoolExecutor,ProcessPoolExecutor
def parse_ip(ip_str):
    ip_from,ip_to = ip_str.split('-')
    ip_0,ip_1,ip_2,ip_3_from = ip_from.split('.')
    ip_3_to = ip_to.split('.')[3]
    for i in range(int(ip_3_from), int(ip_3_to)):
        yield '.'.join([ip_0, ip_1,ip_2,str(i)])

def scan_port(ip, port):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    try:
        s.settimeout(0.05)
        s.connect((ip, port))
        s.shutdown(1)
        print('{ip}:{port} is open'.format(ip=ip, port=port))
        return True
    except :
        return False
    finally:
        s.close()
def scan_ip(ip):
    command_os = f'ping -c 1 -t 2 {ip}'
    result = os.popen(command_os).read()
    if 'ttl' in result:
        print('ping:{}  connect'.format(ip))
        return True
    return False
class HostScanner(object):
    def __init__(self,args):
        self.simul_number = args.m
        self.f = args.f    # -f ping：进行 ping 测试  -f tcp：进行 tcp 端口开放、关闭测试。
        self.ip = [ip for ip in parse_ip(args.ip)] if self.f == 'ping' else args.ip
        self.file_path = args.w
        self.model = args.m
        self.show_time = args.v

    def run_scan_ip(self, ip):
        result = scan_ip(ip)
        return {'ip':ip,'connect':result}

    def run_scan_port(self, port):
        result = scan_port(self.ip, port)
        return {'ip':self.ip,'port':port,'open':result}

    def run(self):
        time_start = int(time.time())
        Executer = ThreadPoolExecutor if self.model == 'thread' else ProcessPoolExecutor
        with Executer() as pool:
            if self.f == 'ping':
                result = pool.map(self.run_scan_ip,self.ip)
            else:
                result = pool.map(self.run_scan_port,[port for port in range(65535+1)])
        time_end = int(time.time())
        data = list()
        for i in result:
            data.append(i)
        if self.show_time:
            print("time cost:{}".format(time_end - time_start))
        if self.file_path:
            with open(self.file_path,'w') as f:
                f.write(json.dumps(data))
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-n', type=int,help='请输入进程或者线程数')
    parser.add_argument('-f', type=str, choices=['tcp', 'ping'], default='tcp', help='请输入操作方式选择是进行 ping 测试还是进行 tcp 端口开放、关闭测试')
    parser.add_argument('-ip', metavar='ip', required=True, help='ip eg. 192.0.0.1 192.0.0.1-192.0.0.100')
    parser.add_argument('-m', type=str, choices=['proc', 'thread'], default='proc',  help='多线程or多进程')
    parser.add_argument('-w', metavar='filename', help='扫描结果保存文件')
    parser.add_argument('-v', type=str,default=None, help='打印扫描器运行耗时')

    args = parser.parse_args()
    host_scanner = HostScanner(args)
    host_scanner.run()
if __name__ == '__main__':
    main()
