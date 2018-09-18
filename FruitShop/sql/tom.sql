prompt PL/SQL Developer import file
prompt Created on 2018年9月18日 by tom
set feedback off
set define off
prompt Creating ADMIN...
create table ADMIN
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
alter table ADMIN
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

prompt Creating BONUS...
create table BONUS
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

prompt Creating CONTRACT_C...
create table CONTRACT_C
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
alter table CONTRACT_C
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

prompt Creating CONTRACT_PRODUCT_C...
create table CONTRACT_PRODUCT_C
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
alter table CONTRACT_PRODUCT_C
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

prompt Creating DEPT...
create table DEPT
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
alter table DEPT
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

prompt Creating EMP...
create table EMP
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
alter table EMP
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

prompt Creating EMPINFO...
create table EMPINFO
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
alter table EMPINFO
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

prompt Creating EMPS...
create table EMPS
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
alter table EMPS
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

prompt Creating EMP_BAK...
create table EMP_BAK
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

prompt Creating EXT_CPRODUCT_C...
create table EXT_CPRODUCT_C
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
alter table EXT_CPRODUCT_C
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

prompt Creating FACTORY_C...
create table FACTORY_C
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
alter table FACTORY_C
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

prompt Creating FRUIT...
create table FRUIT
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
alter table FRUIT
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

prompt Creating GAME...
create table GAME
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

prompt Creating LMS_ROLES...
create table LMS_ROLES
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
alter table LMS_ROLES
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

prompt Creating LMS_STAFFS...
create table LMS_STAFFS
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
alter table LMS_STAFFS
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
alter table LMS_STAFFS
  add constraint FK20707A04FC6DD11 foreign key (ROLEID)
  references LMS_ROLES (ROLEID);

prompt Creating LMS_PROJECTS...
create table LMS_PROJECTS
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
alter table LMS_PROJECTS
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
alter table LMS_PROJECTS
  add constraint FK130F37473CBD4138 foreign key (MANAGERID)
  references LMS_STAFFS (STAFFID);

prompt Creating LMS_SECTIONS...
create table LMS_SECTIONS
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
alter table LMS_SECTIONS
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
alter table LMS_SECTIONS
  add constraint FK87167CFB3CBD4138 foreign key (MANAGERID)
  references LMS_STAFFS (STAFFID);
alter table LMS_SECTIONS
  add constraint FK87167CFB4166BD4B foreign key (PROJECTID)
  references LMS_PROJECTS (PROJECTID);
alter table LMS_SECTIONS
  add constraint FK87167CFB7CA88DF7 foreign key (CREATORID)
  references LMS_STAFFS (STAFFID);
alter table LMS_SECTIONS
  add constraint FK87167CFBFE37AF6 foreign key (ACCEPTORID)
  references LMS_STAFFS (STAFFID);

prompt Creating LMS_TASKS...
create table LMS_TASKS
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
alter table LMS_TASKS
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
alter table LMS_TASKS
  add constraint FK109A97E13CBD4138 foreign key (MANAGERID)
  references LMS_STAFFS (STAFFID);
alter table LMS_TASKS
  add constraint FK109A97E17CA88DF7 foreign key (CREATORID)
  references LMS_STAFFS (STAFFID);
alter table LMS_TASKS
  add constraint FK109A97E1C24F73CB foreign key (SECTIONID)
  references LMS_SECTIONS (SECTIONID);
alter table LMS_TASKS
  add constraint FK109A97E1CD111516 foreign key (PARENTID)
  references LMS_TASKS (TASKID);
alter table LMS_TASKS
  add constraint FK109A97E1FE37AF6 foreign key (ACCEPTORID)
  references LMS_STAFFS (STAFFID);

prompt Creating LMS_LOGS...
create table LMS_LOGS
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
alter table LMS_LOGS
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
alter table LMS_LOGS
  add constraint FK531A52FC3CBD4138 foreign key (MANAGERID)
  references LMS_STAFFS (STAFFID);
alter table LMS_LOGS
  add constraint FK531A52FC52847731 foreign key (TASKID)
  references LMS_TASKS (TASKID);

prompt Creating LMS_WORKREPORTS...
create table LMS_WORKREPORTS
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
alter table LMS_WORKREPORTS
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
alter table LMS_WORKREPORTS
  add constraint FK67DF8F81B6048F94 foreign key (LEADERID)
  references LMS_STAFFS (STAFFID);
alter table LMS_WORKREPORTS
  add constraint FK67DF8F81CC1F996C foreign key (REPORTERID)
  references LMS_STAFFS (STAFFID);

prompt Creating SALGRADE...
create table SALGRADE
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

prompt Creating SYS_CODE_B...
create table SYS_CODE_B
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
alter table SYS_CODE_B
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

