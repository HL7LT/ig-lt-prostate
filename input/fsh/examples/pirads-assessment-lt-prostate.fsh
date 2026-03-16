Instance: observation-prostate-pirads-lesion1-example2
InstanceOf: PIRADSAssessmentLtProstate
Title: "Observation: Prostate - PI-RADS Assessment (Lesion 1) (example)"
Usage: #example
* status = #final
* code = $sct#350501000146102 "Prostate Imaging-Reporting and Data System score"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2025-09-22T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 4
* bodySite = $sct#716906001 "Structure of posterolateral basal part of peripheral zone of right half prostate"
* method.text = "PI-RADS v2.1"
* note.text = "Lesion 1 in right posterolateral basal peripheral zone sector, high suspicion."
