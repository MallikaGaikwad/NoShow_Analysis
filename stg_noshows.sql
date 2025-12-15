SELECT
    TRY_CAST(REPLACE(PatientId,'.','') AS BIGINT) AS PatientID,
    TRY_CAST(REPLACE(AppointmentID,'.','') AS INT) AS AppointmentID,
    LTRIM(RTRIM(Gender)) AS Gender,
    TRY_CAST(ScheduledDay AS DATE) AS ScheduledDay,
    TRY_CAST(AppointmentDay AS DATE) AS AppointmentDate,
    CASE WHEN TRY_CAST(Age AS INT) BETWEEN 0 AND 110 THEN TRY_CAST(Age AS INT) ELSE NULL END AS Age,
    LTRIM(RTRIM(Neighbourhood)) AS Neighbourhood,
    CASE WHEN Scholarship = 'TRUE' THEN 1 ELSE 0 END AS Scholarship,
    CASE WHEN Hipertension = 'TRUE' THEN 1 ELSE 0 END AS Hypertension,
    CASE WHEN Diabetes = 'TRUE' THEN 1 ELSE 0 END AS Diabetes,
    CASE WHEN Alcoholism = 'TRUE' THEN 1 ELSE 0 END AS Alcoholism,
    CASE WHEN Handcap = 'TRUE' THEN 1 ELSE 0 END AS Handicap,
    CASE WHEN SMS_received = 'TRUE' THEN 1 ELSE 0 END AS SMS_received,
    CASE WHEN Showed_up = 'TRUE' THEN 1 ELSE 0 END AS Showed_up,
    TRY_CAST(Date_diff AS INT) AS Diff_Days

INTO bronze.stg_noshows

FROM
    dbo.raw_noshows