prompt Disabling triggers for ADMIN...
alter table ADMIN disable all triggers;
prompt Disabling triggers for BONUS...
alter table BONUS disable all triggers;
prompt Disabling triggers for CONTRACT_C...
alter table CONTRACT_C disable all triggers;
prompt Disabling triggers for CONTRACT_PRODUCT_C...
alter table CONTRACT_PRODUCT_C disable all triggers;
prompt Disabling triggers for DEPT...
alter table DEPT disable all triggers;
prompt Disabling triggers for EMP...
alter table EMP disable all triggers;
prompt Disabling triggers for EMPINFO...
alter table EMPINFO disable all triggers;
prompt Disabling triggers for EMPS...
alter table EMPS disable all triggers;
prompt Disabling triggers for EMP_BAK...
alter table EMP_BAK disable all triggers;
prompt Disabling triggers for EXT_CPRODUCT_C...
alter table EXT_CPRODUCT_C disable all triggers;
prompt Disabling triggers for FACTORY_C...
alter table FACTORY_C disable all triggers;
prompt Disabling triggers for FRUIT...
alter table FRUIT disable all triggers;
prompt Disabling triggers for GAME...
alter table GAME disable all triggers;
prompt Disabling triggers for LMS_ROLES...
alter table LMS_ROLES disable all triggers;
prompt Disabling triggers for LMS_STAFFS...
alter table LMS_STAFFS disable all triggers;
prompt Disabling triggers for LMS_PROJECTS...
alter table LMS_PROJECTS disable all triggers;
prompt Disabling triggers for LMS_SECTIONS...
alter table LMS_SECTIONS disable all triggers;
prompt Disabling triggers for LMS_TASKS...
alter table LMS_TASKS disable all triggers;
prompt Disabling triggers for LMS_LOGS...
alter table LMS_LOGS disable all triggers;
prompt Disabling triggers for LMS_WORKREPORTS...
alter table LMS_WORKREPORTS disable all triggers;
prompt Disabling triggers for SALGRADE...
alter table SALGRADE disable all triggers;
prompt Disabling triggers for SYS_CODE_B...
alter table SYS_CODE_B disable all triggers;
prompt Disabling foreign key constraints for LMS_STAFFS...
alter table LMS_STAFFS disable constraint FK20707A04FC6DD11;
prompt Disabling foreign key constraints for LMS_PROJECTS...
alter table LMS_PROJECTS disable constraint FK130F37473CBD4138;
prompt Disabling foreign key constraints for LMS_SECTIONS...
alter table LMS_SECTIONS disable constraint FK87167CFB3CBD4138;
alter table LMS_SECTIONS disable constraint FK87167CFB4166BD4B;
alter table LMS_SECTIONS disable constraint FK87167CFB7CA88DF7;
alter table LMS_SECTIONS disable constraint FK87167CFBFE37AF6;
prompt Disabling foreign key constraints for LMS_TASKS...
alter table LMS_TASKS disable constraint FK109A97E13CBD4138;
alter table LMS_TASKS disable constraint FK109A97E17CA88DF7;
alter table LMS_TASKS disable constraint FK109A97E1C24F73CB;
alter table LMS_TASKS disable constraint FK109A97E1CD111516;
alter table LMS_TASKS disable constraint FK109A97E1FE37AF6;
prompt Disabling foreign key constraints for LMS_LOGS...
alter table LMS_LOGS disable constraint FK531A52FC3CBD4138;
alter table LMS_LOGS disable constraint FK531A52FC52847731;
prompt Disabling foreign key constraints for LMS_WORKREPORTS...
alter table LMS_WORKREPORTS disable constraint FK67DF8F81B6048F94;
alter table LMS_WORKREPORTS disable constraint FK67DF8F81CC1F996C;
prompt Deleting SYS_CODE_B...
delete from SYS_CODE_B;
commit;
prompt Deleting SALGRADE...
delete from SALGRADE;
commit;
prompt Deleting LMS_WORKREPORTS...
delete from LMS_WORKREPORTS;
commit;
prompt Deleting LMS_LOGS...
delete from LMS_LOGS;
commit;
prompt Deleting LMS_TASKS...
delete from LMS_TASKS;
commit;
prompt Deleting LMS_SECTIONS...
delete from LMS_SECTIONS;
commit;
prompt Deleting LMS_PROJECTS...
delete from LMS_PROJECTS;
commit;
prompt Deleting LMS_STAFFS...
delete from LMS_STAFFS;
commit;
prompt Deleting LMS_ROLES...
delete from LMS_ROLES;
commit;
prompt Deleting GAME...
delete from GAME;
commit;
prompt Deleting FRUIT...
delete from FRUIT;
commit;
prompt Deleting FACTORY_C...
delete from FACTORY_C;
commit;
prompt Deleting EXT_CPRODUCT_C...
delete from EXT_CPRODUCT_C;
commit;
prompt Deleting EMP_BAK...
delete from EMP_BAK;
commit;
prompt Deleting EMPS...
delete from EMPS;
commit;
prompt Deleting EMPINFO...
delete from EMPINFO;
commit;
prompt Deleting EMP...
delete from EMP;
commit;
prompt Deleting DEPT...
delete from DEPT;
commit;
prompt Deleting CONTRACT_PRODUCT_C...
delete from CONTRACT_PRODUCT_C;
commit;
prompt Deleting CONTRACT_C...
delete from CONTRACT_C;
commit;
prompt Deleting BONUS...
delete from BONUS;
commit;
prompt Deleting ADMIN...
delete from ADMIN;
commit;
prompt Loading ADMIN...
insert into ADMIN (aid, aname, apwd)
values (4, 'lucy', '123456');
insert into ADMIN (aid, aname, apwd)
values (5, 'lucy', '123456');
insert into ADMIN (aid, aname, apwd)
values (9, 'tom', 'root');
insert into ADMIN (aid, aname, apwd)
values (13, 'ffdsfdsdfsdfs', '123456');
insert into ADMIN (aid, aname, apwd)
values (7, 'tom', 'root');
insert into ADMIN (aid, aname, apwd)
values (8, 'tom', 'root');
insert into ADMIN (aid, aname, apwd)
values (12, 'ffdsfdsdfsdfs', '123456');
insert into ADMIN (aid, aname, apwd)
values (14, 'fdsffdsdfafsddfsdsf', '123456');
insert into ADMIN (aid, aname, apwd)
values (6, 'lucy', '123456');
insert into ADMIN (aid, aname, apwd)
values (3, 'lucy', '123456');
insert into ADMIN (aid, aname, apwd)
values (1, 'jack', '123456');
insert into ADMIN (aid, aname, apwd)
values (2, 'tom', '123456');
commit;
prompt 12 records loaded
prompt Loading BONUS...
prompt Table is empty
prompt Loading CONTRACT_C...
insert into CONTRACT_C (contract_id, offeror, contract_no, signing_date, input_by, check_by, inspector, total_amount, import_num, crequest, custom_name, delivery_period, ship_time, trade_terms, remark, print_style, old_state, state, out_state, create_by, create_dept, create_time)
values ('22a2e6ab-9711-44ec-adc7-f3b43425765c', '杰信商贸有限公司', '2', to_timestamp('06-10-2014 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, 3, null, '1', to_timestamp('15-10-2014 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('05-11-2014 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, '2', null, 0, null, null, null, null);
insert into CONTRACT_C (contract_id, offeror, contract_no, signing_date, input_by, check_by, inspector, total_amount, import_num, crequest, custom_name, delivery_period, ship_time, trade_terms, remark, print_style, old_state, state, out_state, create_by, create_dept, create_time)
values ('a3a522f5-8748-4046-95d5-1bb21927bd56', '杰信商贸有限公司2', '12', to_timestamp('01-10-2014 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), '12', '12', '22', null, 2, '12', '12', to_timestamp('02-10-2014 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('03-10-2014 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), '12', '12', '1', null, 1, null, null, null, null);
commit;
prompt 2 records loaded
prompt Loading CONTRACT_PRODUCT_C...
insert into CONTRACT_PRODUCT_C (contract_product_id, contract_id, factory_id, factory_name, product_no, product_image, product_desc, cnumber, out_number, loading_rate, box_num, packing_unit, price, amount, finished, exts, order_no)
values ('00f4b4c0-7648-4dba-b17c-33a9a1064331', 'a3a522f5-8748-4046-95d5-1bb21927bd56', '17', '众鑫', '2', '1', '3', 301, null, '1/3', 101, '2', 3, 903, null, null, 4);
commit;
prompt 1 records loaded
prompt Loading DEPT...
insert into DEPT (deptno, dname, loc)
values (10, 'ACCOUNTING', 'NEW YORK');
insert into DEPT (deptno, dname, loc)
values (20, 'RESEARCH', 'DALLAS');
insert into DEPT (deptno, dname, loc)
values (30, 'SALES', 'CHICAGO');
insert into DEPT (deptno, dname, loc)
values (40, 'OPERATIONS', 'BOSTON');
commit;
prompt 4 records loaded
prompt Loading EMP...
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7369, 'SMITH', 'CLERK', 7902, to_date('17-12-1980', 'dd-mm-yyyy'), 800, null, 20);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7499, 'ALLEN', 'SALESMAN', 7698, to_date('20-02-1981', 'dd-mm-yyyy'), 1600, 300, 30);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7521, 'WARD', 'SALESMAN', 7698, to_date('22-02-1981', 'dd-mm-yyyy'), 1250, 500, 30);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7566, 'JONES', 'MANAGER', 7839, to_date('02-04-1981', 'dd-mm-yyyy'), 2975, null, 20);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7654, 'MARTIN', 'SALESMAN', 7698, to_date('28-09-1981', 'dd-mm-yyyy'), 1250, 1400, 30);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7698, 'BLAKE', 'MANAGER', 7839, to_date('01-05-1981', 'dd-mm-yyyy'), 2850, null, 30);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7782, 'CLARK', 'MANAGER', 7839, to_date('09-06-1981', 'dd-mm-yyyy'), 2450, null, 10);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7788, 'SCOTT', 'ANALYST', 7566, to_date('13-07-0087', 'dd-mm-yyyy'), 3000, null, 20);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7839, 'KING', 'PRESIDENT', null, to_date('17-11-1981', 'dd-mm-yyyy'), 5000, null, 10);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7844, 'TURNER', 'SALESMAN', 7698, to_date('08-09-1981', 'dd-mm-yyyy'), 1500, 0, 30);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7876, 'ADAMS', 'CLERK', 7788, to_date('13-07-0087', 'dd-mm-yyyy'), 1100, null, 20);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7900, 'JAMES', 'CLERK', 7698, to_date('03-12-1981', 'dd-mm-yyyy'), 950, null, 30);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7902, 'FORD', 'ANALYST', 7566, to_date('03-12-1981', 'dd-mm-yyyy'), 3000, null, 20);
insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7934, 'MILLER', 'CLERK', 7782, to_date('23-01-1982', 'dd-mm-yyyy'), 1300, null, 10);
commit;
prompt 14 records loaded
prompt Loading EMPINFO...
insert into EMPINFO (fempno, fempname, fage, fsalary)
values ('1', 'AA', 30, 7000);
insert into EMPINFO (fempno, fempname, fage, fsalary)
values ('2', 'BB', 31, 8000);
insert into EMPINFO (fempno, fempname, fage, fsalary)
values ('3', 'CC', 32, 9000);
insert into EMPINFO (fempno, fempname, fage, fsalary)
values ('4', 'DD', 33, 10000);
insert into EMPINFO (fempno, fempname, fage, fsalary)
values ('5', 'EE', 34, 11000);
insert into EMPINFO (fempno, fempname, fage, fsalary)
values ('6', 'FF', 35, 12000);
insert into EMPINFO (fempno, fempname, fage, fsalary)
values ('7', 'GG', 36, 13000);
insert into EMPINFO (fempno, fempname, fage, fsalary)
values ('8', 'FF', 37, 14000);
commit;
prompt 8 records loaded
prompt Loading EMPS...
prompt Table is empty
prompt Loading EMP_BAK...
prompt Table is empty
prompt Loading EXT_CPRODUCT_C...
prompt Table is empty
prompt Loading FACTORY_C...
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('1', '祁县宏艺厂', '宏艺', '杰诚', '0354-5041999', null, null, null, '高琴', null, '0', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('10', '祁县晶晨厂', '晶晨', '续贵', '0354-5271999', null, null, null, '吕波', null, '0', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('11', '祁县浩丰厂', '浩丰', '建生', '0354-524099', null, null, null, '吕波', null, '0', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('12', '平遥远江厂', '平遥远江', '宏远', null, '13935499967', null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('13', '平遥鸿艺厂', '平遥鸿艺', '雄飞', '0354-5940888', null, null, null, '吕波', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('15', '南皮开发玻璃制品厂', '南皮开发', '舒东', '0317-8863999', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('16', '陕西康达彩印厂', '康达', '袁喜', '029-84528015', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('17', '陕西众鑫印务包装有限公司', '众鑫', '赵毅', '029-84341858', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('18', '翰林彩印厂', '翰林', '孙财', '029-88917456', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('19', '祁县综艺玻璃花纸厂', '综艺花纸', '王棕', '0354-5278918', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('2', '祁县光华厂', '光华', '薛成', '0354-5298981', null, null, null, '吕波', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('20', '祁县喜福来玻璃加工厂', '喜福来', '王卫', '0354-5328850', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('21', '祁县美晶泡沫厂', '美晶', '范长', '0354-5071387', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('22', '祁县瑞成玻璃镀膜厂', '瑞成', '温明', null, '13834809374', null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('3', '祁县会龙厂', '会龙', '李伟', '0354-5248696', null, null, null, '李光', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4', '祁县精艺厂', '精艺', '闫强', '0354-5047289', null, null, null, '高琴', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a33d4f8b40133d99621cb0023', '祁县海洋厂', '升华', '刘生', '0354-5299987', null, null, null, '吕波', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a33d4f8b40133d9989f5e0024', '闻喜民鑫厂', '民鑫', '李民', '0359-7472727', null, null, null, '吕波', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a33de41d80133e982a18a001c', '太谷四通PVC厂', '太谷PVC', '张海', '0354-6226591', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a33ecdbf70133ee202e49000b', '祁县瑞成电镀厂', '瑞成电镀厂', '温民', '13835926900', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a34f93be50134f9df84470001', '神舟玻璃制品有限公司', '神舟厂', '申定', '0356-3961959', '13935672348', '0356-3991304', null, '李光', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a353b8d8e0135415bf0a90070', '陕西宇津进出口有限公司', '宇津水龙头厂', '任宁', '029-62990818', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a35e0895e0135ec7a4dbe0087', '西安方圆工贸有限公司', '西安方圆工贸', '许涛', '029-86539568', null, '029-86590565', null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a3632e86601363344d16d0001', '淄博雷波陶瓷花纸厂', '淄博花纸厂', '吴璇', '0533-5176946', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a371a8d7f01372a74451f0068', '山西大德成工贸有限公司', '铁架厂', '高辉', '0354-5288919', null, null, null, '李光', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a37583d45013758d152450038', '祁县顺驰厂', '顺驰', '王明', '0354-5109398', null, null, null, '李光', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a38024a04013803e3a8a2004b', '祁县欣欣泡沫有限公司', '祁县欣欣泡沫厂', '许杰', '0354-3939793', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a382b4fd401382b9aad2a0008', '祁县仲玉玻璃厂', '仲玉', '吕军', '0354-5018888', null, null, null, '李光', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a38736298013874c51a800036', '汇融玻璃有限公司', '展鹏厂', '厂长', '0354-5326986', '13834893800', '0354-5826197', null, '李光', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a389cc7b701389d1efd940001', '宇虹包装彩印厂', '宇虹包装厂', '翟帅', '0358-3099923', '19033470988', '0358-3098183', null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a39b2b37f0139b46268c40025', '祁县馨艺玻璃厂', '馨艺', '袁长', '0354-5041938', null, null, null, '李光', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a3aa9f950013ab0b6c98d0050', '祁县一先厂', '一先厂', '李刚', '0654-9018444', null, null, null, '李光', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a3aa9f950013ab97f64110053', '温县致远玻璃制品有限公司', '温县致远厂', '红升', '18936896666', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a3abe8f15013ac019a61f0031', '祁县喜福来电镀厂', '喜福来电镀厂', '王卫', '0154-5282888', null, null, null, '李光', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('4028817a3ae2ac42013ae3550357000d', '临潼华清蜡厂', '临潼华清蜡厂', '吴波', '13791903888', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('5', '祁县汇越厂', '汇越', '建忠', '0354-5019656', null, null, null, '吕波', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('6', '祁县泰宇厂', '泰宇', '立东', '0354-5299160', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('7', '祁县天顺厂', '天顺', '渠海', '0354-5299499', null, null, null, '李光', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('8', '祁县天诚厂', '天诚', '庞正', '0354-5299539', null, null, null, null, null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('9', '祁县华艺厂', '华艺', '史国', '0354-5041927', null, null, null, '高琴', null, '1', null, null, null);
insert into FACTORY_C (factory_id, full_name, factory_name, contacts, phone, mobile, fax, cnote, inspector, order_no, state, create_by, create_dept, create_time)
values ('ff808081301885760130189e47ca0013', '文水志远厂', '文水志远', '志远', '0358-3934083', null, null, null, '李光', null, '1', null, null, null);
commit;
prompt 41 records loaded
prompt Loading FRUIT...
prompt Table is empty
prompt Loading GAME...
insert into GAME (gid, gname, gdate)
values (1, 'volleyball', to_date('01-06-2017', 'dd-mm-yyyy'));
insert into GAME (gid, gname, gdate)
values (2, 'tennis', to_date('01-06-2016', 'dd-mm-yyyy'));
commit;
prompt 2 records loaded
prompt Loading LMS_ROLES...
insert into LMS_ROLES (roleid, authors, name)
values (2, 'A001;A002;A003;A004;A005', '超级管理员');
insert into LMS_ROLES (roleid, authors, name)
values (5, 'A005', '回报管理员');
insert into LMS_ROLES (roleid, authors, name)
values (3, 'A001', '项目管理员');
insert into LMS_ROLES (roleid, authors, name)
values (4, 'A002', '日志管理员');
commit;
prompt 4 records loaded
prompt Loading LMS_STAFFS...
insert into LMS_STAFFS (staffid, contactaddress, crashtel, email, idcard, loginname, name, password, tel, roleid)
values (2, 'US_LA', null, 'admin@us.com', null, 'admin', 'admin', 'xCz4etS03To=', '6666666666', 2);
insert into LMS_STAFFS (staffid, contactaddress, crashtel, email, idcard, loginname, name, password, tel, roleid)
values (3, 'CN_SHANGHAI', null, 'jim@163.com', null, 'jim', 'jim', 'hSb2DZFjFAORots8iBU7gQ==', '23812094821', 3);
insert into LMS_STAFFS (staffid, contactaddress, crashtel, email, idcard, loginname, name, password, tel, roleid)
values (4, 'CN_HONGKONG', null, 'tom@abc.com', null, 'tom', 'tom', 'hSb2DZFjFAORots8iBU7gQ==', '412421343124', 4);
insert into LMS_STAFFS (staffid, contactaddress, crashtel, email, idcard, loginname, name, password, tel, roleid)
values (5, 'CN_MACO', null, 'lucy@abc.com', null, 'lucy', 'lucy', 'hSb2DZFjFAORots8iBU7gQ==', '325324325', 5);
commit;
prompt 4 records loaded
prompt Loading LMS_PROJECTS...
insert into LMS_PROJECTS (projectid, enddate, name, planenddate, remark, startdate, managerid)
values (21, null, 'a', to_date('12-07-2018', 'dd-mm-yyyy'), 'fs', to_date('10-07-2018', 'dd-mm-yyyy'), 3);
insert into LMS_PROJECTS (projectid, enddate, name, planenddate, remark, startdate, managerid)
values (1, null, 'commodity_manage', to_date('21-05-2017', 'dd-mm-yyyy'), 'gafgd', to_date('01-05-2017', 'dd-mm-yyyy'), 3);
commit;
prompt 2 records loaded
prompt Loading LMS_SECTIONS...
insert into LMS_SECTIONS (sectionid, enddate, name, planenddate, remark, startdate, status, acceptorid, creatorid, managerid, projectid)
values (1, to_date('04-08-2018', 'dd-mm-yyyy'), 'start', to_date('04-08-2018', 'dd-mm-yyyy'), 'fdfdfdfd', to_date('02-08-2018', 'dd-mm-yyyy'), 0, 3, 2, 3, 21);
commit;
prompt 1 records loaded
prompt Loading LMS_TASKS...
prompt Table is empty
prompt Loading LMS_LOGS...
insert into LMS_LOGS (logid, content, endtime, freetype, name, percentage, starttime, type, managerid, taskid)
values (21, 'fsd', to_date('16-08-2018 00:10:00', 'dd-mm-yyyy hh24:mi:ss'), 2, null, '49 %', to_date('16-08-2018 00:05:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, null);
insert into LMS_LOGS (logid, content, endtime, freetype, name, percentage, starttime, type, managerid, taskid)
values (22, 'fdsfsdddddd', to_date('16-08-2018 00:05:00', 'dd-mm-yyyy hh24:mi:ss'), 2, null, '18 %', to_date('16-08-2018', 'dd-mm-yyyy'), 1, 2, null);
insert into LMS_LOGS (logid, content, endtime, freetype, name, percentage, starttime, type, managerid, taskid)
values (1, 'bcvdfgfafas', to_date('22-06-2018 00:05:00', 'dd-mm-yyyy hh24:mi:ss'), 2, null, '20 %', to_date('22-06-2018', 'dd-mm-yyyy'), 1, 2, null);
commit;
prompt 3 records loaded
prompt Loading LMS_WORKREPORTS...
insert into LMS_WORKREPORTS (reportid, bossevalu, enddate, leaderremind, name, reporttime, selfevalu, staffremind, startdate, status, summary, leaderid, reporterid)
values (1, '工作完成不好', to_date('03-08-2018', 'dd-mm-yyyy'), 123, '论文', to_date('01-08-2018', 'dd-mm-yyyy'), '完成了序言部分', 456, to_date('31-07-2018', 'dd-mm-yyyy'), 0, '论文需要参考大量文献，所以速度较慢', 2, 3);
insert into LMS_WORKREPORTS (reportid, bossevalu, enddate, leaderremind, name, reporttime, selfevalu, staffremind, startdate, status, summary, leaderid, reporterid)
values (2, '工作完成还行', to_date('03-08-2018', 'dd-mm-yyyy'), 1233, '论文', to_date('02-08-2018', 'dd-mm-yyyy'), '已完成了初稿，还有排版未做', 789, to_date('31-07-2018', 'dd-mm-yyyy'), 0, '进过日夜加班，完成了本书的所有内容部分', 2, 3);
insert into LMS_WORKREPORTS (reportid, bossevalu, enddate, leaderremind, name, reporttime, selfevalu, staffremind, startdate, status, summary, leaderid, reporterid)
values (3, '工作能力出众，建议重用', to_date('06-05-2016', 'dd-mm-yyyy'), 666666, '项目计划书', to_date('06-05-2016', 'dd-mm-yyyy'), '全部完成，中英都有', 666, to_date('05-05-2016', 'dd-mm-yyyy'), 1, '经过会议讨论，制定了本项目计划书蓝图', 2, 5);
commit;
prompt 3 records loaded
prompt Loading SALGRADE...
insert into SALGRADE (grade, losal, hisal)
values (1, 700, 1200);
insert into SALGRADE (grade, losal, hisal)
values (2, 1201, 1400);
insert into SALGRADE (grade, losal, hisal)
values (3, 1401, 2000);
insert into SALGRADE (grade, losal, hisal)
values (4, 2001, 3000);
insert into SALGRADE (grade, losal, hisal)
values (5, 3001, 9999);
commit;
prompt 5 records loaded
prompt Loading SYS_CODE_B...
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('01', '系统代码', '-1', 'root', 0, 0, 1, null, null, 0, '1', null, to_timestamp('11-03-2010 09:34:38.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('11-03-2010 09:34:38.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('0101', '人员级别', '01', '系统代码', 1, 0, 0, null, null, 1, null, '001', to_timestamp('16-07-2011 07:43:41.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010102', '管理员', '0101', '人员级别', 2, 1, 0, null, null, 1, null, '001', to_timestamp('16-07-2011 07:44:43.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010103', '总经理', '0101', '人员级别', 2, 1, 0, null, null, 2, null, '001', to_timestamp('16-07-2011 07:44:43.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010104', '部门经理', '0101', '人员级别', 2, 1, 0, null, null, 3, null, '001', to_timestamp('16-07-2011 07:44:43.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), '001', to_timestamp('16-07-2011 07:44:59.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010105', '组长', '0101', '人员级别', 2, 1, 0, null, null, 4, null, '001', to_timestamp('16-07-2011 07:44:43.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010106', '员工', '0101', '人员级别', 2, 1, 0, null, null, 5, null, '001', to_timestamp('16-07-2011 07:44:43.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('0102', '栏目', '01', '系统代码', 1, 0, 0, null, null, 2, null, '001', to_timestamp('05-08-2011 15:21:43.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010202', '新闻报道', '0102', '栏目', 2, 1, 0, null, null, 1, null, '001', to_timestamp('05-08-2011 15:24:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010203', '通知公告', '0102', '栏目', 2, 1, 0, null, null, 2, null, '001', to_timestamp('05-08-2011 15:24:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010204', '公司制度', '0102', '栏目', 2, 1, 0, null, null, 3, null, '001', to_timestamp('05-08-2011 15:24:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010205', '行业报道', '0102', '栏目', 2, 1, 0, null, null, 4, null, '001', to_timestamp('05-08-2011 15:24:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010206', '大事记', '0102', '栏目', 2, 1, 0, null, null, 5, null, '001', to_timestamp('05-08-2011 15:24:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('0103', '厂家类型', '01', '系统代码', 1, 0, 1, null, null, 3, null, '001', to_timestamp('05-08-2011 15:21:43.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), '001', to_timestamp('04-10-2011 08:13:04.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010302', '玻璃', '0103', '厂家类型', 2, 1, 1, null, null, 1, null, '001', to_timestamp('18-08-2011 16:10:22.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), '001', to_timestamp('04-10-2011 08:14:20.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010303', '彩盒', '0103', '厂家类型', 2, 1, 1, null, null, 2, null, '001', to_timestamp('18-08-2011 16:10:22.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), '001', to_timestamp('04-10-2011 08:14:20.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010304', 'PVC', '0103', '厂家类型', 2, 1, 1, null, null, 3, null, '001', to_timestamp('20-01-2012 15:16:07.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010305', '花纸', '0103', '厂家类型', 2, 1, 1, null, null, 4, null, '001', to_timestamp('20-01-2012 15:16:07.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010306', '保丽龙', '0103', '厂家类型', 2, 1, 1, null, null, 5, null, '001', to_timestamp('20-01-2012 15:16:07.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010307', '电镀', '0103', '厂家类型', 2, 1, 1, null, null, 6, null, '001', to_timestamp('20-01-2012 15:16:07.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010308', '水龙头', '0103', '厂家类型', 2, 1, 1, null, null, 7, null, '001', to_timestamp('20-01-2012 15:16:07.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010309', '蜡', '0103', '厂家类型', 2, 1, 1, null, null, 8, null, '001', to_timestamp('09-11-2012 11:59:26.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('0104', '附件类型', '01', '系统代码', 1, 0, 1, null, null, 4, null, '001', to_timestamp('04-10-2011 08:13:04.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010402', '彩盒', '0104', '附件类型', 2, 1, 1, null, null, 1, '1', '001', to_timestamp('04-10-2011 08:14:10.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010403', '花纸', '0104', '附件类型', 2, 1, 1, null, null, 2, '1', '001', to_timestamp('04-10-2011 08:14:10.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010404', '保丽龙', '0104', '附件类型', 2, 1, 1, null, null, 3, '1', '001', to_timestamp('04-10-2011 08:14:10.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010405', '电镀', '0104', '附件类型', 2, 1, 1, null, null, 4, '1', '001', to_timestamp('04-10-2011 08:14:11.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('26-11-2011 13:08:59.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010407', 'PVC', '0104', '附件类型', 2, 1, 0, null, null, 6, '1', '001', to_timestamp('06-12-2011 12:54:52.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010408', '喷头', '0104', '附件类型', 2, 1, 0, null, null, 7, '1', '001', to_timestamp('06-12-2011 12:54:52.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('010409', '不锈钢勺子', '0104', '附件类型', 2, 1, 0, null, null, 8, '1', '001', to_timestamp('01-04-2012 14:24:24.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-04-2012 14:24:24.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('a', '系统代码', '-1', 'root', 0, 0, 1, null, null, 0, '1', null, to_timestamp('11-03-2010 09:34:38.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('11-03-2010 09:34:38.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into SYS_CODE_B (sys_code_id, name, parent_id, parent_name, layer_num, is_leaf, quote_num, cnote, ico, order_no, state, created_by, created_time, updated_by, updated_time)
values ('b', '人员级别', '01', '系统代码', 1, 0, 0, null, null, 1, null, '001', to_timestamp('16-07-2011 07:43:41.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null);
commit;
prompt 32 records loaded
prompt Enabling foreign key constraints for LMS_STAFFS...
alter table LMS_STAFFS enable constraint FK20707A04FC6DD11;
prompt Enabling foreign key constraints for LMS_PROJECTS...
alter table LMS_PROJECTS enable constraint FK130F37473CBD4138;
prompt Enabling foreign key constraints for LMS_SECTIONS...
alter table LMS_SECTIONS enable constraint FK87167CFB3CBD4138;
alter table LMS_SECTIONS enable constraint FK87167CFB4166BD4B;
alter table LMS_SECTIONS enable constraint FK87167CFB7CA88DF7;
alter table LMS_SECTIONS enable constraint FK87167CFBFE37AF6;
prompt Enabling foreign key constraints for LMS_TASKS...
alter table LMS_TASKS enable constraint FK109A97E13CBD4138;
alter table LMS_TASKS enable constraint FK109A97E17CA88DF7;
alter table LMS_TASKS enable constraint FK109A97E1C24F73CB;
alter table LMS_TASKS enable constraint FK109A97E1CD111516;
alter table LMS_TASKS enable constraint FK109A97E1FE37AF6;
prompt Enabling foreign key constraints for LMS_LOGS...
alter table LMS_LOGS enable constraint FK531A52FC3CBD4138;
alter table LMS_LOGS enable constraint FK531A52FC52847731;
prompt Enabling foreign key constraints for LMS_WORKREPORTS...
alter table LMS_WORKREPORTS enable constraint FK67DF8F81B6048F94;
alter table LMS_WORKREPORTS enable constraint FK67DF8F81CC1F996C;
prompt Enabling triggers for ADMIN...
alter table ADMIN enable all triggers;
prompt Enabling triggers for BONUS...
alter table BONUS enable all triggers;
prompt Enabling triggers for CONTRACT_C...
alter table CONTRACT_C enable all triggers;
prompt Enabling triggers for CONTRACT_PRODUCT_C...
alter table CONTRACT_PRODUCT_C enable all triggers;
prompt Enabling triggers for DEPT...
alter table DEPT enable all triggers;
prompt Enabling triggers for EMP...
alter table EMP enable all triggers;
prompt Enabling triggers for EMPINFO...
alter table EMPINFO enable all triggers;
prompt Enabling triggers for EMPS...
alter table EMPS enable all triggers;
prompt Enabling triggers for EMP_BAK...
alter table EMP_BAK enable all triggers;
prompt Enabling triggers for EXT_CPRODUCT_C...
alter table EXT_CPRODUCT_C enable all triggers;
prompt Enabling triggers for FACTORY_C...
alter table FACTORY_C enable all triggers;
prompt Enabling triggers for FRUIT...
alter table FRUIT enable all triggers;
prompt Enabling triggers for GAME...
alter table GAME enable all triggers;
prompt Enabling triggers for LMS_ROLES...
alter table LMS_ROLES enable all triggers;
prompt Enabling triggers for LMS_STAFFS...
alter table LMS_STAFFS enable all triggers;
prompt Enabling triggers for LMS_PROJECTS...
alter table LMS_PROJECTS enable all triggers;
prompt Enabling triggers for LMS_SECTIONS...
alter table LMS_SECTIONS enable all triggers;
prompt Enabling triggers for LMS_TASKS...
alter table LMS_TASKS enable all triggers;
prompt Enabling triggers for LMS_LOGS...
alter table LMS_LOGS enable all triggers;
prompt Enabling triggers for LMS_WORKREPORTS...
alter table LMS_WORKREPORTS enable all triggers;
prompt Enabling triggers for SALGRADE...
alter table SALGRADE enable all triggers;
prompt Enabling triggers for SYS_CODE_B...
alter table SYS_CODE_B enable all triggers;
set feedback on
set define on
prompt Done.
