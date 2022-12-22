/*
       서브쿼리(하위쿼리)
       select 안에서 select 하는 방법
*/

/*문제: 서울대를 다니는 학생을 찾으세요*/

select
	*
from
	student_mst
where
	school_id = 1; /*서울대를 다니는 학생을 찾을때 id 가 1번이 서울대인걸 알지만 모르는 사람이 있다 어떻게 찾는가? */
    
select
	*
from
	student_mst as sm
    left outer join school_mst as scm on(scm.school_id = sm.school_id); 

select
	*
from
	student_mst
where
	school_id in (select    /* 부산대와 서울대의 하나라도 포함되어면 출력, in을 쓴다   */
					school_id 
				from 
					school_mst  
				where 
					school_name like '서울대%'
                or	school_name like '부산대%');  /*서브쿼리 쓰는 방법*/

select 
	*
from
	student_mst
where
	school_id in(1, 3); /*in : 저중에 하나라도 포함되어 있으면 출력*/
    
/*select 자리에 where 쓰는 방법*/
select
	*,
    (select school_name from school_mst as scm where scm.school_id = stm.school_id) as 번호 
from  /**/
	student_mst as stm;
    
/*from에 서브쿼리 쓰는 방법(**중요**)*/
select
	*,
	(select
	count(*)  /*count() 함수*/
    from
		student_mst) as 총인원  /*join 없이*/
from
	student_mst sm
    left outer join (select count(*) as 총원 from student_mst) sc on(1 = 1);
    
show profiles;
/*join 이 시간이 더 걸리는데 모든 값이 참이며 하나 부터 끝까지 모든 값들의 하나하나 join을 하며 select 까지 동시에 해버리기에 더 오래걸리게 된다*/
    
    
    
/*내가 실험한 쿼리파일의 실행 시간을 알려준다*/
set profiling = 1;
show profiles;
/*join 은 한번에 두개의 테이블을 연결 시켜서 where 해서 쓴다 
서브쿼리가 select 쪽에서 쓸때 마다 select 읽을때 한번 더 select를 읽기 때문 
가능한 join 으로 하는게 좋다 */