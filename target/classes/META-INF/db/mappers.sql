-- �� �� �� Member.xml(mapper) �� �� ��
-- id=idConfirm(id�ߺ�üũ)
SELECT COUNT(*) FROM MEMBER WHERE MID='aaa';
-- id=joinMember(ȸ������)
INSERT INTO MEMBER VALUES
        ('bbb','111','���굿','ma@gmail.com', '����� ������','56789');
-- id = getMember(ȸ������ ��������)
SELECT * FROM MEMBER WHERE MID='aaa';
-- id = modifyMember(��������)
UPDATE MEMBER SET
    MPW='111',
    MNAME='������',
    MMAIL='madong@naver.com',
    MADDR='���� ������',
    MPOST='99999'
    WHERE MID='bbb';
    
-- �� �� �� Book.xml(mapper) �� �� ��
-- id=bookListAll (�Ż������� å����Ʈ ��� ��������)
SELECT * FROM BOOK ORDER BY BRDATE DESC;
-- id=bookListPaging (å�̸�������� top-N����)
SELECT * FROM(SELECT ROWNUM RN, A.*
            FROM(SELECT * FROM BOOK ORDER BY BTITLE) A)
        WHERE RN BETWEEN 1 AND 3;
-- id=getBook(å��ȣ�� å���� ��������)
SELECT * FROM BOOK WHERE BNUM=1;
SELECT * FROM BOOK;
-- id=registerBook(å ���)
INSERT INTO BOOK VALUES
    (BOOK_SEQ.NEXTVAL, 'Java','���浿',SYSDATE,
                'noimg.jpg','noimg.jpg','���� JSP å�̴�');
INSERT INTO BOOK (BNUM, BTITLE, BWRITER, BRDATE, BIMG1, BINFO) VALUES
    (BOOK_SEQ.NEXTVAL, 'html','�ֹ���',SYSDATE,
    'noimg.jpg','���� JSP å�̴�');   
INSERT INTO BOOK (BNUM, BTITLE, BWRITER, BRDATE, BIMG2, BINFO) VALUES
    (BOOK_SEQ.NEXTVAL, 'JavaScript','�ֹ���',SYSDATE,
    'noimg.jpg','���� JSP å�̴�');    
INSERT INTO BOOK (BNUM, BTITLE, BWRITER, BRDATE, BINFO) VALUES
    (BOOK_SEQ.NEXTVAL, 'css','ȫ�浿',SYSDATE,'���� JSP å�̴�');
-- id=modifyBook(å��������)
UPDATE BOOK SET
    btitle='jsp servlet',
    bwriter='��',
    brdate=sysdate,
    bimg1='noimg.jpg',
    bimg2='noimg.jpg',
    binfo='���� å'
    WHERE BNUM=2;
UPDATE BOOK SET
    btitle='jsp servlet',
    bwriter='��',
    brdate=sysdate,
    bimg1='noimg.jpg',
    binfo='���� å'
    WHERE BNUM=2;
UPDATE BOOK SET
    btitle='jsp servlet',
    bwriter='��',
    brdate=sysdate,
    bimg2='noimg.jpg',
    binfo='���� å'
    WHERE BNUM=2;
UPDATE BOOK SET
    btitle='jsp servlet',
    bwriter='��',
    brdate=sysdate,
    binfo='���� å'
    WHERE BNUM=2;
-- id = cntBook(��ϵ� å ����)
SELECT COUNT(*) FROM BOOK;
COMMIT;