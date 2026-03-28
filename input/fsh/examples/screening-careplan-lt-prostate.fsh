Instance: careplan-prostate-screening-example
InstanceOf: ScreeningCarePlanLtProstate
Usage: #example
Title: "CarePlan: Prostate screening programme (example)"
Description: "Example of an ADPP prostate cancer screening programme CarePlan for a 55-year-old male participant."
* status = #active
* intent = #plan
* category = $sct#444822002 "Screening for malignant neoplasm of prostate (procedure)"
* title = "Prostate Cancer Early Diagnosis Programme"
* subject = Reference(patient-male-example)
* period.start = "2025-01-15"
* note[0].text = "Patient enrolled in ADPP prostate screening programme. Standard risk group (age 50-69). Next PSA test scheduled."
