select 
	id, 
    `name`, /*파란색의 글자는 예약어이기 때문에 빽커터로 감싸준다 */
    age   /*select 문법  select () from 안에 coulmn 을 선택을 하면 원하는 값을 볼수있다*/
from 
	student_study_mst 
where 
	`name` like '%경%'   /*성이 김씨를 확인 할려고 했을때 `name` = '김' 실행이 안된다, `name` like '김%' 방식으로 찾아준다, 중간에 경이라는 이름을 가진 사람을 찾을려면 '%()%' 값을 넣는다   */
or `name` like '김%';  /*where 조건에 추가로 조건을 줄때 and가 있으면 or도 있다 */

select
	*
from
	student_study_mst
where
	age is null; /*null 값을 가지고 있는 것을 불러 오는 문법, null을 제외한 모든 것을 불러오는 경우 age is not null*/
    /*25=< age =< 30 between은 포함을 가지고 있다, between 앞에 not 을 붙이면 사이가 아닌것을 찾는다 age != 25; => not age = 25; 처럼 쓴다  */
    
select
/* 순서 
SELECT 컬럼명 --------------------- (5) 
FROM 테이블명 ------------------- (1)
WHERE 테이블 조건 --------------- (2)
GROUP BY 컬럼명 -------------------- (3)
HAVING 그룹 조건 ----------------- (4)
ORDER BY 컬럼명 -------------------- (6)
*/