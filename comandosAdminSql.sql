sp_whoisactive -- ver quem está rodando consultas no SQL e travando o banco




-- VER JOBS RODANDO
  SELECT 
    A.JOB_ID, 
    C.NAME AS JOB_NAME, 
    E.NAME AS JOB_CATEGORY, 
    C.[ENABLED], 
    C.[DESCRIPTION], 
    A.START_EXECUTION_DATE, 
    A.LAST_EXECUTED_STEP_DATE, 
    A.NEXT_SCHEDULED_RUN_DATE, 
    CONVERT(VARCHAR, CONVERT(VARCHAR, DATEADD(SECOND, ( DATEDIFF(SECOND, A.START_EXECUTION_DATE, GETDATE()) % 86400 ), 0), 114)) AS TIME_ELAPSED, 
    ISNULL(A.LAST_EXECUTED_STEP_ID, 0) + 1 AS CURRENT_EXECUTED_STEP_ID, 
    D.STEP_NAME 

FROM 

    MSDB.DBO.SYSJOBACTIVITY                 A   WITH(NOLOCK) 
    LEFT JOIN MSDB.DBO.SYSJOBHISTORY        B   WITH(NOLOCK)    ON  A.JOB_HISTORY_ID = B.INSTANCE_ID 
    JOIN MSDB.DBO.SYSJOBS                   C   WITH(NOLOCK)    ON  A.JOB_ID = C.JOB_ID 
    JOIN MSDB.DBO.SYSJOBSTEPS               D   WITH(NOLOCK)    ON  A.JOB_ID = D.JOB_ID AND ISNULL(A.LAST_EXECUTED_STEP_ID, 0) + 1 = D.STEP_ID 
    JOIN MSDB.DBO.SYSCATEGORIES             E   WITH(NOLOCK)    ON  C.CATEGORY_ID = E.CATEGORY_ID 

WHERE 

    A.SESSION_ID = ( SELECT TOP 1 SESSION_ID FROM MSDB.DBO.SYSSESSIONS    WITH(NOLOCK) ORDER BY AGENT_START_DATE DESC ) 
    AND A.START_EXECUTION_DATE IS NOT NULL 
    AND A.STOP_EXECUTION_DATE IS NULL
--    and c.name like '%cubo%'
    ORDER BY C.NAME


-- achar procedures que tem determinadas tabela
/definir database/use fornecedores 
SELECT distinct B.name ,
case type when 'P' then 'Stored procedure'
when 'FN' then 'Function'
when 'TF' then 'Function'
when 'TR' then 'Trigger'
when 'V' then 'View'
else 'Outros Objetos'
end
FROM syscomments A (nolock)
JOIN sysobjects B (nolock) on A.Id = B.Id
WHERE A.Text like /nome da tabela a ser procurada/ '%tbl_email%' and type='p' --Objto a ser procurado
ORDER BY 2 DESC




  
