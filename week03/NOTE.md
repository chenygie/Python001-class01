学习笔记
# tips 1 argparse

argparse的用法

```python
import argparse
parser = argparse.ArgumentParser()
parser.add_argument('-n', type=int,help='请输入进程或者线程数')
args = parser.parse_args()
number = args.n
```

# tips 2 ip切割的用法

```python
def parse_ip(ip_str):
    ip_from,ip_to = ip_str.split('-')
    ip_0,ip_1,ip_2,ip_3_from = ip_from.split('.')
    ip_3_to = ip_to.split('.')[3]
    for i in range(int(ip_3_from), int(ip_3_to)):
        yield '.'.join([ip_0, ip_1,ip_2,str(i)])
```

# tips 3 线程和进程map 用法

```python
Executer = ThreadPoolExecutor if self.model == 'thread' else ProcessPoolExecutor
with Executer() as pool:
  if self.f == 'ping':
    result = pool.map(self.run_scan_ip,self.ip)
   else:
    result = pool.map(self.run_scan_port,[port for port in range(65535+1)])
```

# tips4 使用系统命令进行IP扫描

```python
command_os = f'ping -c 1 -t 2 {ip}'
result = os.popen(command_os).read()
```

# tips 5 使用python自带的socket进行端口扫描

```python
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
try:
  s.settimeout(0.05)
  s.connect((ip, port))
  s.shutdown(1)
  return True
except :
  return False
finally:
  s.close()
```

# tips 6 需要加强点

* 需考虑网络异常、超时等问题，增加必要的异常处理 需要加强
* socket编程的需要加强
* python中IP扫描需要加强，不能使用系统os这种取巧方式

