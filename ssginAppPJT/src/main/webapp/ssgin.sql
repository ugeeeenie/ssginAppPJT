DROP TABLE SSGIN_LOG_TBL;
DROP TABLE SSGIN_USER_TBL;

DROP TABLE SSGIN_EVENT_TBL;
DROP TABLE SSGIN_NOTICE_TBL;
DROP TABLE SSGIN_FAQ_TBL;

DROP SEQUENCE SSGIN_USER_SEQ;
DROP SEQUENCE SSGIN_EVENT_SEQ;
DROP SEQUENCE SSGIN_NOTICE_SEQ;
DROP SEQUENCE SSGIN_FAQ_SEQ;


CREATE TABLE SSGIN_USER_TBL (
	USER_NO		NUMBER			PRIMARY KEY,
	USER_ID		VARCHAR2(100)	NOT NULL,
	USER_BLOCK	NUMBER,
	USER_TX		VARCHAR2(300),
	USER_FLAG 	CHAR(1)			DEFAULT 'Y'
);

CREATE SEQUENCE	SSGIN_USER_SEQ;

SELECT * FROM SSGIN_USER_TBL;

INSERT INTO SSGIN_USER_TBL
VALUES (64, '0x987c07ecba6bb89675c78259a1c40abd042b7cf987af73ac73960106951e2e1c', 175869, 
	'0xb9605ed34c20712529ca535806d0d9fa9058ac2d960a7e7a09f93ad78ea8fea2', 'Y');

INSERT INTO SSGIN_USER_TBL
VALUES (22, '0x3d41405be8902473cc7b4c815f2c3a63d1ddb07e8de30f11b409aeb7666353c6', 175869, 
	'0x523456fe2cd7a7896ab8c6b024a8a080ebdd8320d8a9c2f1ccf6ffe1019a246d', 'Y');
	
-- 신세계 MAPPIN 계정에서부터 오는거
INSERT INTO SSGIN_USER_TBL
VALUES (23, '0x2d0e4e2b13a157be5ea0b9892578df2e2c348f0c27fe6ec6b90b8015c5511008', 175869, 
	'0x98986049989d37cb24c7747c907ddcf157334ae99eb7c838205c203016eb71e5', 'Y');
	
DELETE FROM SSGIN_USER_TBL
WHERE	USER_NO = 104;

DELETE FROM SSGIN_LOG_TBL
WHERE	USER_NO = 104;

UPDATE SSGIN_USER_TBL
SET		USER_FLAG = 'N'
WHERE	USER_NO = 3;

CREATE	TABLE	SSGIN_LOG_TBL (
	USER_NO			NUMBER	REFERENCES	SSGIN_USER_TBL(USER_NO),
	AUTH_TIME		VARCHAR2(100)			NOT NULL,
	AUTH_SUCCESS	CHAR(1)	DEFAULT	'Y'		NOT NULL,
	AUTH_URL		VARCHAR2(300)			NOT NULL
);

SELECT * FROM SSGIN_LOG_TBL;

INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'http://www.ssg.com/');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-09-30 08:51:50', 'Y', 'http://www.ssgpay.com/');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'http://www.shinsegae.com/?from=w');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'https://store.emart.com/main/main.do');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'https://www.shillahotels.com/index.do');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'http://www.epost.go.kr/main.retrieveMainPage.comm');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'https://www.emart24.co.kr/index.asp');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'http://fashion.sivillage.com/hallFA');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'http://www.naver.com');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'http://www.daum.net');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'http://www.youtube.com');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'http://www.google.co.kr');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'http://www.konkuk.ac.kr');
INSERT INTO SSGIN_LOG_TBL
VALUES(2, '2017-10-01 14:51:50', 'Y', 'http://blog.naver.com');

