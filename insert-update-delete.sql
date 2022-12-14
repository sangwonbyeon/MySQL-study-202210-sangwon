/*
  DML 
  insert  C  데이터 추가
  select  R  데이터 조회
  update  U  데이터 수정
  delete  D  데이터 삭제
*/
set sql_sage_updates = 0;  /*없으면 값 수정 조회 삭제등 못한다 (우측 하단에 ready only 를 풀어주기 위해서) */
select * from student_study_mst;

/*==========================<insert>==========================*/
insert into student_study_mst
	(id, name, age) 
values
	(1, '정빈', 20);  /*tab 키*/
insert into student_study_mst(name, id, age) values('김규민', 2, 17);
insert into student_study_mst(name, id) values('박경효', 26);
insert into student_study_mst values(3, '김혜진', 26); /*value 들이 순서대로 지키면서 들어올 경우 coulmn 을 생략이 가능하다 */

insert into student_study_mst
values
	(5, '윤도영', 25),
	(6, '홍성욱', 25),
	(7, '김경민', 32),
	(8, '장혜민', 26);  /*DB 에서는 "" 큰 따옴표 사용x '' 작은 따옴표만*/
    
/*==========================<update>==========================*/

select * from student_study_mst;

update student_study_mst
set
	name = '정순동',  /*set 안에서 = 는 대입문 */
    age = 22
where  /*조건문*/
	id = 6;	 /*where 안에서 = 는 대입 연산자 */
    
update student_study_mst
set
	age = age + 1
where
	id = 6;
    
/*==========================<delete>==========================*/

select * from student_study_mst;

delete
from
	student_study_mst /*이대로 실행하면 전부다 삭제*/
where 
	id = 1;
/*key 값으로 지워라*/

/*==========================<select>==========================*/