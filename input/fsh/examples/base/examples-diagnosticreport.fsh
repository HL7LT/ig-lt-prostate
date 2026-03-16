Instance: diagnosticreport-prostate-mpmri-example
InstanceOf: MpMRIReportLtProstate
Usage: #example
Title: "DiagnosticReport: Prostate mpMRI (example)"
Description: "Example mpMRI report anchor for the base composition. Structured results are linked as separate observations."
* status = #final
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* performer[author] = Reference(practitioner-role-radiologist-example)
* composition = Reference(composition-prostate-mpmri-example)
* effectiveDateTime = "2025-09-22T10:30:00Z"
* code = $sct#719178004 "Multiparametric magnetic resonance imaging of prostate (procedure)"
* conclusion = "Multiparametric prostate MRI performed. Peripheral zone focus with high suspicion. See linked observations."
* result[+] = Reference(observation-prostate-pirads-lesion1-example)
* result[+] = Reference(observation-prostate-dwi-score-lesion1-example2)
* result[+] = Reference(observation-prostate-piqual-example)
* result[+] = Reference(observation-prostate-precise-followup-example)
* supportingInfo[+].reference = Reference(prostate-psa-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#RSLT
* supportingInfo[+].reference = Reference(prostate-volume-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#RSLT
* supportingInfo[+].reference = Reference(prostate-psad-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#SCI
