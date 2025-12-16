SELECT 
    PatientID
    ,AppointmentID
    ,ScheduledDay
    ,AppointmentDate
    ,Diff_Days

INTO silver.int_date_details

FROM bronze.stg_noshows