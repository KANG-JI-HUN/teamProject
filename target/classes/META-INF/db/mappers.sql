-- ★ ★ ★ Member.xml(mapper) ★ ★ ★
-- id=idConfirm(id중복체크)
SELECT COUNT(*) FROM MEMBER WHERE MID='aaa';
-- id=joinMember(회원가입)
INSERT INTO MEMBER VALUES
        ('bbb','111','마산동','ma@gmail.com', '서울시 강동구','56789');
-- id = getMember(회원정보 가져오기)
SELECT * FROM MEMBER WHERE MID='aaa';
-- id = modifyMember(정보수정)
UPDATE MEMBER SET
    MPW='111',
    MNAME='마동석',
    MMAIL='madong@naver.com',
    MADDR='서울 강남구',
    MPOST='99999'
    WHERE MID='bbb';
    
-- ★ ★ ★ Book.xml(mapper) ★ ★ ★
-- id=bookListAll (신상순서대로 책리스트 모두 가져오기)
SELECT * FROM BOOK ORDER BY BRDATE DESC;
-- id=bookListPaging (책이름순서대로 top-N구문)
SELECT * FROM(SELECT ROWNUM RN, A.*
            FROM(SELECT * FROM BOOK ORDER BY BTITLE) A)
        WHERE RN BETWEEN 1 AND 3;
-- id=getBook(책번호로 책정보 가져오기)
SELECT * FROM BOOK WHERE BNUM=1;
SELECT * FROM BOOK;
-- id=registerBook(책 등록)
INSERT INTO BOOK VALUES
    (BOOK_SEQ.NEXTVAL, 'Java','윤길동',SYSDATE,
                'noimg.jpg','noimg.jpg','좋은 JSP 책이다');
INSERT INTO BOOK (BNUM, BTITLE, BWRITER, BRDATE, BIMG1, BINFO) VALUES
    (BOOK_SEQ.NEXTVAL, 'html','최범석',SYSDATE,
    'noimg.jpg','좋은 JSP 책이다');   
INSERT INTO BOOK (BNUM, BTITLE, BWRITER, BRDATE, BIMG2, BINFO) VALUES
    (BOOK_SEQ.NEXTVAL, 'JavaScript','최범석',SYSDATE,
    'noimg.jpg','좋은 JSP 책이다');    
INSERT INTO BOOK (BNUM, BTITLE, BWRITER, BRDATE, BINFO) VALUES
    (BOOK_SEQ.NEXTVAL, 'css','홍길동',SYSDATE,'좋은 JSP 책이다');
-- id=modifyBook(책정보수정)
UPDATE BOOK SET
    btitle='jsp servlet',
    bwriter='최',
    brdate=sysdate,
    bimg1='noimg.jpg',
    bimg2='noimg.jpg',
    binfo='좋은 책'
    WHERE BNUM=2;
UPDATE BOOK SET
    btitle='jsp servlet',
    bwriter='최',
    brdate=sysdate,
    bimg1='noimg.jpg',
    binfo='좋은 책'
    WHERE BNUM=2;
UPDATE BOOK SET
    btitle='jsp servlet',
    bwriter='최',
    brdate=sysdate,
    bimg2='noimg.jpg',
    binfo='좋은 책'
    WHERE BNUM=2;
UPDATE BOOK SET
    btitle='jsp servlet',
    bwriter='최',
    brdate=sysdate,
    binfo='좋은 책'
    WHERE BNUM=2;
-- id = cntBook(등록된 책 갯수)
SELECT COUNT(*) FROM BOOK;
COMMIT;