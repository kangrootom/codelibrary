-------------------------------------------
-- Export file for user TOM@XE           --
-- Created by tom on 2018/9/18, 13:27:09 --
-------------------------------------------

set define off
spool userobject.log

prompt
prompt Creating table ADMIN
prompt ====================
prompt
create table TOM.ADMIN
(
  aid   NUMBER(10) not null,
  aname VARCHAR2(64 CHAR) not null,
  apwd  VARCHAR2(64 CHAR) not null
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.ADMIN
  add primary key (AID)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BONUS
prompt ====================
prompt
create table TOM.BONUS
(
  ename VARCHAR2(10),
  job   VARCHAR2(9),
  sal   NUMBER,
  comm  NUMBER
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table CONTRACT_C
prompt =========================
prompt
create table TOM.CONTRACT_C
(
  contract_id     VARCHAR2(40) not null,
  offeror         VARCHAR2(200),
  contract_no     VARCHAR2(50),
  signing_date    TIMESTAMP(6),
  input_by        VARCHAR2(30),
  check_by        VARCHAR2(30),
  inspector       VARCHAR2(30),
  total_amount    NUMBER(10,2),
  import_num      INTEGER,
  crequest        VARCHAR2(2000),
  custom_name     VARCHAR2(200),
  delivery_period TIMESTAMP(6),
  ship_time       TIMESTAMP(6),
  trade_terms     VARCHAR2(30),
  remark          VARCHAR2(600),
  print_style     CHAR(1),
  old_state       INTEGER,
  state           INTEGER,
  out_state       INTEGER,
  create_by       VARCHAR2(40),
  create_dept     VARCHAR2(40),
  create_time     TIMESTAMP(6)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.CONTRACT_C
  add constraint PK_CONTRACT_C primary key (CONTRACT_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table CONTRACT_PRODUCT_C
prompt =================================
prompt
create table TOM.CONTRACT_PRODUCT_C
(
  contract_product_id VARCHAR2(40) not null,
  contract_id         VARCHAR2(40),
  factory_id          VARCHAR2(40),
  factory_name        VARCHAR2(50),
  product_no          VARCHAR2(50),
  product_image       VARCHAR2(200),
  product_desc        VARCHAR2(600),
  cnumber             INTEGER,
  out_number          INTEGER,
  loading_rate        VARCHAR2(10),
  box_num             INTEGER,
  packing_unit        VARCHAR2(10),
  price               NUMBER(10,2),
  amount              NUMBER(10,2),
  finished            INTEGER,
  exts                VARCHAR2(50),
  order_no            INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.CONTRACT_PRODUCT_C
  add constraint PK_CONTRACT_PRODUCT_C primary key (CONTRACT_PRODUCT_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DEPT
prompt ===================
prompt
create table TOM.DEPT
(
  deptno NUMBER(2) not null,
  dname  VARCHAR2(14),
  loc    VARCHAR2(13)
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.DEPT
  add constraint PK_DEPT primary key (DEPTNO)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EMP
prompt ==================
prompt
create table TOM.EMP
(
  empno    NUMBER(4) not null,
  ename    VARCHAR2(10),
  job      VARCHAR2(9),
  mgr      NUMBER(4),
  hiredate DATE,
  sal      NUMBER(7,2),
  comm     NUMBER(7,2),
  deptno   NUMBER(2)
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.EMP
  add constraint PK_EMP primary key (EMPNO)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EMPINFO
prompt ======================
prompt
create table TOM.EMPINFO
(
  fempno   VARCHAR2(10) not null,
  fempname VARCHAR2(20) not null,
  fage     NUMBER(2) not null,
  fsalary  NUMBER(10,2) not null
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.EMPINFO
  add primary key (FEMPNO)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EMPS
prompt ===================
prompt
create table TOM.EMPS
(
  eid   NUMBER(5) not null,
  ename VARCHAR2(20),
  esal  NUMBER(8,2),
  esex  VARCHAR2(2)
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.EMPS
  add primary key (EID)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EMP_BAK
prompt ======================
prompt
create table TOM.EMP_BAK
(
  empno    NUMBER(4) not null,
  ename    VARCHAR2(10),
  job      VARCHAR2(9),
  mgr      NUMBER(4),
  hiredate DATE,
  sal      NUMBER(7,2),
  comm     NUMBER(7,2),
  deptno   NUMBER(2)
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EXT_CPRODUCT_C
prompt =============================
prompt
create table TOM.EXT_CPRODUCT_C
(
  ext_cproduct_id     VARCHAR2(40) not null,
  contract_product_id VARCHAR2(40),
  factory_id          VARCHAR2(40),
  factory_name        VARCHAR2(50),
  ctype               INTEGER,
  product_no          VARCHAR2(50),
  product_image       VARCHAR2(200),
  product_desc        VARCHAR2(600),
  cnumber             INTEGER,
  packing_unit        VARCHAR2(10),
  price               NUMBER(10,2),
  amount              NUMBER(10,2),
  product_request     VARCHAR2(2000),
  order_no            INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.EXT_CPRODUCT_C
  add constraint PK_EXT_CPRODUCT_C primary key (EXT_CPRODUCT_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table FACTORY_C
prompt ========================
prompt
create table TOM.FACTORY_C
(
  factory_id   VARCHAR2(40) not null,
  full_name    VARCHAR2(200),
  factory_name VARCHAR2(50),
  contacts     VARCHAR2(30),
  phone        VARCHAR2(20),
  mobile       VARCHAR2(20),
  fax          VARCHAR2(20),
  cnote        VARCHAR2(2000),
  inspector    VARCHAR2(30),
  order_no     INTEGER,
  state        CHAR(1),
  create_by    VARCHAR2(40),
  create_dept  VARCHAR2(40),
  create_time  TIMESTAMP(6)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.FACTORY_C
  add constraint PK_FACTORY_C primary key (FACTORY_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table FRUIT
prompt ====================
prompt
create table TOM.FRUIT
(
  fid      NUMBER(10) not null,
  fname    VARCHAR2(64 CHAR) not null,
  fprice   FLOAT not null,
  faddress VARCHAR2(64 CHAR) not null,
  fimgsrc  VARCHAR2(64 CHAR)
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.FRUIT
  add primary key (FID)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table GAME
prompt ===================
prompt
create table TOM.GAME
(
  gid   INTEGER not null,
  gname VARCHAR2(200) not null,
  gdate DATE not null
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table LMS_ROLES
prompt ========================
prompt
create table TOM.LMS_ROLES
(
  roleid  NUMBER(19) not null,
  authors VARCHAR2(255),
  name    VARCHAR2(255)
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_ROLES
  add primary key (ROLEID)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table LMS_STAFFS
prompt =========================
prompt
create table TOM.LMS_STAFFS
(
  staffid        NUMBER(19) not null,
  contactaddress VARCHAR2(2000),
  crashtel       VARCHAR2(255),
  email          VARCHAR2(255),
  idcard         VARCHAR2(255),
  loginname      VARCHAR2(255),
  name           VARCHAR2(255),
  password       VARCHAR2(255),
  tel            VARCHAR2(255),
  roleid         NUMBER(19)
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_STAFFS
  add primary key (STAFFID)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_STAFFS
  add constraint FK20707A04FC6DD11 foreign key (ROLEID)
  references TOM.LMS_ROLES (ROLEID);

prompt
prompt Creating table LMS_PROJECTS
prompt ===========================
prompt
create table TOM.LMS_PROJECTS
(
  projectid   NUMBER(19) not null,
  enddate     DATE,
  name        VARCHAR2(255),
  planenddate DATE,
  remark      VARCHAR2(2000),
  startdate   DATE,
  managerid   NUMBER(19)
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_PROJECTS
  add primary key (PROJECTID)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_PROJECTS
  add constraint FK130F37473CBD4138 foreign key (MANAGERID)
  references TOM.LMS_STAFFS (STAFFID);

prompt
prompt Creating table LMS_SECTIONS
prompt ===========================
prompt
create table TOM.LMS_SECTIONS
(
  sectionid   NUMBER(19) not null,
  enddate     DATE,
  name        VARCHAR2(255),
  planenddate DATE,
  remark      VARCHAR2(2000),
  startdate   DATE,
  status      NUMBER(10),
  acceptorid  NUMBER(19),
  creatorid   NUMBER(19),
  managerid   NUMBER(19),
  projectid   NUMBER(19)
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_SECTIONS
  add primary key (SECTIONID)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_SECTIONS
  add constraint FK87167CFB3CBD4138 foreign key (MANAGERID)
  references TOM.LMS_STAFFS (STAFFID);
alter table TOM.LMS_SECTIONS
  add constraint FK87167CFB4166BD4B foreign key (PROJECTID)
  references TOM.LMS_PROJECTS (PROJECTID);
alter table TOM.LMS_SECTIONS
  add constraint FK87167CFB7CA88DF7 foreign key (CREATORID)
  references TOM.LMS_STAFFS (STAFFID);
alter table TOM.LMS_SECTIONS
  add constraint FK87167CFBFE37AF6 foreign key (ACCEPTORID)
  references TOM.LMS_STAFFS (STAFFID);

prompt
prompt Creating table LMS_TASKS
prompt ========================
prompt
create table TOM.LMS_TASKS
(
  taskid      NUMBER(19) not null,
  enddate     DATE,
  name        VARCHAR2(255),
  planenddate DATE,
  remark      VARCHAR2(2000),
  startdate   DATE,
  status      NUMBER(10),
  tasklevel   NUMBER(10),
  acceptorid  NUMBER(19),
  creatorid   NUMBER(19),
  managerid   NUMBER(19),
  parentid    NUMBER(19),
  sectionid   NUMBER(19)
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_TASKS
  add primary key (TASKID)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_TASKS
  add constraint FK109A97E13CBD4138 foreign key (MANAGERID)
  references TOM.LMS_STAFFS (STAFFID);
alter table TOM.LMS_TASKS
  add constraint FK109A97E17CA88DF7 foreign key (CREATORID)
  references TOM.LMS_STAFFS (STAFFID);
alter table TOM.LMS_TASKS
  add constraint FK109A97E1C24F73CB foreign key (SECTIONID)
  references TOM.LMS_SECTIONS (SECTIONID);
alter table TOM.LMS_TASKS
  add constraint FK109A97E1CD111516 foreign key (PARENTID)
  references TOM.LMS_TASKS (TASKID);
alter table TOM.LMS_TASKS
  add constraint FK109A97E1FE37AF6 foreign key (ACCEPTORID)
  references TOM.LMS_STAFFS (STAFFID);

prompt
prompt Creating table LMS_LOGS
prompt =======================
prompt
create table TOM.LMS_LOGS
(
  logid      NUMBER(19) not null,
  content    VARCHAR2(255),
  endtime    DATE,
  freetype   NUMBER(10),
  name       VARCHAR2(255),
  percentage VARCHAR2(255),
  starttime  DATE,
  type       NUMBER(10),
  managerid  NUMBER(19),
  taskid     NUMBER(19)
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_LOGS
  add primary key (LOGID)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_LOGS
  add constraint FK531A52FC3CBD4138 foreign key (MANAGERID)
  references TOM.LMS_STAFFS (STAFFID);
alter table TOM.LMS_LOGS
  add constraint FK531A52FC52847731 foreign key (TASKID)
  references TOM.LMS_TASKS (TASKID);

prompt
prompt Creating table LMS_WORKREPORTS
prompt ==============================
prompt
create table TOM.LMS_WORKREPORTS
(
  reportid     NUMBER(19) not null,
  bossevalu    VARCHAR2(2000),
  enddate      DATE,
  leaderremind NUMBER(10) default 0,
  name         VARCHAR2(255),
  reporttime   DATE,
  selfevalu    VARCHAR2(2000),
  staffremind  NUMBER(10) default 0,
  startdate    DATE,
  status       NUMBER(10),
  summary      VARCHAR2(2000),
  leaderid     NUMBER(19),
  reporterid   NUMBER(19)
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_WORKREPORTS
  add primary key (REPORTID)
  using index 
  tablespace DB1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.LMS_WORKREPORTS
  add constraint FK67DF8F81B6048F94 foreign key (LEADERID)
  references TOM.LMS_STAFFS (STAFFID);
alter table TOM.LMS_WORKREPORTS
  add constraint FK67DF8F81CC1F996C foreign key (REPORTERID)
  references TOM.LMS_STAFFS (STAFFID);

prompt
prompt Creating table SALGRADE
prompt =======================
prompt
create table TOM.SALGRADE
(
  grade NUMBER,
  losal NUMBER,
  hisal NUMBER
)
tablespace DB1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_CODE_B
prompt =========================
prompt
create table TOM.SYS_CODE_B
(
  sys_code_id  VARCHAR2(40) not null,
  name         VARCHAR2(100),
  parent_id    VARCHAR2(40),
  parent_name  VARCHAR2(100),
  layer_num    INTEGER,
  is_leaf      INTEGER,
  quote_num    INTEGER,
  cnote        VARCHAR2(100),
  ico          VARCHAR2(20),
  order_no     INTEGER,
  state        CHAR(1),
  created_by   VARCHAR2(40),
  created_time TIMESTAMP(6),
  updated_by   VARCHAR2(40),
  updated_time TIMESTAMP(6)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TOM.SYS_CODE_B
  add constraint PK_SYS_CODE_B primary key (SYS_CODE_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating sequence ADMIN_SEQ
prompt ===========================
prompt
create sequence TOM.ADMIN_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
nocache;

prompt
prompt Creating sequence FRUIT_SEQ
prompt ===========================
prompt
create sequence TOM.FRUIT_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
nocache;

prompt
prompt Creating sequence HIBERNATE_SEQUENCE
prompt ====================================
prompt
create sequence TOM.HIBERNATE_SEQUENCE
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence SE_1
prompt ======================
prompt
create sequence TOM.SE_1
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence S_LMS_LOGS
prompt ============================
prompt
create sequence TOM.S_LMS_LOGS
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence S_LMS_PROJECTS
prompt ================================
prompt
create sequence TOM.S_LMS_PROJECTS
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence S_LMS_ROLES
prompt =============================
prompt
create sequence TOM.S_LMS_ROLES
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence S_LMS_SECTIONS
prompt ================================
prompt
create sequence TOM.S_LMS_SECTIONS
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence S_LMS_STAFFS
prompt ==============================
prompt
create sequence TOM.S_LMS_STAFFS
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence S_LMS_TASKS
prompt =============================
prompt
create sequence TOM.S_LMS_TASKS
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_LMS_WORKREPORTS
prompt ===================================
prompt
create sequence TOM.S_LMS_WORKREPORTS
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence USER_SEQ
prompt ==========================
prompt
create sequence TOM.USER_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating view EMP_VIEW
prompt ======================
prompt
create or replace force view tom.emp_view as
select "EMPNO","ENAME","JOB","MGR","HIREDATE","SAL","COMM","DEPTNO" from emp;

prompt
prompt Creating function MY_SUM_FUN
prompt ============================
prompt
create or replace function tom.my_sum_fun(var1 in number,var2 in number)
as
return result number;
begin
result :=my_sum_fun(@a,@b);
dbms_output.put_line('和为'||result);
end;
/

prompt
prompt Creating procedure GET_RAX
prompt ==========================
prompt
create or replace procedure tom.get_rax(salary in number,rax out number)
as
    --需要交税的钱
    bal number;
begin
    bal := salary - 3500;
    if bal<=1500 then
       rax := bal * 0.03 - 0;
    elsif bal<=4500 then
       rax := bal * 0.1 - 105;
    elsif bal<=9000 then
       rax := bal * 0.2 - 555;
    elsif bal<=35000 then
       rax := bal * 0.25 - 1005;
    elsif bal<=55000 then
       rax := bal * 0.3 - 2755;
    elsif bal<=80000 then
       rax := bal * 0.35 - 5505;
    else
       rax := bal * 0.45 - 13505;
    end if;
end;
/

prompt
prompt Creating procedure PROC_HAHA
prompt ============================
prompt
create or replace procedure tom.proc_haha as
begin
	dbms_output.put_line('haha');
end;
/

prompt
prompt Creating procedure PROC_SUM
prompt ===========================
prompt
create or replace procedure tom.proc_sum as
	pename emp.ename%type;
	psal emp.sal%type;
begin
	select ename,sal into pename,psal from emp where empno = 7369;
	dbms_output.put_line('7369号员工的姓名是'||pename||'薪水是'||psal);
end;
/


spool off
