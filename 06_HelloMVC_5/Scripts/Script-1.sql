--   CREATE TABLE NOTICE(
--        NOTICE_NO NUMBER PRIMARY KEY,
--        NOTICE_TITLE VARCHAR2(100) NOT NULL,
--        NOTICE_WRITER VARCHAR2(15) NOT NULL,
--        NOTICE_CONTENT VARCHAR2(4000) NOT NULL,
--        NOTICE_DATE DATE DEFAULT SYSDATE,
--        FILEPATH VARCHAR2(300),
--        STATUS VARCHAR2(1) DEFAULT 'Y',
--        constraint fk_notice_writer FOREIGN KEY (NOTICE_WRITER) REFERENCES MEMBER (USERID)
--    );
--
--SELECT * FROM NOTICE;
--
--    CREATE SEQUENCE SEQ_NOTICE_NO;
--
--    INSERT INTO NOTICE VALUES(SEQ_NOTICE_NO.NEXTVAL,'공지사항테스트','admin','공지사항테스트입니다',default,null,default);
--    INSERT INTO NOTICE VALUES(SEQ_NOTICE_NO.NEXTVAL,'코로나 힘내자','admin','코로나가 없어지길.',default,null,default);
--    COMMIT;
--    
--UPDATE NOTICE SET FILEPATH='test.png' WHERE NOTICE_NO=1;












--UPDATE board SET board_readcount=board_readcount+1 WHERE board_no=?





--SELECT * FROM board;
--
----게시판생성
--CREATE TABLE BOARD (	
--    "BOARD_NO" NUMBER, 
--	"BOARD_TITLE" VARCHAR2(50), 
--	"BOARD_WRITER" VARCHAR2(15), 
--	"BOARD_CONTENT" VARCHAR2(2000), 
--	"BOARD_ORIGINAL_FILENAME" VARCHAR2(100), 
--	"BOARD_RENAMED_FILENAME" VARCHAR2(100), 
--	"BOARD_DATE" DATE DEFAULT SYSDATE, 
--	"BOARD_READCOUNT" NUMBER DEFAULT 0, 
--    CONSTRAINT PK_BOARD_NO PRIMARY KEY(BOARD_NO),
--    CONSTRAINT FK_BOARD_WRITER FOREIGN KEY(BOARD_WRITER) REFERENCES MEMBER(USERID) ON DELETE SET NULL
--);
--
--COMMENT ON COLUMN "BOARD"."BOARD_NO" IS '게시글번호';
--COMMENT ON COLUMN "BOARD"."BOARD_TITLE" IS '게시글제목';
--COMMENT ON COLUMN "BOARD"."BOARD_WRITER" IS '게시글작성자 아이디';
--COMMENT ON COLUMN "BOARD"."BOARD_CONTENT" IS '게시글내용';
--COMMENT ON COLUMN "BOARD"."BOARD_ORIGINAL_FILENAME" IS '첨부파일원래이름';
--COMMENT ON COLUMN "BOARD"."BOARD_RENAMED_FILENAME" IS '첨부파일변경이름';
--COMMENT ON COLUMN "BOARD"."BOARD_DATE" IS '게시글올린날짜';
--COMMENT ON COLUMN "BOARD"."BOARD_READCOUNT" IS '조회수';
--
----게시판시퀀스생성
--CREATE SEQUENCE SEQ_BOARD_NO
--START WITH 1
--INCREMENT BY 1
--NOMINVALUE
--NOMAXVALUE
--NOCYCLE
--NOCACHE;
--
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 1','abcd','반갑습니다',null,null,to_date('18/01/11','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 1','abcd','반갑습니다',null,null,to_date('18/02/10','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 2','bcde','반갑습니다',null,null,to_date('18/02/12','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 3','cdef','반갑습니다',null,null,to_date('18/02/13','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 4','defg','반갑습니다',null,null,to_date('18/02/14','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 5','efgh','반갑습니다',null,null,to_date('18/02/15','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 6','fghi','반갑습니다',null,null,to_date('18/02/16','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 7','ghij','반갑습니다',null,null,to_date('18/02/17','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 8','hijk','반갑습니다',null,null,to_date('18/02/18','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 9','ijkl','반갑습니다',null,null,to_date('18/02/19','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 10','jklm','반갑습니다',null,null,to_date('18/02/20','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 11','klmn','반갑습니다',null,null,to_date('18/03/11','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 12','lmno','반갑습니다',null,null,to_date('18/03/12','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 13','mnop','반갑습니다',null,null,to_date('18/03/13','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 14','nopq','반갑습니다',null,null,to_date('18/03/14','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 15','opqr','반갑습니다',null,null,to_date('18/03/15','RR/MM/DD'),0);
--
--
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 16','pqrs','반갑습니다',null,null,to_date('18/03/16','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 17','qrst','반갑습니다',null,null,to_date('18/03/17','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 18','rstu','반갑습니다',null,null,to_date('18/03/18','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 19','stuv','반갑습니다',null,null,to_date('18/03/19','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 20','tuvw','반갑습니다',null,null,to_date('18/03/20','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 21','uvwx','반갑습니다',null,null,to_date('18/04/01','RR/MM/DD'),0);
----Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 22','vwxy','반갑습니다',null,null,to_date('18/04/02','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 23','wxyz','반갑습니다',null,null,to_date('18/04/03','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 24','admin','반갑습니다',null,null,to_date('18/04/04','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 25','abcde','반갑습니다',null,null,to_date('18/04/05','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 26','admin','반갑습니다',null,null,to_date('18/04/06','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 27','abcde','반갑습니다',null,null,to_date('18/04/07','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 28','admin','반갑습니다',null,null,to_date('18/04/08','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 29','abcde','반갑습니다',null,null,to_date('18/04/09','RR/MM/DD'),0);
--Insert into WEB.BOARD (BOARD_NO,BOARD_TITLE,BOARD_WRITER,BOARD_CONTENT,BOARD_ORIGINAL_FILENAME,BOARD_RENAMED_FILENAME,BOARD_DATE,BOARD_READCOUNT) values (SEQ_BOARD_NO.nextval,'안녕하세요, 게시판입니다 - 30','admin','반갑습니다',null,null,to_date('18/04/10','RR/MM/DD'),0);











