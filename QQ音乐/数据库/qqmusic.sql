/*
Navicat MySQL Data Transfer

Source Server         : imgdatas
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : qqmusic

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-08-21 18:33:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `album`
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `singer` varchar(20) DEFAULT NULL,
  `prices` int(3) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES ('1', '另一个童话', '邓紫棋', '7', '//y.gtimg.cn/music/photo_new/T002R300x300M000003cKIKZ1J4Yyu.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('2', '画外音', '王凯', '18', '//y.gtimg.cn/music/photo_new/T002R300x300M000004OB2uQ3ctvsH.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('3', 'QUeen', 'Nicki Minaj', '20', '//y.gtimg.cn/music/photo_new/T002R300x300M000001mcscR34ImIX.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('4', '未 LIVE2', '张杰', '9', '//y.gtimg.cn/music/photo_new/T002R300x300M000002JFTnH3VpOQt.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('5', '武动乾坤 OST原生大碟', '华语群星', '20', '//y.gtimg.cn/music/photo_new/T002R300x300M000002jPdm84WtIh4.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('6', '流星花园音乐专辑', '华语群星', '16', '//y.gtimg.cn/music/photo_new/T002R300x300M000001G6oXR1JB5fc.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('7', 'AMH', '王子异', '3', '//y.gtimg.cn/music/photo_new/T002R300x300M000002S1Aib4OZRf9.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('8', '我们在中场相遇', '莫文蔚', '20', '//y.gtimg.cn/music/photo_new/T002R300x300M000001XtPF21kfMXb.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('9', '1989', 'Taylor Swift', '19', '//y.gtimg.cn/music/photo_new/T002R300x300M000002Kz5Jo1uzHjz.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('10', '玩', '陈粒', '25', '//y.gtimg.cn/music/photo_new/T002R300x300M000003EHTi528PvZt.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('11', '爵士乐与不插电新编12首', '李志', '18', '//y.gtimg.cn/music/photo_new/T002R300x300M000003CzNyB0dZaMB.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('12', '我愿意为你轻轻歌唱', '好妹妹', '1', '//y.gtimg.cn/music/photo_new/T002R300x300M000001g04oF1j2YWC.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('13', '大自在', '粒粒', '1', '//y.gtimg.cn/music/photo_new/T002R300x300M000004TSoOf1Ehr9l.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('14', '一只猴子', '陈冠希', '20', '//y.gtimg.cn/music/photo_new/T002R300x300M000000rbhoy2OUEYK.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('15', '步履不断', '程璧', '16', '//y.gtimg.cn/music/photo_new/T002R300x300M000002zNyIu1e5iFj.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('16', 'Voicenotes', 'Charlie Puth', '12', '//y.gtimg.cn/music/photo_new/T002R300x300M000001v3NMj3Pi45u.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('17', 'reputation', 'Taylor Swift', '20', '//y.gtimg.cn/music/photo_new/T002R300x300M000003OK4yP2MBOip.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('18', 'Deluxe', 'Ed Sheeran', '18', '//y.gtimg.cn/music/photo_new/T002R300x300M000000chBQY44HBam.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('19', 'Revival', 'Eminem', '20', '//y.gtimg.cn/music/photo_new/T002R300x300M00000030Pth3K2EAg.jpg?max_age=2592000');
INSERT INTO `album` VALUES ('20', 'Red Pill Blues', 'Maroon5', '20', '//y.gtimg.cn/music/photo_new/T002R300x300M000002uS1Hd180SQ3.jpg?max_age=2592000');

-- ----------------------------
-- Table structure for `music`
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `math` int(6) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imageurl` varchar(255) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `nameurl` varchar(255) DEFAULT NULL,
  `singer` varchar(20) DEFAULT NULL,
  `singerurl` varchar(255) DEFAULT NULL,
  `times` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('1', '314', 'https://y.qq.com/n/yqq/album/002WB3Kn4Qq7EK.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000002WB3Kn4Qq7EK.jpg?max_age=2592000', '最好的那年', 'https://y.qq.com/n/yqq/song/004W8SSn2fdHzj.html', 'TFBOYS', 'https://y.qq.com/n/yqq/singer/000zmpju02bEBm.html', '03:49');
INSERT INTO `music` VALUES ('2', '223', 'https://y.qq.com/n/yqq/album/003cKIKZ1J4Yyu.html', '/y.gtimg.cn/music/photo_new/T002R90x90M000003cKIKZ1J4Yyu.jpg?max_age=2592000', '倒数', 'https://y.qq.com/n/yqq/song/003jjoM94WLiTf.html', 'G.E.M.邓紫棋', 'https://y.qq.com/n/yqq/singer/001fNHEf1SFEFN.html', '03:49');
INSERT INTO `music` VALUES ('3', '163', 'https://y.qq.com/n/yqq/album/000LwwLU4AsFiQ.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000000LwwLU4AsFiQ.jpg?max_age=2592000', '鸵鸟', 'https://y.qq.com/n/yqq/song/000pmS5z0GGifZ.html', '龙珈娜', 'https://y.qq.com/n/yqq/singer/000KJH8K10BGOm.html', '03:50');
INSERT INTO `music` VALUES ('4', '162', 'https://y.qq.com/n/yqq/album/004IWoIx34J0fT.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000004IWoIx34J0fT.jpg?max_age=2592000', '一百万个可能', 'https://y.qq.com/n/yqq/song/000eXvbv2GXLdW.html', 'Christine welch', 'https://y.qq.com/n/yqq/singer/001H6nEZ1G49p9.html', '04:35');
INSERT INTO `music` VALUES ('5', '146', 'https://y.qq.com/n/yqq/album/004ObfnU3tUCv0.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000004ObfnU3tUCv0.jpg?max_age=2592000', '迷梦', 'https://y.qq.com/n/yqq/song/00454rSb2et6nG.html', '李袁杰', 'https://y.qq.com/n/yqq/singer/002dhnzo0ReZXB.html', '03:41');
INSERT INTO `music` VALUES ('6', '145', 'https://y.qq.com/n/yqq/album/0014Yo3z1tAdRo.html', '//y.gtimg.cn/music/photo_new/T002R90x90M0000014Yo3z1tAdRo.jpg?max_age=2592000', '说散就散', 'https://y.qq.com/n/yqq/song/000mXelz2P2UfF.html', 'JC陈泳彤', 'https://y.qq.com/n/yqq/singer/000quag73Rfu0i.html', '03:55');
INSERT INTO `music` VALUES ('7', '138', 'https://y.qq.com/n/yqq/album/003C1fiu1NJUtO.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000003C1fiu1NJUtO.jpg?max_age=2592000', '我怎么这么好看', 'https://y.qq.com/n/yqq/song/004Cqw7K2AFWWk.html', '大张伟', 'https://y.qq.com/n/yqq/singer/003ULldz24exLi.html', '03:00');
INSERT INTO `music` VALUES ('8', '136', 'https://y.qq.com/n/yqq/album/001aenuB0pjlBY.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000001aenuB0pjlBY.jpg?max_age=2592000', '我不是宝宝', 'https://y.qq.com/n/yqq/song/0033LAUF0M7S1c.html', '校长', 'https://y.qq.com/n/yqq/singer/004BHpmw0G9dZG.html', '03:45');
INSERT INTO `music` VALUES ('9', '131', 'https://y.qq.com/n/yqq/album/0013VOAW0AmLjx.html', '//y.gtimg.cn/music/photo_new/T002R90x90M0000013VOAW0AmLjx.jpg?max_age=2592000', 'Hold Me Down', 'https://y.qq.com/n/yqq/song/001nuXXG2oUj6I.html', '吴亦凡', 'https://y.qq.com/n/yqq/singer/002yeznU3VAVEV.html', '03:05');
INSERT INTO `music` VALUES ('10', '123', 'https://y.qq.com/n/yqq/album/003QgK5S2KVz1x.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000003QgK5S2KVz1x.jpg?max_age=2592000', '我已经爱上你', 'https://y.qq.com/n/yqq/song/001O5hiN2AT6A7.html', '魏树清/夏婉安', 'https://y.qq.com/n/yqq/singer/001FJavs0QspN7.html', '03:56');
INSERT INTO `music` VALUES ('11', '110', 'https://y.qq.com/n/yqq/album/002wdavM3BDAQ3.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000002wdavM3BDAQ3.jpg?max_age=2592000', 'Pull Up', 'https://y.qq.com/n/yqq/song/004VMZFB1Sgnoz.html', '蔡徐坤', 'https://y.qq.com/n/yqq/singer/002nXp292LIOGV.html', '03:05');
INSERT INTO `music` VALUES ('12', '100', 'https://y.qq.com/n/yqq/album/000XwMIL40ZGhC.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000000XwMIL40ZGhC.jpg?max_age=2592000', '星球坠落', 'https://y.qq.com/n/yqq/song/000b2FOH08rJZ4.html', 'JelloRio李佳隆/艾热', 'https://y.qq.com/n/yqq/singer/002TFdK51hZYV9.html', '02:48');
INSERT INTO `music` VALUES ('13', '98', 'https://y.qq.com/n/yqq/album/003eBhnN33OzyL.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000003eBhnN33OzyL.jpg?max_age=2592000', '海边', 'https://y.qq.com/n/yqq/song/003w2rpp3fqd1e.html', '尚芸菲', 'https://y.qq.com/n/yqq/singer/002u9aH63SaeHS.html', '03:24');
INSERT INTO `music` VALUES ('14', '73', 'https://y.qq.com/n/yqq/album/001VqGlj2Oj52k.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000001VqGlj2Oj52k.jpg?max_age=2592000', '越来越不懂', 'https://y.qq.com/n/yqq/song/0037OKVx2ybIUT.html', '蔡健雅', 'https://y.qq.com/n/yqq/singer/000hNnWC3kko2c.html', '04:09');
INSERT INTO `music` VALUES ('15', '72', 'https://y.qq.com/n/yqq/album/004EL9k613IGE9.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000004EL9k613IGE9.jpg?max_age=2592000', '雪落下的声音', 'https://y.qq.com/n/yqq/song/003nIdG82oTT9N.html', '陆虎', 'https://y.qq.com/n/yqq/singer/004gbMvP356XaI.html', '05:11');
INSERT INTO `music` VALUES ('16', '65', 'https://y.qq.com/n/yqq/album/002cSXJi3wXNVN.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000002cSXJi3wXNVN.jpg?max_age=2592000', '陪我长大', 'https://y.qq.com/n/yqq/song/002tddiF2Bsv7s.html', '段奥娟', 'https://y.qq.com/n/yqq/singer/002YynFd2BuTt9.html', '03:56');
INSERT INTO `music` VALUES ('17', '57', 'https://y.qq.com/n/yqq/album/000zRaio2D0cwS.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000000zRaio2D0cwS.jpg?max_age=2592000', 'Rep That Culture', 'https://y.qq.com/n/yqq/song/004QehZI1cenOb.html', 'AI Rocco/那吾克热LIL-EM', 'https://y.qq.com/n/yqq/singer/003JSWlh0DtdBM.html', '02:36');
INSERT INTO `music` VALUES ('18', '56', 'https://y.qq.com/n/yqq/album/000vUXfo3LNDv9.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000000vUXfo3LNDv9.jpg?max_age=2592000', '爱你之后', 'https://y.qq.com/n/yqq/song/003Rx51g2N28Hj.html', '贺敬轩', 'https://y.qq.com/n/yqq/singer/003tfL1I07zOeN.html', '03:44');
INSERT INTO `music` VALUES ('19', '52', 'https://y.qq.com/n/yqq/album/0014Yo3z1tAdRo.html', '//y.gtimg.cn/music/photo_new/T002R90x90M0000014Yo3z1tAdRo.jpg?max_age=2592000', 'Remember Me', 'https://y.qq.com/n/yqq/song/001xW4To0rLcYR.html', '陈彼得', 'https://y.qq.com/n/yqq/singer/000MsEGy1FR0xV.html', '03:28');
INSERT INTO `music` VALUES ('20', '52', 'https://y.qq.com/n/yqq/album/002I4C7M0XZty5.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000002I4C7M0XZty5.jpg?max_age=2592000', 'Animal', 'https://y.qq.com/n/yqq/song/003J6uvg1B7fgR.html', 'Troye Sivan', 'https://y.qq.com/n/yqq/singer/004LhKMW2CWJox.html', '04:25');

-- ----------------------------
-- Table structure for `myalbum`
-- ----------------------------
DROP TABLE IF EXISTS `myalbum`;
CREATE TABLE `myalbum` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `singer` varchar(20) DEFAULT NULL,
  `prices` int(3) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myalbum
-- ----------------------------
INSERT INTO `myalbum` VALUES ('1', 'QUeen', 'Nicki Minaj', '20', '//y.gtimg.cn/music/photo_new/T002R300x300M000001mcscR34ImIX.jpg?max_age=2592000');
INSERT INTO `myalbum` VALUES ('3', '一只猴子', '陈冠希', '20', '//y.gtimg.cn/music/photo_new/T002R300x300M000000rbhoy2OUEYK.jpg?max_age=2592000');

-- ----------------------------
-- Table structure for `mymusic`
-- ----------------------------
DROP TABLE IF EXISTS `mymusic`;
CREATE TABLE `mymusic` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `math` int(6) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imageurl` varchar(255) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `nameurl` varchar(255) DEFAULT NULL,
  `singer` varchar(20) DEFAULT NULL,
  `singerurl` varchar(255) DEFAULT NULL,
  `times` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mymusic
-- ----------------------------
INSERT INTO `mymusic` VALUES ('6', '138', 'https://y.qq.com/n/yqq/album/003C1fiu1NJUtO.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000003C1fiu1NJUtO.jpg?max_age=2592000', '我怎么这么好看', 'https://y.qq.com/n/yqq/song/004Cqw7K2AFWWk.html', '大张伟', 'https://y.qq.com/n/yqq/singer/003ULldz24exLi.html', '03:00');
INSERT INTO `mymusic` VALUES ('7', '72', 'https://y.qq.com/n/yqq/album/004EL9k613IGE9.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000004EL9k613IGE9.jpg?max_age=2592000', '雪落下的声音', 'https://y.qq.com/n/yqq/song/003nIdG82oTT9N.html', '陆虎', 'https://y.qq.com/n/yqq/singer/004gbMvP356XaI.html', '05:11');
INSERT INTO `mymusic` VALUES ('8', '146', 'https://y.qq.com/n/yqq/album/004ObfnU3tUCv0.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000004ObfnU3tUCv0.jpg?max_age=2592000', '迷梦', 'https://y.qq.com/n/yqq/song/00454rSb2et6nG.html', '李袁杰', 'https://y.qq.com/n/yqq/singer/002dhnzo0ReZXB.html', '03:41');
INSERT INTO `mymusic` VALUES ('9', '314', 'https://y.qq.com/n/yqq/album/002WB3Kn4Qq7EK.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000002WB3Kn4Qq7EK.jpg?max_age=2592000', '最好的那年', 'https://y.qq.com/n/yqq/song/004W8SSn2fdHzj.html', 'TFBOYS', 'https://y.qq.com/n/yqq/singer/000zmpju02bEBm.html', '03:49');
INSERT INTO `mymusic` VALUES ('11', '52', 'https://y.qq.com/n/yqq/album/002I4C7M0XZty5.html', '//y.gtimg.cn/music/photo_new/T002R90x90M000002I4C7M0XZty5.jpg?max_age=2592000', 'Animal', 'https://y.qq.com/n/yqq/song/003J6uvg1B7fgR.html', 'Troye Sivan', 'https://y.qq.com/n/yqq/singer/004LhKMW2CWJox.html', '04:25');
