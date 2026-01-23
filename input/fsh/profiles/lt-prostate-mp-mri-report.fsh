ValueSet: LTProstateMRITypeVS
Id: lt-prostate-mri-type-vs
Title: "Prostate MRI Type ValueSet"
Description: "Type of prostate MRI examination: bi-parametric or multi-parametric."
* include $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"
* include $sct#719178004 "Multiparametric magnetic resonance imaging of prostate (procedure)"

Profile: LTProstateMpMRIReport
Parent: ImDiagnosticReport
Id: lt-prostate-mpmri-report
Title: "Prostate mpMRI Diagnostic Report"
Description: """
DiagnosticReport representing a prostate MRI examination (bi-parametric or multi-parametric).

This resource acts as the clinical and temporal anchor for all imaging-based
assessments and measurements, including PI-RADS assessment, MRI sequence scores,
PI-QUAL image quality evaluation, prostate volume and PSAD.

The report itself contains the overall narrative conclusion, while detailed
findings are represented as linked Observation and BodyStructure resources.
"""
* subject 1..1
* subject only Reference(LTBasePatient)
* encounter 0..1
* encounter only Reference(LTBaseEncounter)
* code 1..1
* code.coding 1..1
* code.coding.system = "http://snomed.info/sct"
* code.coding.code 1..1
* code.coding.code from LTProstateMRITypeVS (required)
* effective[x] 1..1
* effective[x] only dateTime
* conclusion 1..1
// Inherited but documented for clarity
* performer 1..*
* performer[author] 1..*
* performer[author] only Reference(PractitionerRoleEu)
* composition 1..1
* composition only Reference($CompositionEuImagingUrl)
* result 0..*
* supportingInfo 0..*


Instance: example-mpmri-report
InstanceOf: LTProstateMpMRIReport
Usage: #example
Title: "Example Prostate mpMRI DiagnosticReport"
Description: "Example mpMRI report anchor. Structured results will be added as separate Observations and linked later."
* status = #final
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* performer[author] = Reference(example-radiologist-role)
* composition = Reference(example-mpmri-composition)
* effectiveDateTime = "2025-09-22T10:30:00Z"
// example of multi-parametric 
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #719178004
* code.coding.display = "Multiparametric magnetic resonance imaging of prostate (procedure)"
* conclusion = "Multiparametric prostate MRI performed. Peripheral zone focus with high suspicion. See linked observations."
// Imaging findings
* result[+] = Reference(example-pirads-lesion1)
* result[+] = Reference(example-dwi-score)
* result[+] = Reference(example-piqual)
// Clinical context
* supportingInfo[+].reference = Reference(Observation/prostate-psa-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#RSLT
* supportingInfo[+].reference = Reference(Observation/prostate-volume-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#RSLT
* supportingInfo[+].reference = Reference(Observation/prostate-psad-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#SCI



Instance: example-mri-procedure
InstanceOf: $ProcedureEuImagingUrl
Usage: #example
Title: "Example Prostate MRI Procedure"
* status = #completed
* code = $sct#719178004 "Multiparametric magnetic resonance imaging of prostate"
* subject = Reference(example-male-patient)

