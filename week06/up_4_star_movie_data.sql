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
-- Table structure for table `film_reviews`
--

DROP TABLE IF EXISTS `film_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_reviews` (
  `id` bigint DEFAULT NULL,
  `user` text,
  `content` text,
  `star` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_reviews`
--

LOCK TABLES `film_reviews` WRITE;
/*!40000 ALTER TABLE `film_reviews` DISABLE KEYS */;
INSERT INTO `film_reviews` VALUES (3,'Jenue','十分单纯的爆米花电影。不得不说主角光环就是很强大，僵尸就是偏偏不去啃你们这两块肉.. 无论在什么框架的电影，刘亚仁的演技总能让作品本身再提高半颗星。主角的人设没什么特别的，就是负责打怪而已。开头OP有惊喜到我，配乐很好听，OP很像美剧的开头，大概和导演长期在美国生活有关。无需去争论刘亚仁为什么会拍这种爆米花电影，演员总要不断拍戏的，不可能拍的每个剧本都是神作。在刘亚仁喜欢挑战不同角色的角度来说，这样的酣畅求生的角色他也是第一次，作为粉丝，也能看到他新的一面，挺不错。',4),(8,'雪鹅','想打四星。刘亚仁演技太流弊必须加一星。他太会拿捏情绪了让人带入感好强，看的时候觉得好绝望啊。而且他真的很拼。剧情其实也就那样，没有什么特别惊艳的，但是刘亚仁值得五星。结尾看完居然有点点想哭。我的眼泪就没值钱过。',5),(14,'咖啡拿铁','故事虽然一般，但刘亚仁还是没让我失望。',4),(3,'比巴卜纹身铺','亚仁的电影 看亚仁就够了',5),(5,'Daniel Liao','亚仁演技不用我担心，票房能过损益点就是胜利，Fighting!',5),(12,'Bianka· Corvus','有点怕怕！嘤嘤嘤！特效化妆真是棒棒哒！\n前面三分之二不错，后面还是迷之主角光环😂😂\n总之差点吓尿~',4),(13,'谢谢你们的鱼','差一口气就是丧尸杰作，《我是传奇》的结构，《极限逃生》的内核，最后甚至一反同类型电影的绝望结尾给出了温暖的结局。不纠结人性，不过分追求戏剧张力，而是简简单单讲述了一个娱乐性十足的逃生故事、也不知道为啥大家都要带着看《釜山行》的心态观看本片，对于现在那些苦大仇深的丧尸片来说，本片的“没有心机”反而更加可爱！',4),(15,'珂汀','五星给亚仁，演技还是一如既往的强大，一个活生生的俊宇！很多表演细节值得反复回味。题材其实很有深挖的空间，目前剧本这种拍法，还是浅了点。但也是有趣的类型片了，很多地方可以感觉到导演有自己的逻辑想塑造人物和推动情节，但还是有些生硬了。信惠妹子很漂亮，这部里演技还是可以呀，但就是我也不太懂为啥一直给虎皮兰浇水……',5),(1,'Löwechen','感觉应该比釜山行2好看的多，毕竟有刘亚仁朴信惠俩大神',4),(4,'女神的秋裤','丧尸片里算是一部不错的作品。成本不高，但末世丧尸氛围很足，两位主演的表演也很到位，尤其刘亚仁。故事上很完整，虽没有怎样的深度，但还有是不少地方挺搞笑，也挺动人，细节很走心，比如男主遇到女主后，忽然把原本猪圈一样的房间收拾得焕然一新，真是 呵，男人；……真正的绝望是看不到希望，无论发生什么，活下去。',4),(12,'四季德米安','电影院看的 音效太好了导致有被吓到一点点 刘亚仁和朴信惠就好纯洁的手拉手打怪兽 围绕两个普通人逃出生天的套路 不过整体还是可以 蛮有趣的',4),(7,'ᴡᴀʏɴᴇ','新人导演能拍出这种效果实属不易，好莱坞出品为什么叫大片，因为他们懂循序渐进，一点一点抓住你的心，而不是突然一下，开场既高潮，基本零前戏，然后就没然后了，所以说吗，有劲儿慢慢用，别争那两分钟的风，没看之前以为前边的＃是为了区分同名电影，看完明白是艾特的意思，核心是网络吧，依靠网络通讯最终得救，只可惜国内有堵墙，因为成本小，所以剧情单薄了一些，比如全城断电，电梯竟然还有电，吃完迷药几分钟就能站起来，剧情较扯，bug很多，但不至于是烂片，比釜山行2有看点，女主颜不错，剧中人设还是我的菜，从楼上纵身一跃落地砍翻丧尸很飒，到后边落泪楚楚动人的样子，谁能不动心呢，男主傻了吧唧的性格也不凸凹，看来韩棒棒也知道自己拍丧尸片的优势了，韩国人的演技确实不错，尤其末日灾难，能演绎人性泯灭，总的来说还阔以，不算失望',4),(9,'kylegun','拆门大胖，无眼看更，攀绳消防员，对讲机泡面之恋，群尸奔腾似雨；除了用了下无人机外，其实也没太突显网络生代末世的特点，开头三两下就断网了，剧情也是想到哪是哪，莫名其妙一同私奔八楼啥的；不过各种现代舞丧尸袭击表现得还不错吧',4),(1,'琉璃影形','光看译名还以为是苦情社会剧，结果开场丧尸狼奔豕突，瞬间开启韩风尸变独有的快捷模式。故事简单，节奏明快，人物精练，暑期小惊喜典型',4),(2,'曼靑','我想我是真的很喜欢朴信惠，所以不管她演的每一部电影我都会觉得好看。长沙回杭州的夜航飞机上看完的，其实没有想象中的那么糟，至少把故事说完整了。这部电影几乎和《釜山行2》同时出的资源，同样都是丧尸题材。丧尸全城侵袭，只会打游戏的宅男被困在公寓里，断水断粮、失去了和外界的联系，直到有一天他发现对面公寓有一个和他一样幸存下来的女生。他们用对讲机彼此倾诉、一起煮泡面、一起冲出重围、一起逃生。看到最后居然还有一丝丝的感动，好像它讲的并不是丧尸，而是现在社会的一种生存状态。当你身边出现越来越多的「丧尸」，侵蚀越来越多的正常人，慢慢的、身边的人变得麻木残暴。你该想的不应该是放弃和堕落，而是咬着牙活下去，你一定挺住、一要找到那个和你一样的人——那个没有变得残暴麻木、还保有自我的人，抱团取暖、突出重围、永不言弃',4),(3,'墨息墨息','明明很好看 刘亚仁演帕布也比其他人演得好 手机闪闪：加油加油！',4);
/*!40000 ALTER TABLE `film_reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-06 21:28:35
