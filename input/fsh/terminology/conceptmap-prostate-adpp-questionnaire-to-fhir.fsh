Instance: conceptmap-prostate-adpp-questionnaire-to-fhir-lt-prostate
InstanceOf: ConceptMap
Usage: #definition
Title: "ConceptMap: ADPP Questionnaire → FHIR mapping"
Description: "Maps each **linkId** in **CodeSystem/prostate-adpp-questionnaire-item** to a **prostate-fhir-mapping-target** code. Use **target.comment** for implementation notes. **Source Questionnaire**: `https://hl7.lt/fhir/prostate/Questionnaire/prostate-adpp-primary-assessment`."
* url = "https://hl7.lt/fhir/prostate/ConceptMap/prostate-adpp-questionnaire-to-fhir"
* version = "0.1.0"
* name = "ProstateAdppQuestionnaireToFhir"
* title = "ADPP Questionnaire items to FHIR mapping"
* status = #draft
* experimental = true
* date = "2025-03-24"
* publisher = "HL7 Lithuania"
* description = "Maps ADPP primary assessment Questionnaire linkIds to LT Base / VitalSigns / Lifestyle / Lab patterns. Not a substitute for $extract or national transform logic."
* group.source = $prostate-adpp-questionnaire-item-cs-url
* group.target = $prostate-fhir-mapping-target-cs-url

* group.element[0].code = #assessment-datetime
* group.element[0].display = "Assessment date and time"
* group.element[0].target[0].code = #encounter-period
* group.element[0].target[0].display = "Encounter.period"
* group.element[0].target[0].relationship = #related-to
* group.element[0].target[0].comment = "Maps to EncounterLt.period (or effectiveDateTime on Observations created in this visit). Example: Encounter-encounter-prostate-diagnostic-example."

* group.element[1].code = #referral-reason
* group.element[1].display = "Reason for referral / programme entry"
* group.element[1].target[0].code = #servicerequest-reason
* group.element[1].target[0].display = "ServiceRequest.reasonCode"
* group.element[1].target[0].relationship = #related-to
* group.element[1].target[0].comment = "Populate ServiceRequestLt.reasonCode or Encounter.reasonCode. Example: ServiceRequest-servicerequest-pathology-prostate-order-example (LT Lab CI)."

* group.element[2].code = #psa-recorded
* group.element[2].display = "PSA measured at this visit (flag)"
* group.element[2].target[0].code = #observation-psa-serum
* group.element[2].target[0].display = "Observation: PSA LOINC 2857-1"
* group.element[2].target[0].relationship = #related-to
* group.element[2].target[0].comment = "Boolean flag; actual value is ObservationLt with LOINC 2857-1. Example: Observation-observation-prostate-psa-example."

* group.element[3].code = #dre-result
* group.element[3].display = "Digital rectal examination (summary)"
* group.element[3].target[0].code = #observation-dre-finding
* group.element[3].target[0].display = "Observation: DRE finding"
* group.element[3].target[0].relationship = #related-to
* group.element[3].target[0].comment = "No dedicated DRE profile in LT Prostate; use ObservationLt (exam) with SNOMED or national codes. National spreadsheets add texture options (e.g. 276385001 Soft prostate) — extend answerOption and map to valueCodeableConcept."

* group.element[4].code = #family-hx-prostate
* group.element[4].display = "Family history: prostate cancer"
* group.element[4].target[0].code = #family-member-history-cancer
* group.element[4].target[0].display = "FamilyMemberHistory"
* group.element[4].target[0].relationship = #related-to
* group.element[4].target[0].comment = "Use FamilyMemberHistory with SNOMED situation codes (e.g. 414205003) as in national form notes. LT Base FamilyMemberHistory if profiled."

* group.element[5].code = #family-hx-breast
* group.element[5].display = "Family history: breast cancer"
* group.element[5].target[0].code = #family-member-history-cancer
* group.element[5].target[0].relationship = #related-to
* group.element[5].target[0].comment = "Same as family-hx-prostate; different relationship code."

* group.element[6].code = #family-hx-ovarian
* group.element[6].display = "Family history: ovarian cancer"
* group.element[6].target[0].code = #family-member-history-cancer
* group.element[6].target[0].relationship = #related-to
* group.element[6].target[0].comment = "Same pattern as other family history items."

* group.element[7].code = #family-hx-colon
* group.element[7].display = "Family history: colorectal cancer"
* group.element[7].target[0].code = #family-member-history-cancer
* group.element[7].target[0].relationship = #related-to
* group.element[7].target[0].comment = "Same pattern as other family history items."

