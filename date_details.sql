SELECT
    PatientID
    ,AppointmentID
    ,ScheduledDate
    ,AppointmentDate
    ,Diff_Days

INTO gold.date_details

FROM silver.int_noshows