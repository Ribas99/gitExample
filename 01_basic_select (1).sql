/* *************************************

Select �⺻ ���� - ������, �÷� ��Ī

select [distinct] �÷���1, �÷���2 => ��ȸ�� �÷��̸����� ����. ���̺��� ��� �÷��� ��ȸ�ϴ� ��� *�� ���
                                  => �÷��� ��Ī : ��Ī�� ��ȸ����� ������ �÷��� �̸�. ��Ī�� " " �� ���� �� �ִ�.(������ ����� �ݵ�� " " ���)
                                  => select ���� distinct�� ���� �ߺ��� ��ȸ����� �ϳ��ุ �����ش�.
                                  
from   ���̺��        => ��ȸ�� �÷��� �ִ� ���̺��� �̸� ����

����: control + enter
*************************************** */

--EMP ���̺��� ��� �÷��� ��� �׸��� ��ȸ.
select  emp_id, 
        emp_name, 
        job, 
        mgr_id, 
        hire_date, 
        salary, 
        comm_pct, 
        dept_name
from    emp;        

select * from emp;

--EMP ���̺��� ���� ID(emp_id), ���� �̸�(emp_name), ����(job) �÷��� ���� ��ȸ.
select  emp_id,
        emp_name,
        job
from    emp;

--EMP ���̺��� ����(job) � ����� �����Ǿ����� ��ȸ. - ������ ���� �ϳ����� ��ȸ�ǵ��� ó��.
select  distinct job 
from    emp;

--EMP ���̺��� �μ���(dept_name)�� � ����� �����Ǿ����� ��ȸ - ������ ���� �ϳ����� ��ȸ�ǵ��� ó��.
select distinct dept_name
from   emp;

select  distinct emp_name, job
from emp;
--EMP ���̺��� emp_id�� ����ID, emp_name�� �����̸�, hire_date�� �Ի���, salary�� �޿�, dept_name�� �ҼӺμ� ��Ī���� ��ȸ�Ѵ�.
select  emp_id as "����ID",  --emp_id���� ��ȸ, ����� ����ID�� �����ش�.  �÷��� [as] ��Ī
        emp_name "���� �̸�",
        hire_date "�Ի���",
        salary "�޿�",
        dept_name "�ҼӺμ�"
from    emp;        

/* 
������ 
 ������ �� �÷��� ��� ���鿡 �Ϸ������� ����ȴ�.
 ���� �÷��� ������ ��ȸ�� �� �ִ�.

- �������: +, -, *, /
***�ǿ����� �� null�� ������ ����� ������ null. null + 10=>null
 > null: ���� ����. �𸣴� ��.
***dateŸ�԰� +/- ���� : day(��)�� +/-.  ���ó�¥ + 5: 5���� ��¥. ���ó�¥ - 5 : 5���� ��¥
- ���Ῥ����: ���ڿ��� ���̴� ������.  || => ���Ÿ���� �� ���� �� �ִ�.
*/

select 10 "num1", 20 "num2"
from   dual;--dual: ����(dummy) ���̺� -  select�� from���� ����� ���ؼ� ����ϴ� ��¥ ���̺�

select 10+20, 20-5, 5*3, 10/2, mod(10, 3) "10%3"
from dual;

select 'ȫ�浿'||'��', 30000||'��' "����", 5000||20
from dual;

select 2000+100, null+100, null||'��'
from dual;

--sysdate:��������� �Ͻø� ��ȯ. ��ȯŸ��: date
select sysdate, sysdate + 3 "3����", sysdate+20, sysdate-5 "5���� ��¥"
from dual;

select sysdate*3 from dual; --date�� +/-�� ����

select salary, salary, salary -- ������ �÷��� ������ ��ȸ�� �� �ִ�.
from emp;
--EMP ���̺��� ������ �̸�(emp_name), �޿�(salary) �׸���  �޿� + 1000 �� ���� ��ȸ.
select  emp_name,
        salary,
        salary+1000 "1000�޷� �λ��"
