---------------------------------------------------
-- Export file for user CZY_DEMOTEST@MYORCL      --
-- Created by incognitoER on 2018/7/13, 10:23:31 --
---------------------------------------------------

set define off
spool LOL DEMO.log

prompt
prompt Creating table LOL_CAMP
prompt =======================
prompt
create table CZY_DEMOTEST.LOL_CAMP
(
  t_campid NUMBER not null,
  t_league VARCHAR2(30) not null
)
tablespace CZY_DATA
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
comment on table CZY_DEMOTEST.LOL_CAMP
  is 'LOL League';
comment on column CZY_DEMOTEST.LOL_CAMP.t_campid
  is 'League ID';
comment on column CZY_DEMOTEST.LOL_CAMP.t_league
  is 'League Name';
alter table CZY_DEMOTEST.LOL_CAMP
  add constraint CAMP_ID_PK primary key (T_CAMPID)
  using index 
  tablespace CZY_DATA
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
prompt Creating table LOL_HERO
prompt =======================
prompt
create table CZY_DEMOTEST.LOL_HERO
(
  t_heroid   NUMBER,
  t_name     VARCHAR2(15),
  t_role     VARCHAR2(30),
  t_campcode NUMBER
)
tablespace CZY_DATA
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
comment on table CZY_DEMOTEST.LOL_HERO
  is 'LOL Hero Role';
comment on column CZY_DEMOTEST.LOL_HERO.t_heroid
  is 'HREO ID';
comment on column CZY_DEMOTEST.LOL_HERO.t_name
  is 'HREO NAME';
comment on column CZY_DEMOTEST.LOL_HERO.t_role
  is 'ROLE DESCRIPTION';
comment on column CZY_DEMOTEST.LOL_HERO.t_campcode
  is 'CAMP ID';
alter table CZY_DEMOTEST.LOL_HERO
  add constraint HERO_CAMPID_FK foreign key (T_CAMPCODE)
  references CZY_DEMOTEST.LOL_CAMP (T_CAMPID);

prompt
prompt Creating sequence LOL_SEQ
prompt =========================
prompt
create sequence CZY_DEMOTEST.LOL_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 12
increment by 1
cache 10;

prompt
prompt Creating trigger LOL_TR
prompt =======================
prompt
create or replace trigger czy_demotest.LOL_TR
    before insert on LOL_HERO
    for each row
  declare
    -- local variables here
  begin
    SELECT LOL_SEQ.NEXTVAL INTO :NEW.T_ID FROM DUAL;
  end LOL_TR;
/


spool off
