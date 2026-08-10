SELECT
  visit_id,
  patient_id,
  d.diagnosis_code,
  visit_date
FROM healthcare_raw v
LEFT JOIN diagnosis_codes d ON d.raw_code = TRIM(v.raw_diagnosis_code)