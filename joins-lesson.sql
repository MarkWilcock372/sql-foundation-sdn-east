SELECT
    h.Hospital AS HospitalFromLookup
    ,ps.Hospital AS HospitalOfThePatient
    ,h.HospitalType
    ,ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
FROM
    --    PatientStay ps LEFT JOIN DimHospitalBad h ON ps.Hospital = h.Hospital
    DimHospitalBad h FULL OUTER JOIN PatientStay ps ON ps.Hospital = h.Hospital



SELECT
    *
FROM
    DimHospitalBad

-- list patients in the PRUH admitted in March 2023

SELECT
    ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
    ,ps.Hospital
    ,ps.Ward
FROM
    PatientStay ps
WHERE
    ps.AdmittedDate >= '2024-03-01'
    AND ps.AdmittedDate < '2024-04-01';