from    emp;        


--EMP ���̺��� �Ի���(hire_date)�� �Ի��Ͽ� 10���� ���� ��¥�� ��ȸ.
select  hire_date,
        hire_date+10 "�Ի� 10����"
from emp;        

-- TODO: EMP ���̺��� ����(job)�� � ����� �����Ǿ����� ��ȸ - ������ ���� �ϳ����� ��ȸ�ǵ��� ó��

select  distinct job 
from    emp;

--TODO: EMP ���̺��� ������ ID(emp_id), �̸�(emp_name), �޿�(salary), Ŀ�̼�_PCT(comm_pct), �޿��� Ŀ�̼�_PCT�� ���� ���� ��ȸ.

select  emp_id,
        emp_name,
        salary,
        comm_pct,
        salary * comm_pct
        
from    emp;


--TODO:  EMP ���̺��� �޿�(salary)�� �������� ��ȸ. (���ϱ� 12)

select  emp_name,
        salary * 12 
             
from    emp;

--TODO: EMP ���̺��� �����̸�(emp_name)�� �޿�(salary)�� ��ȸ. �޿� �տ� $�� �ٿ� ��ȸ.

select  emp_name,
        '$' || salary
             
from    emp;


--TODO: EMP ���̺��� �Ի���(hire_date) 30����, �Ի���, �Ի��� 30�� �ĸ� ��ȸ

select  hire_date - 30 "30����", hire_date "�Ի���" , hire_date+30 "30���� ��¥"
from dual;


/* *************************************
Where ���� �̿��� �� �� ����
************************************* */

--EMP ���̺��� ����_ID(emp_id)�� 110�� ������ �̸�(emp_name)�� �μ���(dept_name)�� ��ȸ
select  emp_name,
        dept_name
from    emp
where   emp_id=110;


--EMP ���̺��� 'Sales' �μ��� ������ ���� �������� ID(emp_id), �̸�(emp_name), �μ���(dept_name)�� ��ȸ.
SELECT  EMP_ID, 
        emp_name,
        dept_name
from    emp
where   dept_name <> 'Sales';
--where   dept_name != 'Sales';

--EMP ���̺��� �޿�(salary)�� $10,000�� �ʰ��� ������ ID(emp_id), �̸�(emp_name)�� �޿�(salary)�� ��ȸ
select  emp_id, 
        emp_name,
        salary
from   emp
where  salary > 10000;

 
--EMP ���̺��� Ŀ�̼Ǻ���(comm_pct)�� 0.2~0.3 ������ ������ ID(emp_id), �̸�(emp_name), Ŀ�̼Ǻ���(comm_pct)�� ��ȸ.




--EMP ���̺��� Ŀ�̼��� �޴� ������ �� Ŀ�̼Ǻ���(comm_pct)�� 0.2~0.3 ���̰� �ƴ� ������ ID(emp_id), �̸�(emp_name), Ŀ�̼Ǻ���(comm_pct)�� ��ȸ.




--EMP ���̺��� ����(job)�� 'IT_PROG' �ų� 'ST_MAN' �� ������  ID(emp_id), �̸�(emp_name), ����(job)�� ��ȸ.




--EMP ���̺��� ����(job)�� 'IT_PROG' �� 'ST_MAN' �� �ƴ� ������  ID(emp_id), �̸�(emp_name), ����(job)�� ��ȸ.




--EMP ���̺��� ���� �̸�(emp_name)�� S�� �����ϴ� ������  ID(emp_id), �̸�(emp_name)




--EMP ���̺��� ���� �̸�(emp_name)�� S�� �������� �ʴ� ������  ID(emp_id), �̸�(emp_name)




--EMP ���̺��� ���� �̸�(emp_name)�� en���� ������ ������  ID(emp_id), �̸�(emp_name)�� ��ȸ




--EMP ���̺��� ���� �̸�(emp_name)�� �� ��° ���ڰ� ��e���� ��� ����� �̸��� ��ȸ




