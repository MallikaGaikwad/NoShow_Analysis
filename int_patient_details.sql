SELECT
    PatientID
    ,Age
    ,Gender
    ,Hypertension as Has_Hyptertension
    ,Diabetes as Has_Diabetes
    ,Alcoholism as Has_Alcoholism
    ,Handicap as Is_Handicap

FROM bronze.stg_noshows


select * from bronze.stg_noshows