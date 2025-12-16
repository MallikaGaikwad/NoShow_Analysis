SELECT
    PatientID
    ,Age
    ,Gender
    ,Hipertension as Has_Hyptertension
    ,Diabetes as Has_Diabetes
    ,Alcoholism as Has_Alcoholism
    ,Handcap as Is_Handicap

INTO silver.int_patient_details 

FROM bronze.stg_noshows