SELECT
    PatientID
    ,Neighbourhood

INTO silver.int_site_details

FROM bronze.stg_noshows
