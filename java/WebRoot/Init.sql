    create table `JOURNEY`.`JY_ATTEND`(
        `ATTENDID` INTEGER not null auto_increment,
       `PARTYID` INTEGER,
       `USERID` INTEGER,
       `USEREMAIL` VARCHAR(50),
       `TITLE` VARCHAR(200),
       `CONTENT` TEXT,
       `ADDDATE` DATE,
       `AUDITID` INTEGER,
       `AUDITDATE` DATE,
       `AUDITRESULT` INTEGER,
        constraint `SQL090719084223980` primary key (`ATTENDID`)
    );

    create unique index `SQL090719084223980` on `JOURNEY`.`JY_ATTEND`(`ATTENDID`);
    
    
    create table `JOURNEY`.`JY_PARTY`(
        `PARTYID` INTEGER not null auto_increment,
       `OWNERID` INTEGER,
       `OWNEREMAIL` VARCHAR(50),
       `MINNUM` INTEGER,
       `MAXNUM` INTEGER,
       `TITLE` VARCHAR(200),
       `CONTENT` TEXT,
       `ADDDATE` DATE,
        constraint `SQL090719083442790` primary key (`PARTYID`)
    );

    create unique index `SQL090719083442790` on `JOURNEY`.`JY_PARTY`(`PARTYID`);
    
    
    create table `JOURNEY`.`JY_USER`(
        `USERID` INTEGER not null auto_increment,
       `PASSWORD` VARCHAR(36),
       `EMAIL` VARCHAR(50),
        constraint `SQL090716103055240` primary key (`USERID`)
    );

    create unique index `SQL090716103055240` on `JOURNEY`.`JY_USER`(`USERID`);  
    
    CREATE TABLE `journey`.`jy_photo` (
      `photoid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
      `serial` VARCHAR(50) NOT NULL,
      `userid` INTEGER UNSIGNED NOT NULL,
      `partyid` INTEGER UNSIGNED NOT NULL,
      `title` VARCHAR(200) NOT NULL,
      `describe` TEXT NOT NULL,
      `adddate` DATETIME NOT NULL,
      PRIMARY KEY (`photoid`)
    )
    ENGINE = InnoDB;
    
    CREATE TABLE `journey`.`jy_article` (
      `articleid` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
      `serial` VARCHAR(50) NOT NULL,
      `userid` INTEGER UNSIGNED NOT NULL,
      `partyid` INTEGER UNSIGNED NOT NULL,
      `title` VARCHAR(200) NOT NULL,
      `describe` TEXT NOT NULL,
      `content` TEXT NOT NULL,
      `adddate` DATETIME NOT NULL,
      PRIMARY KEY (`articleid`)
    )
    ENGINE = InnoDB;
      