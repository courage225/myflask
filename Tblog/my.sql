-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: my_Tblog
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `aid` int(11) DEFAULT NULL,
  `title` tinytext,
  `content` varchar(4369) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `replies` int(11) DEFAULT NULL,
  `picture` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (3,'She is the one','1random到she就想起网媒说的想知道真爱就去看诺丁山，再看一次的感觉果然跟以前初中看的感觉不一样。没有其他电影里头的死憋着不说，诺丁山里头就是清清楚楚说出心里的感觉。看完还是不懂真爱是什么，是原谅，包容，坚守，相信，诚实，坦诚，抑或只是单纯的勇敢？\n\n　　爱情里头大家都是普通人。别人眼中你是goddess也好，不过是“我”眼里为我捧上breakfast in bed的lovely girl，lovelier today；别人眼里一事无成double stupidest git，是可以“will make me happy for the rest of my life”而且有brilliant prospects的artist，这就是电影的道理吗？so true love is just a tiny hiccup，we will figure it out，or we wont。still worth a try，isnt it？\n\n　　julia实在太美，那双大眼睛啊那个灿烂大嘴巴！片头要她smile那镜头，迷倒了！Hugh也有一双sincere的dog eyes，通常dog eyes都是可怜兮兮的，但他一笑就不sad，牙齿有喜感，还有那Mr Mcdreamy的头发，加上那眼镜，妥妥的喜感接地气。\n\n　　浪漫电影就是这样的吧。很多不合理，很多夸张，但看完也可以笑一笑，不挺好的吗？','2016-08-11 16:00:00',3,NULL,NULL,'img/featured-pic-1.jpeg'),(4,'偶然','我是天空里的一片云，\n偶尔投影在你的波心──\n你不必讶异，\n更无须欢喜──\n在转瞬间消灭了踪影。\n\n你我相逢在黑夜的海上，\n你有你的，我有我的，方向；\n你记得也好，\n最好你忘掉\n在这交会时互放的光亮！','2020-02-11 16:00:00',4,NULL,NULL,'img/featured-pic-1.jpeg'),(5,'1998-2-1','我是天空里的一片云，\n偶尔投影在你的波心──\n你不必讶异，\n更无须欢喜──\n在转瞬间消灭了踪影。\n\n你我相逢在黑夜的海上，\n你有你的，我有我的，方向；\n你记得也好，\n最好你忘掉\n在这交会时互放的光亮！','1998-01-31 16:00:00',1,NULL,NULL,'img/featured-pic-1.jpeg '),(6,'古筝之美','拿起古筝，缓缓划动下细细的琴弦，优美的音符一个个轻快的跳出，弹奏一曲古典之韵，看着谱上抒写的词，用琴勾勒出来的音蒹葭动人的美感。低头吟唱，从嘴上蹦出的词变的顺畅，像一条流动的溪水，把人带进聒美的心境，这些文字编奏的词，自然淳朴。\n古琴，低沉深奥；二胡，催人泪下；萧，凄凄凉凉。而古筝，是柔和的，是优美的；有时，又是雄伟的，是有力的。古筝起源于秦朝，所以又叫秦筝，在它的流传过程中又按大小和音色分为：长离、鸿筝；鸣筝、清筝、哀筝；它和古琴最大的区别就在于它有琴码而古琴没有琴码，古筝演奏时透过左手之按、压、放等指法可奏出滑音、变化音，古琴是用左手按指成音。一弦多音，且可用空弦、按弦等成音。','2017-02-11 16:00:00',2,NULL,NULL,'img/featured-pic-2'),(7,'月半小夜曲','月半小夜曲》感觉细水长流，感情细腻得好似在讲一个动人的故事，那种娓娓道来的情感深深地渗透进我的内心深处，让人听了心头暖暖的，特别的舒服，无论循环多少遍都不会觉得腻的。这首歌的小提琴伴奏段泣诉悠扬，旋律低高哀怨起伏跌宕，失望、空虚、牵挂、渴望，有过情感经历的人听这首歌总会感觉很熟很亲切，在心底里有着共鸣。\n\n特别是在夜深人静的时候，一个人静静听着这首歌，总能听出感觉像在读懂我的心一样，我的牵挂，我的渴望，直至以后…\n\n一个夜晚，空中悬着一轮弯月，一个男人在想一个爱他的女人，可她现在已经心有所属。\n\n氛围凄怆，悲凉。','2017-02-11 16:00:00',2,NULL,NULL,'img/featured-pic-2'),(8,'可惜不是你','\n像昨天今天同时在放映\n\n我这句语气原来好像你\n\n不就是我们爱过的证据\n\n差一点骗了自己骗了你\n\n爱与被爱不一定成正比\n\n我知道被疼是一种运气\n\n但我无法完全交出自己\n\n努力为你改变\n\n却变不了预留的伏线\n\n以为在你身边那也算永远','2017-02-11 16:00:00',2,NULL,NULL,'img/featured-pic-3'),(9,'海上钢琴师','本片讲述了一个钢琴天才传奇的一生。\n　　1900年，Virginian号豪华邮轮上，一个孤儿被遗弃在头等舱，由船上的水手抚养长大，取名1900（蒂姆•罗斯 饰）。1900慢慢长大，显示出了无师自通的非凡钢琴天赋，在船上的乐队表演钢琴，每个听过他演奏的人，都被深深打动。爵士乐鼻祖杰尼听说了1900的高超技艺，专门上船和他比赛，最后自叹弗如，黯然离去。\n　　可惜，这一切的事情都发生在海上，1900从来不愿踏上陆地，直到有一天，他爱上了一个女孩，情愫在琴键上流淌。他会不会为了爱情，踏上陆地开始新的生活，用他的琴声惊艳世界？他将怎样谱写自己非凡的人生。','2016-12-11 16:00:00',3,NULL,NULL,'img/featured-pic-3'),(10,'爱乐之城','米娅（艾玛·斯通 Emma Stone 饰）渴望成为一名演员，但至今她仍旧只是片场咖啡厅里的一名平凡的咖啡师，尽管不停的参加着大大小小的试镜，但米娅收获的只有失败。某日，在一场派对之中，米娅邂逅了名为塞巴斯汀（瑞恩·高斯林 Ryan Gosling 饰）的男子，起初两人之间产生了小小的矛盾，但很快，米娅便被塞巴斯汀身上闪耀的才华以及他对爵士乐的纯粹追求所吸引，最终两人走到了一起。\n　　在塞巴斯汀的鼓励下，米娅辞掉了咖啡厅的工作，专心为自己写起了剧本，与此同时，塞巴斯汀为了获得一份稳定的收入，加入了一支流行爵士乐队，开始演奏自己并不喜欢的现代爵士乐，没想到一炮而红。随着时间的推移，努力追求梦想的两人，彼此之间的距离却越来越远，在理想和感情之间，他们必须做出选择','2016-12-11 16:00:00',3,NULL,NULL,'img/featured-pic-3'),(12,'云是风的新娘','云是风的新娘\n为了取悦于风\n她常常把自己\n打扮成不同的模样\n清晨，她披上雾的衣裳\n在楼顶、在河畔、在山巅\n世界在她的精心装扮下\n处处像仙境一样\n风是欣喜的，也是着急的\n他时常分不清\n哪一边是雾，哪一边是他的新娘','2017-01-11 16:00:00',4,NULL,NULL,'img/featured-pic-3'),(13,'漫游关西','霓虹国的秋，道不尽的美。2019年秋，带着一岁的小红豆慢游 关西 ，在鸭川晒太阳，在 岚山 赏红叶，在 宇治 吃抹茶，在东山穿和服，在 奈良 喂小鹿…渐红的枫叶与湛蓝的天空，清澈的溪水与灿烂的阳光，都让我们感受到了秋的美好。','2017-01-11 16:00:00',5,NULL,NULL,'img/featured-pic-3'),(14,'放下偏见，原来你是宝藏杭州','“和风熏，杨柳轻，郁郁青山江水平，笑语满香径”，你好， 杭州 ！\n\n于 杭州 的印象，始于苏轼先生的“欲把西湖比西子，淡妆浓抹总相宜”，得多漂亮的地方啊才能“淡妆浓抹总相宜”，而后人民币5元后面的三潭印月，白娘子和许仙的断桥，雷锋塔，活佛济公的灵隐寺，世人皆知的 龙井 茶。。。众多传奇和爱情故事的发生地。\n但因多年前去过一趟 扬州 、 南京 ，自以为苏杭理应差不多，基于在网上看过众多宣传片，便觉如此现代化的城市，肯定不是我的心头好，便从未把它列入旅行计划中。','2017-01-11 16:00:00',5,NULL,NULL,'img/featured-pic-3'),(15,'巴厘我爱你','椰林树影、水清沙白的巴厘岛一直是我和派先生向往的旅游胜地，我们选择了这里作为蜜月之行的第一站，没有选择跟团游也是因为想深度了解巴厘岛这个神奇的岛屿。\n有机会更深度的感受当地的风土人情。\n网红秋千、鸟巢、酒店、美食、无边泳池、日落……一个一个的打卡胜地\n马路边的手抓饭，路边最原始的碳木烧烤，随处溜达的家养狗狗，每一位我们对面擦肩而过的人……\n都让人心驰向往。\n和最爱的人一起去流浪，一起感受巴厘岛的美。','2017-01-11 16:00:00',5,NULL,NULL,'img/featured-pic-3'),(1,'Python 那些鲜为人知的故事','<p>Python, 是一个设计优美的解释型高级语言, 它提供了很多能让程序员感到舒适的功能特性. 但有的时候, Python 的一些输出结果对于初学者来说似乎并不是那么一目了然. 这个有趣的项目意在收集 Python 中那些难以理解和反人类直觉的例子以及鲜为人知的功能特性, 并尝试讨论这些现象背后真正的原理! 虽然下面的有些例子并不一定会让你觉得 WTFs, 但它们依然有可能会告诉你一些你所不知道的 Python 有趣特性. 我觉得这是一种学习编程语言内部原理的好办法, 而且我相信你也会从中获得乐趣! 如果您是一位经验比较丰富的 Python 程序员, 你可以尝试挑战看是否能一次就找到例子的正确答案. 你可能对其中的一些例子已经比较熟悉了, 那这也许能唤起你当年踩这些坑时的甜蜜回忆. 那么, 让我们开始吧...</p>','2020-02-29 16:00:00',1,NULL,NULL,'/static/upload/5b06762930693.jpg'),(2,'我们生活在“Python时代”','1989年，Guido van Rossum在参加设计ABC（一种教学语言）后，萌生了想要开发一种新语言的想法。1989年他创立了python语言。1991年初python公布了第一个公开发行版。\n\n你知道吗?\n\nPython编程语言一点也不年轻，它是由荷兰程序员吉多·范罗苏姆（Guido van Rossum）于1991年首次发布的。\n\nPython有意思的地方在于，他是一个人的工作成果，而大多数其他流行的编程语言都是由雇佣了大量专业人员的大公司开发和发布的。Python是个例外！\n\n当然，并不是python的所有组件都是由范罗苏姆独自一人开发的，它是一个开源项目，成千上万的人都对Python的开发做出了贡献。尽管python经过多年的发展已经有了很大的进步，但它的使用目的与当年相差不大。\n\nPython的诞生\n\n开发python的主要目的是帮助程序员编写逻辑清晰的代码。这就是它在开发人员中如此流行的原因。Python非常强大，可以被用于Web开发、游戏开发、为桌面应用程序构建脚本和GUI、配置服务器、执行科学计算和进行数据分析。\n\nPython几乎可以用于任何事情!','2018-08-11 16:00:00',1,NULL,NULL,'img/featured-pic-1.jpeg');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add article',6,'add_article'),(22,'Can change article',6,'change_article'),(23,'Can delete article',6,'delete_article'),(24,'Can view article',6,'view_article'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add tag',9,'add_tag'),(34,'Can change tag',9,'change_tag'),(35,'Can delete tag',9,'delete_tag'),(36,'Can view tag',9,'view_tag'),(37,'Can add mark',10,'add_mark'),(38,'Can change mark',10,'change_mark'),(39,'Can delete mark',10,'delete_mark'),(40,'Can view mark',10,'view_mark');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cid` int(11) DEFAULT NULL,
  `name` tinytext,
  `num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Python',127),(2,'音乐',123),(3,'电影',95),(4,'诗歌',95),(5,'远方',950);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_uid` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_uid` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(6,'App','article'),(7,'App','category'),(10,'App','mark'),(9,'App','tag'),(8,'App','user'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-19 21:18:08.540539'),(2,'contenttypes','0002_remove_content_type_name','2020-03-19 21:18:08.870452'),(3,'auth','0001_initial','2020-03-19 21:18:09.100021'),(4,'auth','0002_alter_permission_name_max_length','2020-03-19 21:18:10.156199'),(5,'auth','0003_alter_user_email_max_length','2020-03-19 21:18:10.201421'),(6,'auth','0004_alter_user_username_opts','2020-03-19 21:18:10.253919'),(7,'auth','0005_alter_user_last_login_null','2020-03-19 21:18:10.277915'),(8,'auth','0006_require_contenttypes_0002','2020-03-19 21:18:10.282435'),(9,'auth','0007_alter_validators_add_error_messages','2020-03-19 21:18:10.296435'),(10,'auth','0008_alter_user_username_max_length','2020-03-19 21:18:10.306807'),(11,'auth','0009_alter_user_last_name_max_length','2020-03-19 21:18:10.317768'),(12,'auth','0010_alter_group_name_max_length','2020-03-19 21:18:10.474443'),(13,'auth','0011_update_proxy_permissions','2020-03-19 21:18:10.584717'),(14,'App','0001_initial','2020-03-19 21:18:10.930315'),(15,'admin','0001_initial','2020-03-19 21:18:11.504427'),(16,'admin','0002_logentry_remove_auto_add','2020-03-19 21:18:11.667457'),(17,'admin','0003_logentry_add_action_flag_choices','2020-03-19 21:18:11.689620'),(18,'sessions','0001_initial','2020-03-19 21:18:11.742077');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5zsswjhcla8d74mshebg0fvp50lvj6wg','ZTdkMjVlYTE5YjEwNTk4YjZkYjEyY2JlMzY3YWJkN2YzMGQ5MzJlMDp7InVzZXJuYW1lIjoieWRiIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyNTlkODMxMTY4YmUzZDVkMThhYzczMTEzOThkYjg3NWRjNTgxNjgifQ==','2020-04-02 23:18:48.312169'),('8ziqyllmifhzvipeo31vsuvdzsguxntv','ZWY0Yjk0NjAyZTVkNjgwNjM3MjNjMGI3YzZjOTMzYjMyYjUzZTk3NDp7InVzZXJuYW1lIjoiYWRtaW4ifQ==','2020-04-04 21:43:55.272673'),('by2joz9myezn78cyu473jcdxpn55cu19','ZWY0Yjk0NjAyZTVkNjgwNjM3MjNjMGI3YzZjOTMzYjMyYjUzZTk3NDp7InVzZXJuYW1lIjoiYWRtaW4ifQ==','2020-04-04 21:42:40.630943'),('ltx0whvhmienat1ud4zyysc5uf9t7glm','ZTVhNzMyN2FiNmVmMjljODRlODAyNGFjZjFjMDk5YzViMjBjZDVkNDp7InVzZXJuYW1lIjoiYWRtaW4iLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDIxZDRkYzIxMjg1NjljZTU0OTVmYmFkYTQ0ZDc0ZTI0NmEzMmQ1OSIsInBob3RvIjoiL3N0YXRpYy91cGxvYWQvNWIwNjc2MjkzMDY5My5qcGcifQ==','2020-04-04 22:12:38.361693');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mark` (
  `mid` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark`
--

LOCK TABLES `mark` WRITE;
/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
INSERT INTO `mark` VALUES (1,'有意思，好好玩','2019-02-24 16:00:00',1),(2,'猜猜我是谁','2019-02-24 16:00:00',2),(3,'我开心我不开心','2019-02-24 16:00:00',3),(4,'赶快成功吧','2020-08-11 16:00:00',1),(5,'hahha，嘻嘻嘻','2014-05-07 16:00:00',2),(8,'是我不笑笑而已','2019-08-03 16:00:00',2),(9,'请停止仰望星空','2019-05-05 16:00:00',3),(6,'加油','2020-03-22 16:00:00',2),(882,'留下你的评论吧','2020-03-20 16:00:00',3),(445,'留下你的评论吧','2020-03-20 16:00:00',NULL),(671,'留下你的评论吧','2020-03-20 16:00:00',NULL),(737,'留下你的评论吧','2020-03-20 16:00:00',1);
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tid` int(11) DEFAULT NULL,
  `name` tinytext,
  `aid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'编程',1),(2,'音乐',3),(3,'电影',2),(4,'诗歌',4),(5,'旅行',5),(6,'编程',6),(7,'音乐',9),(8,'音乐',10),(9,'诗歌',11),(10,'诗歌',12),(11,'远方',13),(12,'远方',14),(13,'远方',15),(14,'电影',7),(15,'电影',8);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(128) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `portrait` varchar(300) DEFAULT NULL,
  `regtime` datetime(6) DEFAULT NULL,
  `isforbid` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2020-03-21 22:12:03.837152',0,'','',0,1,'2020-03-19 22:43:02.356708',1,'admin','pbkdf2_sha256$150000$poi50Bnll2Wt$Yj1jl4iqWeXUQHoE31DHwO07Pzw1Aozn17NI580QIzM=',NULL,'',NULL,'2019-05-12 00:00:00.000000',NULL),('2020-03-19 23:18:48.307531',0,'','',0,1,'2020-03-19 23:17:59.810079',2,'ydb','pbkdf2_sha256$150000$Jw1Ku7doS0Wo$xNmXHcZ2MqaOjAo6Lfahf6+Cn/3shDdA3GuIghm/BIQ=',NULL,'',NULL,'2019-05-12 00:00:00.000000',NULL),(NULL,0,'','',0,1,'2020-03-19 23:18:28.329578',3,'dxm','pbkdf2_sha256$150000$eDTTTgDO1458$o+avx5mU6jQNSzVAaEv/x4Hx+DUsvt39WILzcG+kKCU=',NULL,'',NULL,'2019-05-12 00:00:00.000000',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_groups_user_id_group_id_40beef00_uniq` (`user_id`,`group_id`),
  KEY `user_groups_group_id_b76f8aba_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_groups_group_id_b76f8aba_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_groups_user_id_abaea130_fk_user_uid` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_permissions`
--

DROP TABLE IF EXISTS `user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_permissions_user_id_permission_id_7dc6e2e0_uniq` (`user_id`,`permission_id`),
  KEY `user_user_permission_permission_id_9deb68a3_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_user_permission_permission_id_9deb68a3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_user_permissions_user_id_ed4a47ea_fk_user_uid` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_permissions`
--

LOCK TABLES `user_user_permissions` WRITE;
/*!40000 ALTER TABLE `user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 10:43:50
