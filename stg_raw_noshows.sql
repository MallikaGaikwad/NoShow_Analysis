SELECT
    PatientId
    ,AppointmentID
    ,Gender 
    ,ScheduledDay
    ,AppointmentDay
    ,Age 
    ,Neighbourhood
    ,Scholarship
    ,Hipertension
    ,Diabetes
    ,Alcoholism
    ,Handcap
    ,SMS_received
    ,Showed_up
    ,Date_diff

INTO bronze.stg_raw_noshows

FROM dbo.raw_noshows


select * from bronze.stg_raw_noshows