-- EMP ���̺��� ������ �̸��� '%' �� ���� ������ ID(emp_id), �����̸�(emp_name) ��ȸ




--EMP ���̺��� �μ���(dept_name)�� null�� ������ ID(emp_id), �̸�(emp_name), �μ���(dept_name)�� ��ȸ.




--�μ���(dept_name) �� NULL�� �ƴ� ������ ID(emp_id), �̸�(emp_name), �μ���(dept_name) ��ȸ




--TODO: EMP ���̺��� ����(job)�� 'IT_PROG'�� �������� ��� �÷��� �����͸� ��ȸ. 

select job 

from emp

where job <> 'IT_PROG';

--TODO: EMP ���̺��� ����(job)�� 'IT_PROG'�� �ƴ� �������� ��� �÷��� �����͸� ��ȸ. 

select job 

from emp

where job != 'IT_PROG';

--TODO: EMP ���̺��� �̸�(emp_name)�� 'Peter'�� �������� ��� �÷��� �����͸� ��ȸ

select emp_name 

from emp

where emp_name <> 'Peter';

--TODO: EMP ���̺��� �޿�(salary)�� $10,000 �̻��� ������ ID(emp_id), �̸�(emp_name)�� �޿�(salary)�� ��ȸ

select emp_name,
       emp_id,
       '$' ||salary "����"

from emp

where salary >= 10000;
--TODO: EMP ���̺��� �޿�(salary)�� $3,000 �̸��� ������ ID(emp_id), �̸�(emp_name)�� �޿�(salary)�� ��ȸ

select emp_name,
       emp_id,
       '$' ||salary "����"

from emp

where salary < 3000;

--TODO: EMP ���̺��� �޿�(salary)�� $3,000 ������ ������ ID(emp_id), �̸�(emp_name)�� �޿�(salary)�� ��ȸ

select emp_name,
       emp_id,
       '$' ||salary "����"

from emp

where salary <= 3000;

--TODO: �޿�(salary)�� $4,000���� $8,000 ���̿� ���Ե� �������� ID(emp_id), �̸�(emp_name)�� �޿�(salary)�� ��ȸ
select emp_name,
       emp_id,
       '$' ||salary "����"

from emp

where salary >= 4000 and salary<=10000;


--TODO: �޿�(salary)�� $4,000���� $8,000 ���̿� ���Ե��� �ʴ� ��� ��������  ID(emp_id), �̸�(emp_name), �޿�(salary)�� ǥ��
select emp_name,
       emp_id,
       '$' ||salary "����"

from emp

where not salary   >= 4000 and salary<=10000;


--TODO: EMP ���̺��� 2007�� ���� �Ի��� ��������  ID(emp_id), �̸�(emp_name), �Ի���(hire_date)�� ��ȸ.

select  emp_id,
        emp_name,
        hire_date

from emp

where   hire_date >= To_Date(20070101);

--TODO: EMP ���̺��� 2004�⿡ �Ի��� �������� ID(emp_id), �̸�(emp_name), �Ի���(hire_date)�� ��ȸ.

select  emp_id,
        emp_name,
        hire_date

from emp

where   hire_date >= To_Date(20040101) and hire_date <= To_Date(20041231);

--TODO: EMP ���̺��� 2005�� ~ 2007�� ���̿� �Ի�(hire_date)�� �������� ID(emp_id), �̸�(emp_name), ����(job), �Ի���(hire_date)�� ��ȸ.

select  emp_id,
        emp_name,
        hire_date

from emp

where   hire_date >= To_Date(20050101) and hire_date <= To_Date(20071231);

--TODO: EMP ���̺��� ������ ID(emp_id)�� 110, 120, 130 �� ������  ID(emp_id), �̸�(emp_name), ����(job)�� ��ȸ

select  emp_id,
        emp_name,
        job

from emp

where   emp_id = 110 or emp_id = 120 or emp_id = 130;


