 DROP TABLE IF EXISTS `journey`.`jy_article`;
CREATE TABLE  `journey`.`jy_article` (
  `articleid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serial` varchar(50) NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `partyid` int(10) unsigned NOT NULL,
  `title` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `adddate` datetime NOT NULL,
  `useremail` varchar(50) NOT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
 
 DROP TABLE IF EXISTS `journey`.`jy_attend`;
CREATE TABLE  `journey`.`jy_attend` (
  `ATTENDID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTYID` int(11) DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL,
  `USEREMAIL` varchar(50) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `CONTENT` text,
  `ADDDATE` datetime DEFAULT NULL,
  `AUDITID` int(11) DEFAULT NULL,
  `AUDITDATE` datetime DEFAULT NULL,
  `AUDITRESULT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ATTENDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
DROP TABLE IF EXISTS `journey`.`jy_party`;
CREATE TABLE  `journey`.`jy_party` (
  `PARTYID` int(11) NOT NULL AUTO_INCREMENT,
  `OWNERID` int(11) DEFAULT NULL,
  `OWNEREMAIL` varchar(50) DEFAULT NULL,
  `MINNUM` int(11) DEFAULT NULL,
  `MAXNUM` int(11) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `CONTENT` text,
  `ADDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`PARTYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `journey`.`jy_photo`;
CREATE TABLE  `journey`.`jy_photo` (
  `photoid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serial` varchar(50) NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `partyid` int(10) unsigned NOT NULL,
  `title` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `adddate` datetime NOT NULL,
  `useremail` varchar(50) NOT NULL,
  PRIMARY KEY (`photoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `journey`.`jy_user`;
CREATE TABLE  `journey`.`jy_user` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `PASSWORD` varchar(36) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
      