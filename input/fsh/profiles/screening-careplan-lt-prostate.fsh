Profile: ScreeningCarePlanLtProstate
// TODO: Change Parent to ScreeningCarePlanLt after ig-lt-base is published with it
Parent: CarePlanLt
Id: screening-careplan-lt-prostate
Title: "CarePlan: Prostate Screening Programme (LT Prostate)"
Description: """
CarePlan tracking the ADPP (Early Diagnosis and Prevention Programme) cycle
for prostate cancer screening. Captures programme enrollment, current status,
scheduled activities (PSA testing, urologist consultations, mpMRI referrals),
and risk group assignment.

Used by the ESPBI IS subsystem to track participant lifecycle through the
screening programme workflow (steps T1–T29 in the operational model).
"""
* ^url = $screening-careplan-lt-prostate-url
* ^status = #active
* ^publisher = "HL7 Lithuania"
* status 1..1
* intent 1..1
* intent = #plan
* category 1..1
* category = $sct#444822002 "Screening for malignant neoplasm of prostate (procedure)"
* title 1..1
* subject 1..1
* subject only Reference(PatientLt)
* period 0..1
* period ^short = "Programme participation period (enrollment to exit/completion)"
* addresses 0..*
* addresses ^short = "Reason for screening (e.g. age-based eligibility, family history risk)"
* activity 0..*
* activity ^short = "Scheduled screening activities (PSA test, urologist consultation, mpMRI, biopsy)"
* note 0..*
* note ^short = "Programme notes, status changes, non-participation reasons"