INSERT INTO SSGIN_LOG_TBL
VALUES(64, '2017-10-01 14:51:50', 'Y', 'http://www.ssgin.co.kr');
INSERT INTO SSGIN_LOG_TBL
VALUES(64, '2017-10-01 14:51:50', 'Y', 'http://www.naver.com');
INSERT INTO SSGIN_LOG_TBL
VALUES(64, '2017-10-01 14:51:50', 'Y', 'http://www.google.co.kr');
INSERT INTO SSGIN_LOG_TBL
VALUES(64, '2017-10-01 14:51:50', 'Y', 'http://www.epost.go.kr/main.retrieveMainPage.comm');
INSERT INTO SSGIN_LOG_TBL
VALUES(64, '2017-10-01 14:51:50', 'Y', 'https://www.emart24.co.kr/index.asp');
INSERT INTO SSGIN_LOG_TBL
VALUES(64, '2017-10-01 14:51:50', 'Y', 'http://fashion.sivillage.com/hallFA');
INSERT INTO SSGIN_LOG_TBL
VALUES(64, '2017-10-01 14:51:50', 'Y', 'http://www.naver.com');
INSERT INTO SSGIN_LOG_TBL
VALUES(64, '2017-10-01 14:51:50', 'Y', 'http://www.daum.net');
INSERT INTO SSGIN_LOG_TBL
VALUES(64, '2017-10-01 14:51:50', 'Y', 'http://www.youtube.com');
INSERT INTO SSGIN_LOG_TBL
VALUES(64, '2017-10-01 14:51:50', 'Y', 'http://www.google.co.kr');
INSERT INTO SSGIN_LOG_TBL
VALUES(64, '2017-10-01 14:51:50', 'Y', 'http://www.konkuk.ac.kr');
INSERT INTO SSGIN_LOG_TBL
VALUES(64, '2017-10-01 14:51:50', 'Y', 'http://blog.naver.com');

UPDATE SSGIN_LOG_TBL
SET		AUTH_TIME = '2017-10-07 18:53:30'
WHERE	AUTH_TIME = '17/10/17';

CREATE	TABLE	SSGIN_NOTICE_TBL (
	NOTICE_SEQ		NUMBER			PRIMARY KEY,
	NOTICE_TITLE	VARCHAR2(300)	NOT NULL,
	NOTICE_CONTENT	VARCHAR2(2000)	NOT NULL,
	NOTICE_REGDATE	VARCHAR2(50)	NOT NULL
)

CREATE SEQUENCE SSGIN_NOTICE_SEQ;

SELECT * FROM SSGIN_NOTICE_TBL;

INSERT INTO SSGIN_NOTICE_TBL(NOTICE_SEQ, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE)
VALUES (SSGINNOTICESEQ.NEXTVAL, 'SSG IN 정식 서비스 시작!', '블록체인을 통해 안전한 인증을 시도해보세요!', TO_CHAR(SYSDATE,'YYYY-MM-DD'));
INSERT INTO SSGIN_NOTICE_TBL(NOTICE_SEQ, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE)
VALUES (SSGINNOTICESEQ.NEXTVAL, 'SSG IN 222', '블록체인을 통해 안전한 인증을 시도해보세요!', TO_CHAR(SYSDATE,'YYYY-MM-DD'));
INSERT INTO SSGIN_NOTICE_TBL(NOTICE_SEQ, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE)
VALUES (SSGINNOTICESEQ.NEXTVAL, 'SSG IN 정식 서비스 시작!', '블록체인을 통해 안전한 인증을 시도해보세요!', TO_CHAR(SYSDATE,'YYYY-MM-DD'));
INSERT INTO SSGIN_NOTICE_TBL(NOTICE_SEQ, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE)
VALUES (SSGINNOTICESEQ.NEXTVAL, 'SSG IN 222', '블록체인을 통해 안전한 인증을 시도해보세요!', TO_CHAR(SYSDATE,'YYYY-MM-DD'));
INSERT INTO SSGIN_NOTICE_TBL(NOTICE_SEQ, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE)
VALUES (SSGINNOTICESEQ.NEXTVAL, 'SSG IN 정식 서비스 시작!', '블록체인을 통해 안전한 인증을 시도해보세요!', TO_CHAR(SYSDATE,'YYYY-MM-DD'));
INSERT INTO SSGIN_NOTICE_TBL(NOTICE_SEQ, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE)
VALUES (SSGINNOTICESEQ.NEXTVAL, 'SSG IN 222', '블록체인을 통해 안전한 인증을 시도해보세요!', TO_CHAR(SYSDATE,'YYYY-MM-DD'));
INSERT INTO SSGIN_NOTICE_TBL(NOTICE_SEQ, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE)
VALUES (SSGINNOTICESEQ.NEXTVAL, 'SSG IN 정식 서비스 시작!', '블록체인을 통해 안전한 인증을 시도해보세요!', TO_CHAR(SYSDATE,'YYYY-MM-DD'));
INSERT INTO SSGIN_NOTICE_TBL(NOTICE_SEQ, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE)
VALUES (SSGINNOTICESEQ.NEXTVAL, 'SSG IN 222', '블록체인을 통해 안전한 인증을 시도해보세요!', TO_CHAR(SYSDATE,'YYYY-MM-DD'));
INSERT INTO SSGIN_NOTICE_TBL(NOTICE_SEQ, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE)
VALUES (SSGINNOTICESEQ.NEXTVAL, 'SSG IN 정식 서비스 시작!', '블록체인을 통해 안전한 인증을 시도해보세요!', TO_CHAR(SYSDATE,'YYYY-MM-DD'));
INSERT INTO SSGIN_NOTICE_TBL(NOTICE_SEQ, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE)
VALUES (SSGINNOTICESEQ.NEXTVAL, 'SSG IN 222', '블록체인을 통해 안전한 인증을 시도해보세요!', TO_CHAR(SYSDATE,'YYYY-MM-DD'));
INSERT INTO SSGIN_NOTICE_TBL(NOTICE_SEQ, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE)
VALUES (SSGINNOTICESEQ.NEXTVAL, 'SSG IN 정식 서비스 시작!', '블록체인을 통해 안전한 인증을 시도해보세요!', TO_CHAR(SYSDATE,'YYYY-MM-DD'));
INSERT INTO SSGIN_NOTICE_TBL(NOTICE_SEQ, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE)
VALUES (SSGINNOTICESEQ.NEXTVAL, 'SSG IN 222', '블록체인을 통해 안전한 인증을 시도해보세요!', TO_CHAR(SYSDATE,'YYYY-MM-DD'));


