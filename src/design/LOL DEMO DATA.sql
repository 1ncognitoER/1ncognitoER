prompt PL/SQL Developer import file
prompt Created on 2018��7��13�� by incognitoER
set feedback off
set define off
prompt Disabling triggers for LOL_CAMP...
alter table LOL_CAMP disable all triggers;
prompt Disabling triggers for LOL_HERO...
alter table LOL_HERO disable all triggers;
prompt Disabling foreign key constraints for LOL_HERO...
alter table LOL_HERO disable constraint HERO_CAMPID_FK;
prompt Deleting LOL_HERO...
delete from LOL_HERO;
commit;
prompt Deleting LOL_CAMP...
delete from LOL_CAMP;
commit;
prompt Loading LOL_CAMP...
insert into LOL_CAMP (t_campid, t_league)
values (1, 'Demasia');
insert into LOL_CAMP (t_campid, t_league)
values (2, 'Noxus');
insert into LOL_CAMP (t_campid, t_league)
values (3, 'Zuan');
insert into LOL_CAMP (t_campid, t_league)
values (4, 'Ionia');
insert into LOL_CAMP (t_campid, t_league)
values (5, 'Yodel');
commit;
prompt 5 records loaded
prompt Loading LOL_HERO...
insert into LOL_HERO (t_heroid, t_name, t_role, t_campcode)
values (1, 'Garen', '��������֮��', 1);
insert into LOL_HERO (t_heroid, t_name, t_role, t_campcode)
values (2, 'Vayne', '��ҹ����', 1);
insert into LOL_HERO (t_heroid, t_name, t_role, t_campcode)
values (3, 'Katarina', '����֮��', 2);
insert into LOL_HERO (t_heroid, t_name, t_role, t_campcode)
values (4, 'Cassiopeia', 'ħ��֮ӵ', 2);
insert into LOL_HERO (t_heroid, t_name, t_role, t_campcode)
values (5, 'Warwick', '��Ѫ����', 3);
insert into LOL_HERO (t_heroid, t_name, t_role, t_campcode)
values (6, 'Twitch', '����֮Դ', 3);
insert into LOL_HERO (t_heroid, t_name, t_role, t_campcode)
values (7, 'Yi', '�޼���ʥ', 4);
insert into LOL_HERO (t_heroid, t_name, t_role, t_campcode)
values (8, 'Soraka', '����֮��', 4);
insert into LOL_HERO (t_heroid, t_name, t_role, t_campcode)
values (9, 'Amumu', '��֮ľ����', 5);
insert into LOL_HERO (t_heroid, t_name, t_role, t_campcode)
values (10, 'Rumble', '��е����', 5);
insert into LOL_HERO (t_heroid, t_name, t_role, t_campcode)
values (11, 'Teemo', 'Ѹ�ݳ��', 5);
commit;
prompt 11 records loaded
prompt Enabling foreign key constraints for LOL_HERO...
alter table LOL_HERO enable constraint HERO_CAMPID_FK;
prompt Enabling triggers for LOL_CAMP...
alter table LOL_CAMP enable all triggers;
prompt Enabling triggers for LOL_HERO...
alter table LOL_HERO enable all triggers;
set feedback on
set define on
prompt Done.
