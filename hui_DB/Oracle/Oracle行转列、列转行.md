# 评分等级
```sql

    select a.voteUserId, a.voteUser,
           sum(decode(sign(a.caseId - 89), 1, a.caseNum, 0)) as case1, // 优秀
           sum(decode(sign(a.caseId - 89), 1, 0, decode(sign(75 - a.caseId), 1, 0, a.caseNum))) as case2, // 良好
           sum(decode(sign(a.caseId - 74), 1, 0, decode(sign(60 - a.caseId), 1, 0, a.caseNum))) as case3, // 合格
           sum(decode(sign(60 - a.caseId), 1, a.caseNum, 0)) as case4, // 不及格
           sum(a.caseNum) caseNum,
           sum(a.caseSum) caseSum,
           AVG(a.caseAvg) caseAvg
      from (select voteUserId, voteUser, caseId, count(caseId) caseNum, sum(caseId) caseSum, AVG(caseId) caseAvg
              from sys_vote_reply
             where voteId = #{voteId}
             group by voteUserId, voteUser, caseId) a
     group by a.voteUserId, a.voteUser
     order by a.voteUserId

```

# 图表列转行SQL语句

```sql

create or replace view view_szwsj_data_value_2 as
select substr(MANAGEUNIT,0,6) as MANAGEUNIT,SCSJ,sum(SUM_HIS_CY_BRXX) data_value,'SUM_HIS_CY_BRXX' data_name from SZWSJ_DATA_STATISTICS group by substr(MANAGEUNIT,0,6),scsj
UNION ALL
select substr(MANAGEUNIT,0,6) as MANAGEUNIT,SCSJ,sum(SUM_HIS_MZ_CFZB) data_value,'SUM_HIS_MZ_CFZB' data_name from SZWSJ_DATA_STATISTICS group by substr(MANAGEUNIT,0,6),scsj
UNION ALL
select substr(MANAGEUNIT,0,6) as MANAGEUNIT,SCSJ,sum(SUM_HIS_MZ_FLCF_ZSTJ) data_value,'SUM_HIS_MZ_FLCF_ZSTJ' data_name from SZWSJ_DATA_STATISTICS group by substr(MANAGEUNIT,0,6),scsj;
order by MANAGEUNIT,JGMC,SCSJ,DATA_NAME;

```