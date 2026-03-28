CodeSystem: ProstateFhirMappingTarget
Id: prostate-fhir-mapping-target
Title: "Prostate questionnaire → FHIR mapping target (illustrative)"
Description: "Target **codes** for **ConceptMap** entries: each code denotes a logical FHIR mapping destination (profile or element path). Used with **prostate-adpp-questionnaire-item** and **prostate-pathology-questionnaire-item** source codes."
* ^url = $prostate-fhir-mapping-target-cs-url
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "HL7 Lithuania"
// Encounter & request
* #encounter-period "Encounter.period"
* #encounter-reason "Encounter.reasonCode"
* #servicerequest-reason "ServiceRequest.reasonCode"
// Observations — laboratory & exam
* #observation-psa-serum "Observation: LOINC 2857-1 PSA (ObservationLt)"
* #observation-body-height "Observation: body height (LT VitalSigns patterns)"
* #observation-body-weight "Observation: body weight (LT VitalSigns patterns)"
* #observation-bmi "Observation: BMI (derived or LOINC)"
* #observation-dre-finding "Observation: digital rectal examination finding (ObservationLt, exam)"
* #observation-prior-psa "Observation: prior PSA value with effective time"
* #observation-mpmri-history "Observation or Procedure: prior mpMRI / PI-RADS summary"
// Family history
* #family-member-history-cancer "FamilyMemberHistory (Base patterns) for oncologic family history"
// Procedures & medications
* #procedure-prior-prostate-surgery "Procedure: prior prostate surgery"
* #procedure-prior-prostate-radiation "Procedure: prior prostate radiotherapy"
* #medicationstatement-anticoagulant "MedicationStatement: anticoagulant use"
// Narrative / assessment
* #clinical-impression-or-note "Encounter / DocumentReference / ClinicalImpression for free-text programme notes"
// Pathology — LT Lab
* #specimen-dimension-or-measurement "Specimen / Observation specimen measurement (TumorMeasurementLtLab, gross)"
* #specimen-adequacy-finding "Observation: specimen adequacy (LT Lab)"
* #observation-tumor-treatment-effect "Observation: tumor treatment effect (TumorObservableLtLab)"
* #condition-morphology-prostate "Condition / morphology (ProstateConditionLtLab, ICD-O)"
* #observation-gleason-isup-prostate "GleasonIsupObservationLtProstate + ProstateIsupGradeGroupVS"
* #observation-tumor-microscopic-idc "TumorObservableLtLab / morphology for IDC"
* #observation-tumor-microscopic-cribriform "TumorObservableLtLab / morphology for cribriform"
* #observation-pattern4-percent "Observation: Pattern 4 percent band (lab tumour measurement patterns)"
* #observation-tumor-burden-percent "Observation: tumour percentage in biopsy tissue"
* #observation-periprostatic-invasion "Observation: periprostatic fat / seminal vesicle invasion (LT Lab tumour findings)"
* #diagnosticreport-pathology-lab "PathologyReportLtLab"
* #composition-pathology-lab "PathologyCompositionLtLab"