* group.element[8].code = #height-cm
* group.element[8].display = "Height (cm)"
* group.element[8].target[0].code = #observation-body-height
* group.element[8].target[0].relationship = #related-to
* group.element[8].target[0].comment = "LT VitalSigns body height Observation. CI: Observation-observation-body-height-example."

* group.element[9].code = #weight-kg
* group.element[9].display = "Weight (kg)"
* group.element[9].target[0].code = #observation-body-weight
* group.element[9].target[0].relationship = #related-to
* group.element[9].target[0].comment = "LT VitalSigns body weight Observation."

* group.element[10].code = #bmi-kg-m2
* group.element[10].display = "BMI (kg/m²)"
* group.element[10].target[0].code = #observation-bmi
* group.element[10].target[0].relationship = #related-to
* group.element[10].target[0].comment = "BMI Observation (LOINC 39156-5 or SNOMED 60621009). May be derived from height/weight."

* group.element[11].code = #first-psa-ngml
* group.element[11].display = "First PSA (ng/ml)"
* group.element[11].target[0].code = #observation-prior-psa
* group.element[11].target[0].relationship = #related-to
* group.element[11].target[0].comment = "ObservationLt PSA with effectiveDate aligned to first-psa-date."

* group.element[12].code = #first-psa-date
* group.element[12].display = "First PSA date"
* group.element[12].target[0].code = #observation-prior-psa
* group.element[12].target[0].relationship = #related-to
* group.element[12].target[0].comment = "Observation.effective for the first PSA Observation."

* group.element[13].code = #second-psa-ngml
* group.element[13].display = "Second PSA (ng/ml)"
* group.element[13].target[0].code = #observation-prior-psa
* group.element[13].target[0].relationship = #related-to
* group.element[13].target[0].comment = "Second PSA Observation instance with effectiveDate from second-psa-date."

* group.element[14].code = #second-psa-date
* group.element[14].display = "Second PSA date"
* group.element[14].target[0].code = #observation-prior-psa
* group.element[14].target[0].relationship = #related-to
* group.element[14].target[0].comment = "Observation.effective for the second PSA Observation."

* group.element[15].code = #prior-mpmri
* group.element[15].display = "Prior mpMRI documented"
* group.element[15].target[0].code = #observation-mpmri-history
* group.element[15].target[0].relationship = #related-to
* group.element[15].target[0].comment = "Procedure or ImagingStudy + DiagnosticReport summary; or Observation with history context. Link to PI-RADS via prior-mpmri-pirads."

* group.element[16].code = #prior-mpmri-pirads
* group.element[16].display = "Prior mpMRI PI-RADS category"
* group.element[16].target[0].code = #observation-mpmri-history
* group.element[16].target[0].relationship = #related-to
* group.element[16].target[0].comment = "Align with PIRADSAssessmentLtProstate or past report narrative; not a substitute for full mpMRI bundle."

* group.element[17].code = #prior-prostatectomy
* group.element[17].display = "Prior prostatectomy"
* group.element[17].target[0].code = #procedure-prior-prostate-surgery
* group.element[17].target[0].relationship = #related-to
* group.element[17].target[0].comment = "Procedure completed (ProcedureLt); national form also captures date — add Observation or Procedure.performedPeriod when available."

* group.element[18].code = #prior-prostate-radiation
* group.element[18].display = "Prior prostate radiotherapy"
* group.element[18].target[0].code = #procedure-prior-prostate-radiation
* group.element[18].target[0].relationship = #related-to
* group.element[18].target[0].comment = "Procedure or History of radiation therapy (429479009) as situation Observation."

* group.element[19].code = #anticoagulant-use
* group.element[19].display = "Anticoagulant use"
* group.element[19].target[0].code = #medicationstatement-anticoagulant
* group.element[19].target[0].relationship = #related-to
* group.element[19].target[0].comment = "MedicationStatement or MedicationRequest; not profiled in this IG."

* group.element[20].code = #complaints-anamnesis
* group.element[20].display = "Complaints, anamnesis"
* group.element[20].target[0].code = #clinical-impression-or-note
* group.element[20].target[0].relationship = #related-to
* group.element[20].target[0].comment = "Free text: Encounter.reasonCode text, ClinicalImpression.summary, or DocumentReference."

* group.element[21].code = #specialist-additional-info
* group.element[21].display = "Additional information for specialist"
* group.element[21].target[0].code = #clinical-impression-or-note
* group.element[21].target[0].relationship = #related-to
* group.element[21].target[0].comment = "Same as complaints-anamnesis; often copied to ServiceRequest.note or referral DocumentReference."