--TODO: EMP ���̺��� �μ�(dept_name)�� 'IT', 'Finance', 'Marketing' �� �������� ID(emp_id), �̸�(emp_name), �μ���(dept_name)�� ��ȸ.
select  emp_id,
        emp_name,
        job

from emp

where   emp_name <> 'IT' or emp_name <> 'Finance' or emp_name <> 'Marketing' ; 


--TODO: EMP ���̺��� 'Sales' �� 'IT', 'Shipping' �μ�(dept_name)�� �ƴ� �������� ID(emp_id), �̸�(emp_name), �μ���(dept_name)�� ��ȸ.

select  emp_id,
        emp_name,
        dept_name

from emp

where  dept_name Not IN('Sales','IT','Shipping');

--TODO: EMP ���̺��� �޿�(salary)�� 17,000, 9,000,  3,100 �� ������ ID(emp_id), �̸�(emp_name), ����(job), �޿�(salary)�� ��ȸ.

select  emp_id,
        emp_name,
        job,
        salary

from emp

where  salary  IN(17000,9000,3100);


--TODO EMP ���̺��� ����(job)�� 'SA'�� �� ������ ID(emp_id), �̸�(emp_name), ����(job)�� ��ȸ

select  emp_id,
        emp_name,
        job
    

from emp

where  job  LIKE '%SA%';


--TODO: EMP ���̺��� ����(job)�� 'MAN'�� ������ ������ ID(emp_id), �̸�(emp_name), ����(job)�� ��ȸ

select  emp_id,
        emp_name,
        job
    

from emp

where  job  LIKE '%MAN';


--TODO. EMP ���̺��� Ŀ�̼��� ����(comm_pct�� null��) ��� ������ ID(emp_id), �̸�(emp_name), �޿�(salary) �� Ŀ�̼Ǻ���(comm_pct)�� ��ȸ

    

--TODO: EMP ���̺��� Ŀ�̼��� �޴� ��� ������ ID(emp_id), �̸�(emp_name), �޿�(salary) �� Ŀ�̼Ǻ���(comm_pct)�� ��ȸ



--TODO: EMP ���̺��� ������ ID(mgr_id) ���� ������ ID(emp_id), �̸�(emp_name), ����(job), �ҼӺμ�(dept_name)�� ��ȸ

select  emp_id,
        emp_name,
        dept_name
    

from emp

where  mgr_id IS NULL;


--TODO : EMP ���̺��� ����(salary * 12) �� 200,000 �̻��� �������� ��� ������ ��ȸ.
select  * 
    

from emp

where  200000 >= salary*12;



/* *************************************
 WHERE ������ �������� ���
 AND OR
 
 �� and �� -> ��: ��ȸ ��� ��
 ���� or ���� -> ����: ��ȸ ��� ���� �ƴ�.
 
 ���� �켱���� : and > or
 
 where ����1 and ����2 or ����3
 1. ���� 1 and ����2
 2. 1��� or ����3
 
 or�� ���� �Ϸ��� where ����1 and (����2 or ����3)
 **************************************/
-- EMP ���̺��� ����(job)�� 'SA_REP' �̰� �޿�(salary)�� $9,000 �� ������ ������ ID(emp_id), �̸�(emp_name), ����(job), �޿�(salary)�� ��ȸ.




-- EMP ���̺��� ����(job)�� 'FI_ACCOUNT' �ų� �޿�(salary)�� $8,000 �̻����� ������ ID(emp_id), �̸�(emp_name), ����(job), �޿�(salary)�� ��ȸ.



--TODO: EMP ���̺��� �μ�(dept_name)�� 'Sales��'�� ����(job)�� 'SA_MAN' �̰� �޿��� $13,000 ������ 
--      ������ ID(emp_id), �̸�(emp_name), ����(job), �޿�(salary), �μ�(dept_name)�� ��ȸ

select  emp_id,
        emp_name,
        job,
        salary,
        dept_name
    
from emp

