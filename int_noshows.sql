SELECT
    TRY_CAST(REPLACE(PatientId,'.','') AS BIGINT) as PatientID
    ,TRY_CAST(REPLACE(AppointmentID,'.','') AS INT) as AppointmentID
    ,LTRIM(RTRIM(Gender)) as Gender
    ,TRY_CAST(ScheduledDay AS DATE) as ScheduledDate
    ,TRY_CAST(AppointmentDay AS DATE) as AppointmentDate
    ,CASE WHEN TRY_CAST(Age AS INT) BETWEEN 0 AND 110 THEN TRY_CAST(Age AS INT) ELSE NULL END as Age
    ,LTRIM(RTRIM(Neighbourhood)) as Neighbourhood
    ,CASE WHEN Scholarship = 'TRUE' THEN 1 ELSE 0 END as Has_Scholarship
    ,CASE WHEN Hipertension = 'TRUE' THEN 1 ELSE 0 END as Has_Hypertension
    ,CASE WHEN Diabetes = 'TRUE' THEN 1 ELSE 0 END as Has_Diabetes
    ,CASE WHEN Alcoholism = 'TRUE' THEN 1 ELSE 0 END as Has_Alcoholism
    ,CASE WHEN Handcap = 'TRUE' THEN 1 ELSE 0 END as Is_Handicap
    ,CASE WHEN SMS_received = 'TRUE' THEN 1 ELSE 0 END as SMS_received
    ,CASE WHEN Showed_up = 'TRUE' THEN 1 ELSE 0 END as Showed_Up
    ,TRY_CAST(Date_diff AS INT) AS Diff_Days

INTO silver.int_noshows

FROM bronze.stg_raw_noshows


select * from silver.int_noshows