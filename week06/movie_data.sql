-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
--
-- Host: localhost    Database: douban
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` bigint DEFAULT NULL,
  `user` text,
  `content` text,
  `star` bigint DEFAULT NULL,
  KEY `ix_movie_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (0,'这个假了','其实还是蛮想给及格的，毕竟演技还是在线的，但是剧本真的全面拉胯，除了几个为了让演员们秀演技的桥段，整体丝毫没有亮点。于是整体看下来似乎就是个“无人机广告”+“拉面广告”+“花生酱广告”+“户外用品广告”的集合，散场后，我很想去吃碗泡面顺便网购台无人机玩耍。',2),(1,'张咏轩Wayne®','剧本一踏湖糊涂，人设傻白甜，所有桥段都是可预料的，所有转折都是俗套的，我就想无人机不好好利用做求救工具，反而浪费在无意义的侦查以及传送食物，最后冒险出门以身试险，多少有点没脑子，角色光环更是闪瞎眼，成批扑涌上来的丧尸，两人居然毫发无损，多少有点含糊其辞，除了演员的个人魅力和卖力的群众演员外，这片放在类型片里简直贻笑大方，结尾就更不想吐槽，大声量和大体积的直升机从低空至顶，居然没有任何痕迹，丧尸没有任何影响，为了突然而来的希望用了最煽情又最无脑的方式，都给整笑了，末日生存指南如果按这样来，他们活不过一晚就死翘翘，神烦韩式的灾难片拍摄手法，用力过猛还用不对地方，反复强调#要活下去#，最后也成了一句空话，既没有情绪又没有深度，对比《釜山行》简直平庸又空洞，倒是跟今年的新冠疫情，意外有了空间上的呼应',2),(2,'96년생 ㅇㅅㅎ','一星给设定，一星gei丧尸（爬上爬下的你们辛苦了），最后一星给男女主。天杀的鬼知道没有刘亚仁和朴信惠这个片会难堪成什么样……前半段一惊一乍（但好歹逻辑还在），后半段主角光环太强我被晃瞎了眼睛。朴信惠从楼上跳下来跳进丧尸堆毫发未伤的时候我也就迟疑了一下，后边给和大叔变异老婆关一起居然还没死，那真是牛逼……总之，这是第一部看丧尸片我内心一直在说：你们真的该死了，你们到现在都没死真的太不合理了。以上。',3),(3,'Jenue','十分单纯的爆米花电影。不得不说主角光环就是很强大，僵尸就是偏偏不去啃你们这两块肉.. 无论在什么框架的电影，刘亚仁的演技总能让作品本身再提高半颗星。主角的人设没什么特别的，就是负责打怪而已。开头OP有惊喜到我，配乐很好听，OP很像美剧的开头，大概和导演长期在美国生活有关。无需去争论刘亚仁为什么会拍这种爆米花电影，演员总要不断拍戏的，不可能拍的每个剧本都是神作。在刘亚仁喜欢挑战不同角色的角度来说，这样的酣畅求生的角色他也是第一次，作为粉丝，也能看到他新的一面，挺不错。',4),(4,'Ellie','虽然只冲着刘亚仁看的，但是这个故事处处都站不住脚，莫名其妙....女主这个角色更是没说服力，朴信惠是有什么圣光附体吗，不管多少僵尸扑过来就是不会咬她....',3),(5,'有心打扰','1.八楼的中年大叔把朴信惠迷晕之后，拖去卧室，竟然是要拿去喂已经变成丧尸的老婆。编剧这充满爱的脑回路，差点让我又相信婚姻、相信爱情；2.大篇幅呈现在未知病毒来袭，未感染者静养家中保平安，挺符合现实，也是丧尸题材里面难得一见的编排。',2),(6,'NealNealNeal','朋友一兩個月前就开始给我预告\n今天首映\n一起去看了\n\n影片整体来说不怎么新鲜\n就像电影里那些囤了两个星期\n甚至一个月的加工食品\n也没什么营养\n社会话题也不够尖锐\n也没有明显的个人风格\n台词也比较老\n\n艺术分我给45分\n技术分我给70分\n演员演技65分\n新鲜指数45分\n\n亮点☞刘亚仁的个人魅力+镜头处理\n\n🇰🇷每个月最后一个周三是文化日，全国影院都半价，五千韩币一张，人民币30块左右...今天算是赶上了，疫情还没结束，座位都要保持距离，影院为了生存也是各种折扣...今年真的没怎么进过影院，基本都在家看，而且前几天又心血来潮买了个大荧幕，在自己的房间里看挺不错的...今年开始觉得看书比看电影更有营养，还是多看书，少看影视作品，而且很多电视节目，电视剧，电视新闻真的不看也罢。',2),(7,'桃桃林林','5分，看到最后也没太懂这个片子的设定思路，大概就是主角光环是怎么帮助你在丧尸世界求生吧，全程毫无逻辑，主角瞬间变全能战士，而小配角只能随便咬死。',2),(8,'雪鹅','想打四星。刘亚仁演技太流弊必须加一星。他太会拿捏情绪了让人带入感好强，看的时候觉得好绝望啊。而且他真的很拼。剧情其实也就那样，没有什么特别惊艳的，但是刘亚仁值得五星。结尾看完居然有点点想哭。我的眼泪就没值钱过。',5),(9,'旅客','恕我直言这片子很傻逼。毫无逻辑。\n这部电影告诉你在末世怎样活着，不是看你余粮够不够，不是看你有没有枪，不是看你有没有水。这些都不重要，你想活着的惟一因素是看你有没有主角光环。\n你只要有主角光环想死都死不了。想上吊死，没事，死不掉，死之前会有人救你。没水喝，没事，马上就下雨了。没东西吃，没事，有人送给你。丧尸来了，没事，它不咬有主角光环的人。到天台走投无路了，没事，直升机过来救同志们啦！',2),(10,'江清月近人','刘亚仁，唉，好好选剧本吧！你的演技演这种片子简直就是暴殄天物啊。希望忠武路大导多看看刘亚仁吧！\n刘亚仁真的超棒，好好选剧本演戏，忠武路的未来就是你的！',3),(11,'大聪看电影','影片完全没预想中的好，甚至比《釜山行2》还要俗一些。\n刘亚仁演技没得说，大拇指赞送上。但影片逻辑动机有着重大问题，比如一开头丧尸爆发时，为何住在小区的人全部跑出来，不应该是危机爆发大家都锁好门在家像男主一样么又不是在商场这样的开放环境，此外还有很多处就不一一举例了。\n影片剧情流畅但不代表节奏处理得好，中后段应该发力让影片有更强的紧张感和张力，但却有一大段时间处理男女聊天。\n煽情点和反转也来得意料之中毫无悬念，小格局封闭环境没法造就更多的困境选择，更没法和孔侑的《釜山行》对比了。',2),(12,'Z星驰007','没眼看没眼看啊，这是屌丝宅男做的一场意淫梦吧，梦里有刺激逃生、生死大战，还不忘要加一个美女相伴，最后实在编不下去了救援队直接来了！惊险的梦里依然是一个精神小伙儿，断水断粮十多天依然脸白身净',2),(13,'Capric','屎一样的剧本！！求求韩国导演了，放过丧失题材吧！',1),(14,'咖啡拿铁','故事虽然一般，但刘亚仁还是没让我失望。',4),(15,'세넓또많','真特么群众演员不要钱，打不完的丧尸，不可测的人性，堪称无人机大型广告现场+肥宅diss片（能撞破防盗门的肥仔跟在家宅10天就想死的游戏废宅），刘亚仁这人设也算是惹人嫌出了新高度，怼两句二缺、作死、闲得蛋疼毫不为过，看完更感家中必备应急食品工具+砍人武器，日常还得多健身。以及，最后屋顶戏想喊哒哒哒 哒哒 哒 哒哒哒的一定不止我一人。',3),(16,'拥桑','5.8/10 丧尸片中的下等。原谅我真的无法对刘亚仁恶臭。真的可以说整部电影剧情硬伤全面拉跨，亚仁啊亚仁 你为什么要浪费演技接这个？在家25天造型没有变化，前面剧情算是勉勉强强。后面丧尸大乱斗以及模仿《釜山行》人性探讨一塌糊涂，两个主演真的特别圣光环绕，朴信惠那个角色是真的比《釜山行》孕妇圣光光辉10086倍，那样都不死…后面结局交代不清不楚，无缘无故被救。你觉得该死，他就是死不了。真的白费刘亚仁了啊 狗血的无语。亚仁啊！！好好接剧本，我们走忠武路的！靠',3),(17,'Jessie','韩国首映第一天刚刚看完，怎么说呢，总体还行但是故事性不强。从头到尾就是打丧尸，然后丧尸们和釜山行里一样，都是动作迅猛到可怕。但是故事的展开远不如釜山行。刘亚仁的演技还是可以的，宅在家的桥段暗合了现在疫情肆虐的现实背景，看起来别有一番滋味。\nps家里还是要习惯性的多屯点儿吃的，说不定一觉醒来就出不了门了',3),(18,'高级动物','片名应该叫丧尸公寓之死宅的艳遇！',3),(19,'哼哼.floweray','烂是烂了点，可像极了在家隔离期间憋疯后的我脑补的剧情，要真是丧尸病毒，估计活不过九十分钟',3),(0,'亵渎电影','低成本小格局的片子，这样倒是挺省钱的，韩国人玩起类型片套路驾轻就熟，虽然不出彩，也不会犯多大的错，当成小爽片随便看看还行。',3),(1,'Ymo','不好看，没故事，好失望…还好电影票打折才四千韩币一个人，感觉也就值这点票价了',2),(2,'看守煙霧的人','是這幾月以來看過的上座率最高的電影，疫情後難得有具備明星演員和規模的商業片上映。韓國影院從沒有關門，這兩週政府還在透過補貼票價扶持電影業發展，很多時候基本是半價。為了亞仁在首映日冒雨奔去了影院，還是失望了🙃。片頭cg人體透析令人血脈噴張，有點拔高期待還以為是《黑鏡》那種，可劇本是個什麼鬼啊?跟《釜山行》比也差遠了。極端的倖存者，刺激性場景，真正爆米花電影中的下流。結尾更敗筆，實在不知道這部電影除了災難求生指導外還有什麼意義了。0624cgv홍대',2),(3,'比巴卜纹身铺','亚仁的电影 看亚仁就够了',5),(4,'嘟嘟熊之父','老公滤镜也救不了这部每一秒都比上一秒更糊弄人的东北大乱炖电影。唯一的遗憾是贾木许怎么没找刘亚仁来演《丧尸未逝》。希望我亚仁多练习英语，早日冲出国门不要再接这些国产烂片了，争做韩版罗伯特·帕丁森！',1),(5,'Daniel Liao','亚仁演技不用我担心，票房能过损益点就是胜利，Fighting!',5),(6,'基瑞尔','如果形容《釜山行》IP是一个有着宏伟世界观、开始之前要补习大堆有的没的的背景知识的大型游戏，那么《活着》会更接近于老式的网页/单机版游戏，直接上手任务，在有限的时间内依据提示完成并打出成绩。整体简单干净、也较为平铺直叙的叙事节奏有效地突出了主角两人从各自保命到齐力逃出生天的中心任务，也一定程度上减弱了过度煽情可能带来的离题（即使片中部分时刻也包括了两人第一次通话小心翼翼甚至有些甜与萌的陌生，或是为了爱妻不惜做出牺牲的男人）。两个习惯于密闭空间的角色人格因此自然弥漫的恐惧，以及一楼之隔的“这么近，那么远”，所有的设置都为“活着”二字服务。它不够创新或“耳目一新”，却力所能及地完成了它需要做到的事情。',3),(7,'言之命至刘在石','讲真，你们都拍过《釜山行》《王国》《极限逃生》了，还拍这片子有什么意义呢？',1),(8,'飞侠式拼搏','去年的《极限逃生》，今年的《#活着》。韩国灾难片一次又一次向大家普及了无人机用途的广泛，以及在灾难救援中的巨大作用。快买无人机吧，你值得拥有。',2),(9,'flyinbed','作为一部灾难片，本片是不合格的。只是借灾难这个空壳，加之前面《釜山行》的大热，故选一个丧尸题材吸引眼球。影片更多的还是探讨当下社会中年轻人的一种生活现状，以及在灾难来临时前后的应对，来体现当下年轻人的精神和道德面貌。演员的表演问题不大，丧尸形象及格。只是剧本欠缺深度，大多流于表面。也许这只是一部适合时宜的流水线产品。',3),(10,'我可能是个演员','1.男主家里居然全是无线耳机。2.女警察那里，男主纠结了半天终于吼了出来，那么大声，为什么对面的女主听不到？她在干啥？3. 八楼的大叔迷晕朴信惠后，拖到卧室去，居然是去圈养已经感染了的妻子，不是***，大叔您在家呆那么多天真能忍，敢问编剧这充满爱的脑回路是为了让观众相信爱情吗？4.女主说恐高，结果直接一斧子砍断了爬上来的丧尸的手，而且下楼直接是从阳台跳下去，下去后直接无敌模式开启，我的妈呀。5.《釜山行》后这几年棒子变着花样来拍丧尸题材片，结果没有哪一部成功过，这部也只是刚好碰上疫情，更加令人感同身受而已，但也是仅此而已。',1),(11,'秀山鲤鱼','6分，前面的独角戏还行，后面崩塌',3),(12,'Bianka· Corvus','有点怕怕！嘤嘤嘤！特效化妆真是棒棒哒！\n前面三分之二不错，后面还是迷之主角光环😂😂\n总之差点吓尿~',4),(13,'谢谢你们的鱼','差一口气就是丧尸杰作，《我是传奇》的结构，《极限逃生》的内核，最后甚至一反同类型电影的绝望结尾给出了温暖的结局。不纠结人性，不过分追求戏剧张力，而是简简单单讲述了一个娱乐性十足的逃生故事、也不知道为啥大家都要带着看《釜山行》的心态观看本片，对于现在那些苦大仇深的丧尸片来说，本片的“没有心机”反而更加可爱！',4),(14,'谋杀游戏机','一个小体量丧尸片，一上来就开始丧尸满街跑，中间大部分都在室内，结尾比较仓促。几个印象最深的地方：男主家原本特别干净，各种炫光电子设备，上吊时对面公寓楼射来的激光指向“不要”，用绳子互相传食物，丧尸顺着绳子爬楼，圈养已尸变的老婆的中年男人。断水断电后两位主演偶像光环仍在，不像饿了很久的样子。群演们辛苦了233',3),(15,'珂汀','五星给亚仁，演技还是一如既往的强大，一个活生生的俊宇！很多表演细节值得反复回味。题材其实很有深挖的空间，目前剧本这种拍法，还是浅了点。但也是有趣的类型片了，很多地方可以感觉到导演有自己的逻辑想塑造人物和推动情节，但还是有些生硬了。信惠妹子很漂亮，这部里演技还是可以呀，但就是我也不太懂为啥一直给虎皮兰浇水……',5),(16,'盆叔','有这两个人，哪里还有里昂、克莱尔、吉尔、克里斯、王艾达啥事啊。',1),(17,'晚不安','一无是处，莫名其妙。每个情节点都在拾人牙慧，并且罔顾所有行为逻辑的合理性。就模式上看，完全不如娱乐性更强的《极限逃生》。男女主角不断犯蠢，又各带光环，有如常山赵子龙附体，在丧尸中间来去自如、毫发无损。把视点收得很窄，但又对人物丝毫不能共情，于是整部片像一个巨大的未完成品，持续消费人们对《釜山行》的热情。似乎预设观众对丧尸片有储备知识，但人性层面没能输出任何真正立得住脚的主题。还是在老思维里创作，对新媒介、新设备的利用都浅尝辄止。无疑是疫情期间添堵的伪大片，还是别让眼睛接触这种病毒了。刘亚仁请爱惜羽毛吧。',1),(18,'Mr. Infamous','在如此空洞无理的剧本里非要演得掏心掏肺涕泪横流，也是太难为刘亚仁了。关于丧尸心性、居住环境、传送可能、主角的取舍与光环有无数槽点，但只想问问俊宇的头发三个星期都不长的么？如果有什么比突兀升起的直升机更突兀的，就是上头两个仙女般坐着的……战士？唯一好看的一幕是鸡血女主神奇打怪。',2),(19,'Shut Up','庚子53。不太懂我家亚仁为啥要接跟朴信惠的对手戏？？？朴信惠是在演电影吗？都困在家里20天了没洗过澡，还是要时刻美美的、小嘴微张保持最美镜头脸给谁看呢？？？看他俩的对手戏，就是不停从电影感到电视感的切换，累死了。别的情节bug什么的就不说了。亚仁的演技还是赞的，加一星。亚仁你要是被绑架了你就把黄头发换成黑色的吧～～',3),(0,'Ricky925','一個zombie片關於兩個社恐人士在相親之劉亞仁狂粉的愛',1),(1,'Löwechen','感觉应该比釜山行2好看的多，毕竟有刘亚仁朴信惠俩大神',4),(2,'安桑','恰好应景新冠病毒，主题是「活下来」。刘亚仁独角戏不好看，这个角色本身就没什么意思。电影里的朴信惠太漂亮了～，求生欲顿时满格。紧张场面不多，且丧尸群遇男女主就划水，一点胃口都没了。默默地把看过的丧尸片排了下序。',2),(3,'掉线','【C-】这个片给人的感觉是，编剧想了个“末世里的爱情”的文艺设定，写一半制片人看了说：操，这咋卖票房，给我炸！于是就变现在这样了。然而视听水准太差劲了，动作场面拍的像是素人YouTuber自制的短片，丧尸题材能这样毫无紧张惊悚感，也是挺不容易的。',3),(4,'女神的秋裤','丧尸片里算是一部不错的作品。成本不高，但末世丧尸氛围很足，两位主演的表演也很到位，尤其刘亚仁。故事上很完整，虽没有怎样的深度，但还有是不少地方挺搞笑，也挺动人，细节很走心，比如男主遇到女主后，忽然把原本猪圈一样的房间收拾得焕然一新，真是 呵，男人；……真正的绝望是看不到希望，无论发生什么，活下去。',4),(5,'SATURaiN','不是爽片，很烂',1),(6,'安布的英国时间','说小场面吧，其实丧尸演员真不少。但故事完全发生在一个小区里，又没有很强的故事支撑，给人预算很低的感觉。有些地方看出是想煽情，但让人尴尬得双脚抠地，真是一直在按快进。结局突然天降奇兵就获救了，真圆满',1),(7,'朝阳区陆依萍','这是什么玩意儿！！！',1),(8,'gulitters','剧情bug就bug在毫无逻辑的主角光环上了。朴信惠的表演和刘亚仁的表演简直不在一个层次上。看完觉得很虚无，没有惊喜感。',3),(9,'樂啊樂','剧情就是类型元素的东拼西凑，一星给刘亚仁，戴个鸭舌帽我居然看出葛优的感觉。',1),(10,'甜蜜蜜','主角光环太强，尤其在釜山行的衬托下显得逊色#东大门CGV',3),(11,'影探','丧尸片里算是一部不错的作品。成本不高，但末世丧尸氛围很足，两位主演的表演也很到位，尤其刘亚仁。故事上很完整，虽没有怎样的深度，但还有是不少地方挺搞笑，也挺动人，细节很走心，比如男主遇到女主后，忽然把原本猪圈一样的房间收拾得焕然一新，真是 呵，男人；……真正的绝望是看不到希望，无论发生什么，活下去。',3),(12,'四季德米安','电影院看的 音效太好了导致有被吓到一点点 刘亚仁和朴信惠就好纯洁的手拉手打怪兽 围绕两个普通人逃出生天的套路 不过整体还是可以 蛮有趣的',4),(13,'瑞蕊芮睿锐惢鋭','第二个《釜山行2》，真的，废了。片名是题眼，“活着”是主人公的唯一目标，但他们在逃生中有过两次因绝望而企图自杀的场景，而这两次自杀都因为意外的希望降临而终止。这种情节设定，一方面符合“活着是最后的胜利”的主题，但是另一方面又瓦解了观众对电影的信任。主人公缺乏必须活着的动力与能活下来的能力，依赖着外界的阻断与救援，一次接一次，一轮又一轮的意外让“活着”成了一种应该，而不是能动的选择。这是此电影的遗憾之处。正是这种“活着”的不作为，让作为惊悚片的“活着”或许合格，但作为灾难片他没有为观众带来别样的思考，所以电影票房虽高，但没有逃脱“普通、一般”的评价，在口碑上注定与票房反其道而行之。韩国如日中天的丧尸题材已经一去不复返了。再见。\n',2),(14,'猫奴十二年','没有充分探索公寓空间的可能性。',2),(15,'野凡','本片讲述疫情突然爆发，在高危地区的主角，为了生存放弃在家隔离，一路闯荡和密密麻麻的疫情患者接触，虽然杀伤力极本为零，但是始终毫发无伤，这是为什么呢？因为他们自带抗体啊！（误，划掉）因为他们是主角啊！',3),(16,'扰扰','想活着，所以才能活下来，这是这部电影要表达的主题吧。一个游戏宅男，面临突如其来的危机，与其说求生，不如说生死之间个人的成长。故事穿插着母女情、夫妻情、兄弟情，当亲人变成了活死人，活着的人应该怎么处理感情？电影开场很利索，不拖泥带水，但是故事情节过于单一，场景主要在居民楼内，整个首尔陷落的氛围不浓厚，给人一种小成本电影的感觉。刘亚仁和朴信惠的表演中规中矩，没有亮点。',3),(17,'frozenmoon','这剧本根本就没有任何展开啊，完全写各种场景。最后变成一个网友见面奔现的故事?大伙都是看着丧尸剧过来的，何必弄出个这呢？',2),(18,'刷鞋大王','全程让人尼克杨问号脸的丧尸片',3),(19,'老滚','你说你没逻辑，没剧本，没多好的动作场面就算了吧，你一个丧尸片，连个像样的丧尸场景都没有，合着我是来看美女的？',1),(0,'臻圣','5.0分。个人觉得片名叫《#活下去》更恰当，现在时改成将来进行时。前有《釜山行》珠玉在前，同样是韩国僵尸片，差之毫厘失之千里，片子可提升空间还很多。叙事欠打磨，前半段没有很直观交代僵尸病爆发的背景，用“电视播报”的方式交代信息未免太低级，类型片的紧张刺激的代入感直接被消解掉了;感觉剧组经费不足，两栋楼就把格局给框住了。几个Jumpscare都十分老套，cue流程般敷衍的走过场;僵尸设定上毫无新意，这点就被《请叫我英雄》吊打;插入的食品广告生硬，不服务于故事进程都很没有意义。结尾坐飞机逃离灾区的桥段都被《生化危机》、《移动迷宫》玩儿烂了。\n还能勉强拿出来夸的点：对灯光的尝试还蛮多花样的，刘亚仁虽然有演技，但可惜角色所限没有多大的发挥空间。',2),(1,'水浒三国金刚','隔绝公寓丧事多',3),(2,'河狸','能够听声辨位而且还保留着活着时职业技能的僵尸确实挺可怕的。',3),(3,'英年早睡','借丧尸题材刻意营造一个独处的求生环境，配合已经习惯的现代便捷生活瞬间崩塌的困境，本来应该可以进入比较深刻的对生存的探讨的。可是。。。这剧情发展实在太多不符合逻辑，又刻意，导致真实感在半小时之后直线滑落。',2),(4,'麦小白','想不走寻常路，拍部另类丧尸片，但是最终呈现效果真的很无趣啊。',2),(5,'陆支羽','3.0。',3),(6,'子戈','多好的名字，可惜名不副实。\n小格局丧尸片，创意有点想法，特别是疫情当下，主角完全被“隔离”在房间里，外面丧尸肆虐，代入感还是挺强的。\n但围绕这个初始创意展开后的若干个创意，都太平庸了，几乎毫无亮点。\n感觉就像迈了一大步，又退了无数小步，最后结果是不小的倒退。\n脑补一些念头，或许还有点意思。\n影片其实讲的是互联网时代的社区，人与人之间的彻底陌生。\n男主成天沉迷游戏。邻居有谁，不认识；更别提对面楼的女神。\n在自杀念头升起时，因为“邻居”的存在而放弃。\n最终两个邻居结伴求生。\n他们恢复最原始的沟通方式，纸板、绳子、对讲机，直到在楼下相会，大战丧失。\n这么看，有那么点意思。\n但最终影片又落在SNS网络自救上，看来是我想多了。',2),(7,'ᴡᴀʏɴᴇ','新人导演能拍出这种效果实属不易，好莱坞出品为什么叫大片，因为他们懂循序渐进，一点一点抓住你的心，而不是突然一下，开场既高潮，基本零前戏，然后就没然后了，所以说吗，有劲儿慢慢用，别争那两分钟的风，没看之前以为前边的＃是为了区分同名电影，看完明白是艾特的意思，核心是网络吧，依靠网络通讯最终得救，只可惜国内有堵墙，因为成本小，所以剧情单薄了一些，比如全城断电，电梯竟然还有电，吃完迷药几分钟就能站起来，剧情较扯，bug很多，但不至于是烂片，比釜山行2有看点，女主颜不错，剧中人设还是我的菜，从楼上纵身一跃落地砍翻丧尸很飒，到后边落泪楚楚动人的样子，谁能不动心呢，男主傻了吧唧的性格也不凸凹，看来韩棒棒也知道自己拍丧尸片的优势了，韩国人的演技确实不错，尤其末日灾难，能演绎人性泯灭，总的来说还阔以，不算失望',4),(8,'glim','有的人，陪着你一起度过了无数这样的瞬间，却在风平浪静后抽身离开。这么看，丧尸末日并不可怕',3),(9,'kylegun','拆门大胖，无眼看更，攀绳消防员，对讲机泡面之恋，群尸奔腾似雨；除了用了下无人机外，其实也没太突显网络生代末世的特点，开头三两下就断网了，剧情也是想到哪是哪，莫名其妙一同私奔八楼啥的；不过各种现代舞丧尸袭击表现得还不错吧',4),(10,'向南','整个剧情就是一坨屎，生硬无聊且好猜，昏迷一分钟即可醒来、看不到光只能听声音、听音辨位准确到门牌号、二十来天头发不油、说是没人刚好有人刚好是坏人刚好被发现刚好自杀刚好听到直升机刚好找不到刚好找到了⋯⋯结合了时代背景上传网路进行营救的设定也没有看出什么内涵，看完就只想在家里多囤几包面。刘亚仁和朴信惠演技大在线，换个演技差的来演绝对给负分。看在丧尸爬窗也算爬出新意和刘亚仁的份上，5.5是可以给的。',3),(11,'我情绪零碎KAI','与其后面崩到两眼发黑，倒不如就做成短片，只保留刘亚仁在家里的部分，而且前半部分可看性真的非常高，谁会不想看刘亚仁在家里尝试一切可能的样子，灵机一动的小闪光也好，犯蠢的嘀咕也好。外患是红了眼的丧尸，内忧是储备不足的口粮，绞尽脑汁或者只凭呼吸，那是真正的“活着”。',3),(12,'Lunar C.','无痕迹植入广告的行业典范。不过剧情高开低走，浪费了刘亚仁前1/4的演技。',3),(13,'申由己','韩国人即使丧尸电影，都透露着一股喜感，那个上吊的是搞笑的么？发生灾难，不知道储水？对这个男主不感冒，女主还可以。丧尸也还行。剧情一般，勉强可以看看。',3),(14,'方枪枪','演员是好演员，但剧本是真的烂！',2),(15,'杨小妞儿','别再对比釜山行，它不配，有种用演员阵容忽悠人的感觉。\n\n主角光环逆天了，任你丧尸屠城，我俩轻松活命，男主单人过活的压抑感没拍出来，大叔身上想探讨的人性没拍出来，倒是把游戏植入拍的特别好，也是绝了。',2),(16,'在月球上荡秋千','借鉴了《釜山行》的丧尸，抄袭了《极限逃生》的都市灾难设定和单男单女的搭配，但节奏不太行，缺少了《釜山行》的深度，也没有《极限逃生》的幽默搞笑。',2),(17,'肯特穆恩','开篇比较紧凑讲末日生存，讲了一半变打怪了。要说打怪硬核点，聪明点，这丧尸像弱智，主角成天就挥个高尔夫球棒，还三进三出 ，像串门一样，开局无人机我看着还是挺妙的，以为有大用处，卧槽，给我玩废两台。就朴信惠最后那场戏，还有刘亚仁拿自行车挡丧尸，那在其他片子里都是要领便当的啊。',2),(18,'加州站街男孩','谈个屁的恋爱，烦死了',2),(19,'Vince Smith','对于刘亚仁是个不小的警钟。作为韩国乃至东亚最有前途的男演员，哪怕演爽片也不应该接这种三流制作。',2),(0,'怂囧小赫','灵魂三问，刘亚仁为何拍这种片子？我为何要看？？导演编剧是傻逼吗？？谁来回答一下~',2),(1,'琉璃影形','光看译名还以为是苦情社会剧，结果开场丧尸狼奔豕突，瞬间开启韩风尸变独有的快捷模式。故事简单，节奏明快，人物精练，暑期小惊喜典型',4),(2,'曼靑','我想我是真的很喜欢朴信惠，所以不管她演的每一部电影我都会觉得好看。长沙回杭州的夜航飞机上看完的，其实没有想象中的那么糟，至少把故事说完整了。这部电影几乎和《釜山行2》同时出的资源，同样都是丧尸题材。丧尸全城侵袭，只会打游戏的宅男被困在公寓里，断水断粮、失去了和外界的联系，直到有一天他发现对面公寓有一个和他一样幸存下来的女生。他们用对讲机彼此倾诉、一起煮泡面、一起冲出重围、一起逃生。看到最后居然还有一丝丝的感动，好像它讲的并不是丧尸，而是现在社会的一种生存状态。当你身边出现越来越多的「丧尸」，侵蚀越来越多的正常人，慢慢的、身边的人变得麻木残暴。你该想的不应该是放弃和堕落，而是咬着牙活下去，你一定挺住、一要找到那个和你一样的人——那个没有变得残暴麻木、还保有自我的人，抱团取暖、突出重围、永不言弃',4),(3,'墨息墨息','明明很好看 刘亚仁演帕布也比其他人演得好 手机闪闪：加油加油！',4),(4,'WIKI魏','这片要是没有刘亚仁我是绝对不会看完的，粑粑一样的剧本，哭丧脸jpg，枉我等了那么久，同类型丧尸片你差日本《请叫我英雄》一条护城河。',2),(5,'尘飞扬','活着，死难看',2),(6,'kind','整部电影只需要剪辑成15分钟的丧尸片就行了，拍90分钟太浪费彼此的时间了。',2),(7,'发财','我震惊 这主角光环太重了吧 我看电影从来不希望主角死 但我也打心里觉得二位有很多合理死去的时机 刘亚仁演的太用力了 电影烂 显得演技很多余',2),(8,'Eudilav','傻白甜主角光环太重，丧尸碰到他们自动减速，把男主写成傻仔，以为他真的想“活着”，其实就是和丧尸碰个面，女主把最后一点水给了盆栽，我？？？？？整部片看着像社交软件广告，网恋奔现，这个剧情配不上刘亚仁！！！',2),(9,'无耻不混蛋','全片全能丧尸（有智商、能跑、能爬）却只是摆设，大部分时间，只是看刘亚仁一人在房间里无所事事，虽然像极了疫情期间足不出户的我们，但居然毫无共情。朴信惠出场后，影片变成了“丧尸版《极限逃生》”，但开挂的两人，也是浮皮潦草的对抗了一下丧尸群，偶遇深情的丈夫，差点被抓去喂尸变的妻子（想走一下煽情套路，但跟《釜山行》比就是屎一样的剧情），就轻而易举的被直升机救了。',2),(10,'鬼腳七','1.5，设定粗糙模糊，逻辑糟糕，最后这情节设计也是莫名其妙强行拔高批判一把人性，就真流水线作业呗。（能被《黑夜吞噬世界》吊打',2),(11,'火龙果不耐受者','确实是灾难',2),(12,'昭和惊弓鸟','唯一看点是刘亚仁少年感很强，完全看不出都是三十几的人。丧尸场面拍得很难看，大场面的调度简直渣，丧尸的群体压迫没有展现，于是该有的紧迫感完全造不起来。一大半时间刻画的求生状态在不停触发意外事件显得人为痕迹过重，更别提男女主角的相遇完全没建立起角色弧度，因此各方面本片都像是在过家家拍着玩一样。',2),(13,'安东','朴信惠好看。',2),(14,'T.V.Zoe ி','不行 想要的东西太多反而都没交代清楚 \r节奏超拖沓 丧尸片都要看睡着  不合格',2),(15,'康报虹','哪怕丧尸遍地，也要一键三连；因为下次一定，可能没有下次。',2),(16,'酒神的炼金术','这本来可以是一部形式感十足的片子，甚至配乐都在提醒观众它是有未来感和科技感的。主人公最终活下来是因为将求助信息上传到了社交平台，而政府部门利用社交平台的tag搜寻幸存者，包括俊宇使用无人机做了很多自救及救人的举动，这一切都在指向网络和科技制品对人类生存的帮助。可在中间部分俩人隔离期间却做了很多蠢，老套而无聊的事，丝毫没有扣题。刘亚仁的确很多独角戏，但由于角色设定愚蠢，没有办法发挥演技。而朴信惠甚至都不配拥有身份背景的交代了是么。丧尸片的套路已经被创作者和观众都摸清楚了，比如他们的症状已经到了耳熟能详的地步，根本无法在丧尸本身做出花样。近年的丧尸片已经志不在吓人了，有点指向回人类社会，可以隐喻很多群众性的消极现象，可以复古，也可未来，有幻灭的成分在。',2),(17,'罗甜甜','毫無驚喜',2),(18,'瓦力','其实小格局也没什么，《釜山行》一开始也是局限在列车里的爆发，但问题是，一个小时的宅居求生后，你就给我看这个？遇见个濫俗到搞笑的反派大叔，抓住女主去喂丧尸老婆...最后开挂到没办法编了，直升机突突突了事，韩国僵尸片，就给我看这个？',2),(19,'张苑希','定位更类似于低成本小格局的极限求生主题，借了一波丧尸元素的东风，与之前斥巨资运作娴熟的商业大作自然没法比。主要还是剧本写的太烂，主角光环又开得太离谱（朴信惠与女丧尸同处一室厮杀居然能毫发无伤的出来我？？？），情节发展基本在意料之中。就，挺无趣的片子吧。',2);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-06 21:27:23