CREATE	TABLE	SSGIN_FAQ_TBL (
	FAQ_SEQ			NUMBER			PRIMARY	KEY,
	FAQ_CATEGORY	VARCHAR2(50)	DEFAULT 'ALL' NOT NULL,
	FAQ_TITLE		VARCHAR2(300)	NOT NULL,
	FAQ_CONTENT		VARCHAR2(2000)	NOT NULL
)

CREATE SEQUENCE SSGIN_FAQ_SEQ;

SELECT * FROM SSGIN_FAQ_TBL;

INSERT INTO SSGIN_FAQ_TBL(FAQ_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT)
VALUES (SSGIN_FAQ_SEQ.NEXTVAL, '일반', 'SSG IN은 어떤 서비스인가요?', '블록체인 기반 간편본인인증시스템 입니다.');
INSERT INTO SSGIN_FAQ_TBL(FAQ_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT)
VALUES (SSGIN_FAQ_SEQ.NEXTVAL, '인증', '인증이란 무엇인가요?', '정당한 사용자의 신원을 확인하는 것입니다.');


CREATE	TABLE	SSGIN_EVENT_TBL (
	EVENT_NO			NUMBER			PRIMARY KEY,
	EVENT_IMGSRC		VARCHAR2(180),
	EVENT_LINK			VARCHAR2(50),
	EVENT_TITLE			VARCHAR2(50)	NOT NULL,
	EVENT_START_DATE	VARCHAR2(20)	NOT NULL,
	EVENT_END_DATE		VARCHAR2(20)
)

CREATE SEQUENCE SSGIN_EVENT_SEQ;

SELECT * FROM SSGIN_NOTICE_TBL;


CREATE	TABLE	SSGIN_ADMIN_TBL (
	ADMIN_ID	VARCHAR2(20)	PRIMARY KEY,
	ADMIN_PWD	VARCHAR2(20)	NOT NULL
);


CREATE TABLE TEST (
	NUM	NUMBER,
	REGDATE VARCHAR2(50)
);

SELECT * FROM TEST;

INSERT INTO TEST
VALUES (1, SYSDATE);

INSERT INTO TEST
VALUES (2, '17/07/03');

DELETE 	FROM TEST
WHERE	REGDATE < TO_DATE(SYSDATE, 'YY/MM/DD') - 90

SELECT 	TO_DATE(SYSDATE, 'YY/MM/DD') - 90
FROM	DUAL;