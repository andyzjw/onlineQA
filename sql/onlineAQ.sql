/* 数据库创建 */
DROP DATABASE IF EXISTS onlineAQ;
CREATE DATABASE onlineAQ DEFAULT CHARACTER SET utf8;
USE onlineAQ;

/* 数据表创建 */
#删除数据表
DROP TABLE IF EXISTS answers;-- 应答表
DROP TABLE IF EXISTS questions;-- 问题表

#创建数据表
CREATE TABLE questions(
	id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT'问题 id ',
	title VARCHAR(50) NOT NULL COMMENT'问题名 ',
	detailDesc VARCHAR(600) COMMENT'问题描述',
	answerCount INT NOT NULL COMMENT'回答次数',
	lastModified DATETIME NOT NULL COMMENT'最后修改时间'
)COMMENT='问题表' AUTO_INCREMENT=1001;

CREATE TABLE answers(
	id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT'答案 id ',
	ansContent VARCHAR(600) NOT NULL COMMENT'答案内容',
	ansDate DATETIME NOT NULL COMMENT'回答时间',
	qid BIGINT NOT NULL COMMENT'问题 id',
	FOREIGN KEY(qid) REFERENCES questions(id)
)COMMENT='应答表';



/* 插入数据 */
-- 问题表
INSERT INTO questions(title,detailDesc,answerCount,lastModified) VALUES
("天津有什么好玩的地方","十一假期去天津旅游，各位有什么好的建议~求推荐",20,"2018-9-1 12:22:22"),
("饭后多久可以锻炼，需要注意什么","如题，ps有没有一起锻炼的小伙伴？",12,"2018-7-12 11:12:22"),
("有什么好看的电影","有啥好看的电影，啥类型都可以，来说一说吧",33,"2018-9-3 16:16:33");

-- 应答表
INSERT INTO answers(ansContent,ansDate,qid) VALUES
("天津之眼很美，可以看到天津的全景，晚上看好","2018-9-1 13:22:11",1),
("其实杭州挺好玩的，不如去杭州吧","2018-9-1 12:42:11",1),
("一般一个半小时","2018-7-12 12:22:11",2),
("觉得不撑了就行","2018-7-12 12:52:51",2),
("碟中谍6！！超好看","2018-9-3 17:22:11",3);


/*
问题查询

select * from questions;
select * from answers;
*/