SELECT * FROM MEMBER;


SELECT * FROM BOARD_COMMENT;

--계층형쿼리 공부다시하기
SELECT * FROM BOARD_COMMENT WHERE BOARD_REF=60
START WITH BOARD_COMMENT_LEVEL=1 CONNECT BY PRIOR BOARD_COMMENT_NO=BOARD_COMMENT_REF;

    CREATE TABLE BOARD_COMMENT(
        "BOARD_COMMENT_NO" NUMBER,
        "BOARD_COMMENT_LEVEL" NUMBER DEFAULT 1,
        "BOARD_COMMENT_WRITER" VARCHAR2(15), 
        "BOARD_COMMENT_CONTENT" VARCHAR2(2000), 
        "BOARD_REF" NUMBER, 
        "BOARD_COMMENT_REF" NUMBER, 
        "BOARD_COMMENT_DATE" DATE DEFAULT SYSDATE, 
        CONSTRAINT PK_BOARD_COMMENT_NO PRIMARY KEY(BOARD_COMMENT_NO),
        CONSTRAINT FK_BOARD_COMMENT_WRITER FOREIGN KEY(BOARD_COMMENT_WRITER) REFERENCES MEMBER(USERID) ON DELETE SET NULL,
        CONSTRAINT FK_BOARD_REF FOREIGN KEY(BOARD_REF) REFERENCES BOARD(BOARD_NO) ON DELETE CASCADE,
        CONSTRAINT FK_BOARD_COMMENT_REF FOREIGN KEY(BOARD_COMMENT_REF) REFERENCES BOARD_COMMENT(BOARD_COMMENT_NO) ON DELETE CASCADE
    );

    --DROP TABLE BOARD_COMMENT;

    COMMENT ON COLUMN BOARD_COMMENT.BOARD_COMMENT_NO IS '게시판댓글번호';
    COMMENT ON COLUMN BOARD_COMMENT.BOARD_COMMENT_LEVEL IS '게시판댓글 레벨';
    COMMENT ON COLUMN BOARD_COMMENT.BOARD_COMMENT_WRITER IS '게시판댓글 작성자';
    COMMENT ON COLUMN BOARD_COMMENT.BOARD_COMMENT_CONTENT IS '게시판댓글';
    COMMENT ON COLUMN BOARD_COMMENT.BOARD_REF IS '참조원글번호';
    COMMENT ON COLUMN BOARD_COMMENT.BOARD_COMMENT_REF IS '게시판댓글 참조번호';
    COMMENT ON COLUMN BOARD_COMMENT.BOARD_COMMENT_DATE IS '게시판댓글 작성일';

        
    CREATE SEQUENCE SEQ_BOARD_COMMENT_NO
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCYCLE
    NOCACHE;



SELECT * FROM board ORDER BY board_date DESC;


SELECT * FROM BOARD_COMMENT;
--테스트댓글 추가
INSERT INTO BOARD_COMMENT VALUES(SEQ_BOARD_COMMENT_NO.NEXTVAL, DEFAULT, 'opqr','글 잘읽었습니다.',61,NULL,DEFAULT);
INSERT INTO BOARD_COMMENT VALUES(SEQ_BOARD_COMMENT_NO.NEXTVAL, DEFAULT, 'efgh','좋은 정보 감사합니다.',61,NULL,DEFAULT);

--대댓글추가 : 댓글번호를 참조해서 insert할 것
INSERT INTO BOARD_COMMENT VALUES(SEQ_BOARD_COMMENT_NO.NEXTVAL, 2, 'stuv','좋은 정보가 어디에...?',61,30,DEFAULT);
INSERT INTO BOARD_COMMENT VALUES(SEQ_BOARD_COMMENT_NO.NEXTVAL, 2, 'efgh','하하하...안보이시는구나...',61,30,DEFAULT);
INSERT INTO BOARD_COMMENT VALUES(SEQ_BOARD_COMMENT_NO.NEXTVAL, 2, 'wxyz','얼씨구..',61,28,DEFAULT);
INSERT INTO BOARD_COMMENT VALUES(SEQ_BOARD_COMMENT_NO.NEXTVAL, 2, 'wxyz','저는 보입니다.',61,30,DEFAULT);
INSERT INTO BOARD_COMMENT VALUES(SEQ_BOARD_COMMENT_NO.NEXTVAL, 2, 'hijk','뭐임....',61,28,DEFAULT);




