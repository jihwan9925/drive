ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER web IDENTIFIED BY web DEFAULT tablespace users
quota unlimited ON users;
GRANT resource,CONNECT TO web;

SELECT *FROM MEMBER;

CREATE TABLE MEMBER(
  USERID VARCHAR2(15) PRIMARY KEY
 ,PASSWORD VARCHAR2(15) NOT NULL
 ,USERNAME  VARCHAR2(20) NOT NULL
 ,GENDER CHAR(1) CHECK (GENDER IN ('M','F'))
 ,AGE NUMBER
 ,EMAIL VARCHAR2(30)
 ,PHONE CHAR(11)  NOT NULL
 ,ADDRESS VARCHAR2(100)
 ,HOBBY VARCHAR2(50)
 ,ENROLLDATE DATE DEFAULT SYSDATE
);

INSERT INTO MEMBER VALUES ('abcde','1234','아무개','M',25,'abcde@naver.com','01012345678','서울시 강남구','운동,등산,독서',DEFAULT);
INSERT INTO MEMBER VALUES ('qwerty','asdf','김말년','F',30,'qwerty@naver.com','01098765432','서울시 관악구','운동,등산',DEFAULT);
INSERT INTO MEMBER VALUES ('admin','1234','관리자','F',33,'admin@naver.com','01012345678','서울시 강남구','독서',DEFAULT);

UPDATE MEMBER SET USERNAME='아무개',AGE=25,GENDER='M',EMAIL='abcde@naver.com',PHONE='01012345678',ADDRESS='서울시 강남구',HOBBY='운동,등산,독서' WHERE USERID='abcde';

ALTER TABLE MEMBER MODIFY PASSWORD VARCHAR2(100);
ALTER TABLE MEMBER MODIFY EMAIL VARCHAR2(200);
ALTER TABLE MEMBER MODIFY PHONE VARCHAR2(200);

UPDATE MEMBER SET PASSWORD='1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==';

MemberDTO(userId=abcde , password=null, userName=아무개, gender=M, age=25, email=abcde@naver.com, phone=01012345678, address=서울시 강남구, hobby=[운동, 등산, 독서], enrollDate=null)
