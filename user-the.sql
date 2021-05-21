CREATE SEQUENCE SEQ_TEST INCREMENT BY 1 START WITH 1;


insert into board(no, subject, content, created_date)
values(SEQ_board.nextval, '제목','내용', sysdate);
--데이터가 조작된이후 확정
commit;
--조작한 명령 취소
ROLLBACK;

--SEQ_board.currval

update board 
set writer='guest', content='내용수정'
where no=6;

delete from board
where no=8;

delete from board
where writer is NULL;