where  dept_name <> 'Sales' and job <> 'SA_MAN' and salary <= 13000



--TODO: EMP ���̺��� ����(job)�� 'MAN'�� ���� ������ �߿��� �μ�(dept_name)�� 'Shipping' �̰� 2005������ �Ի��� 
--      ��������  ID(emp_id), �̸�(emp_name), ����(job), �Ի���(hire_date), �μ�(dept_name)�� ��ȸ

select  emp_id,
        emp_name,
        job,
        salary,
        dept_name,
        hire_date
    
from emp

where  job Like 'MAN' AND dept_name <> 'Shipping' and hire_date >=  to_date(20050101);

--TODO: EMP ���̺��� �Ի�⵵�� 2004���� ������� �޿��� $20,000 �̻��� 
--      �������� ID(emp_id), �̸�(emp_name), �Ի���(hire_date), �޿�(salary)�� ��ȸ.



--TODO : EMP ���̺���, �μ��̸�(dept_name)��  'Executive'�� 'Shipping' �̸鼭 �޿�(salary)�� 6000 �̻��� ����� ��� ���� ��ȸ. 



--TODO: EMP ���̺��� ����(job)�� 'MAN'�� ���� ������ �߿��� �μ��̸�(dept_name)�� 'Marketing' �̰ų� 'Sales'�� 
--      ������ ID(emp_id), �̸�(emp_name), ����(job), �μ�(dept_name)�� ��ȸ




--TODO: EMP ���̺��� ����(job)�� 'MAN'�� ���� ������ �� �޿�(salary)�� $10,000 ������ �ų� 2008�� ���� �Ի��� 
--      ������ ID(emp_id), �̸�(emp_name), ����(job), �Ի���(hire_date), �޿�(salary)�� ��ȸ



/* *************************************
order by�� �̿��� ����
- select���� ���� �������� ���� ����.
- order by ���ı����÷� ���Ĺ�� [, ���ı����÷� ���Ĺ��,...]
- ���ı����÷�
	- �÷��̸�.
	- select���� ����� ����.
	- ��Ī�� ���� ��� ��Ī.
- ���Ĺ��
	- asc : �������� (�⺻-��������)
	- desc : ��������
- ���ڿ�: ���� < �빮�� < �ҹ��� < �ѱ�
- date : ���� < �̷�	

NULL ��
ASC : ������.  order by �÷��� asc nulls first
DESC : ó��.   order by �÷��� desc nulls last
-- nulls first, nulls last ==> ����Ŭ ����.

************************************* */

-- �������� ��ü ������ ���� ID(emp_id)�� ū ������� ������ ��ȸ



-- �������� id(emp_id), �̸�(emp_name), ����(job), �޿�(salary)�� 
-- ����(job) ������� (A -> Z) ��ȸ�ϰ� ����(job)�� ���� ��������  �޿�(salary)�� ���� ������� 2�� �����ؼ� ��ȸ.



--�μ����� �μ���(dept_name)�� ������������ ������ ��ȸ�Ͻÿ�.



--TODO: �޿�(salary)�� $5,000�� �Ѵ� ������ ID(emp_id), �̸�(emp_name), �޿�(salary)�� �޿��� ���� �������� ��ȸ



--TODO: �޿�(salary)�� $5,000���� $10,000 ���̿� ���Ե��� �ʴ� ��� ������  ID(emp_id), �̸�(emp_name), �޿�(salary)�� �̸�(emp_name)�� ������������ ����



--TODO: EMP ���̺��� ������ ID(emp_id), �̸�(emp_name), ����(job), �Ի���(hire_date)�� �Ի���(hire_date) ��(��������)���� ��ȸ.



--TODO: EMP ���̺��� ID(emp_id), �̸�(emp_name), �޿�(salary), �Ի���(hire_date)�� �޿�(salary) ������������ �����ϰ� �޿�(salary)�� ���� ���� �Ի���(hire_date)�� ������ ������ ����.


