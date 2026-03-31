Instance: conceptmap-prostate-pathology-questionnaire-to-fhir-lt-prostate
InstanceOf: ConceptMap
Usage: #definition
Title: "ConceptMap: Prostate pathology Questionnaire → FHIR mapping"
Description: "Maps each **linkId** in **CodeSystem/prostate-pathology-questionnaire-item** to a **prostate-fhir-mapping-target** code. **Source Questionnaire**: `https://hl7.lt/fhir/prostate/Questionnaire/prostate-pathology-espbi`."
* url = "https://hl7.lt/fhir/prostate/ConceptMap/prostate-pathology-questionnaire-to-fhir"
* version = "0.1.0"
* name = "ProstatePathologyQuestionnaireToFhir"
* title = "Prostate pathology Questionnaire items to FHIR mapping"
* status = #draft
* experimental = true
* date = "2025-03-24"
* publisher = "HL7 Lithuania"
* description = "Maps dr-prostate-aligned pathology Questionnaire linkIds to LT Lab and LT Prostate Gleason/ISUP patterns."
* group.source = $prostate-pathology-questionnaire-item-cs-url
* group.target = $prostate-fhir-mapping-target-cs-url

* group.element[0].code = #bioptate-length-mm
* group.element[0].display = "Bioptate length (mm)"
* group.element[0].target[0].code = #specimen-dimension-or-measurement
* group.element[0].target[0].relationship = #related-to
* group.element[0].target[0].comment = "Specimen dimension or Observation-observation-specimen-measurement-example (LT Lab)."

* group.element[1].code = #specimen-quality
* group.element[1].display = "Quality of materials"
* group.element[1].target[0].code = #specimen-adequacy-finding
* group.element[1].target[0].relationship = #related-to
* group.element[1].target[0].comment = "Observation-observation-specimen-adequacy-example (LT Lab); map answerCoding to SNOMED finding codes from national spec."

* group.element[2].code = #treatment-effect
* group.element[2].display = "Treatment effect on tumour"
* group.element[2].target[0].code = #observation-tumor-treatment-effect
* group.element[2].target[0].relationship = #related-to
* group.element[2].target[0].comment = "TumorObservableLtLab or narrative in DiagnosticReport; map radiotherapy/hormone SNOMED from spreadsheet."

* group.element[3].code = #histological-type
* group.element[3].display = "Primary histological type"
* group.element[3].target[0].code = #condition-morphology-prostate
* group.element[3].target[0].relationship = #related-to
* group.element[3].target[0].comment = "Condition.code / morphology; Condition-condition-prostate-cancer-example (LT Lab) for integrated staging."

* group.element[4].code = #histological-comment
* group.element[4].display = "Histological type comment"
* group.element[4].target[0].code = #condition-morphology-prostate
* group.element[4].target[0].relationship = #related-to
* group.element[4].target[0].comment = "Condition.note or Observation.note; complements histological-type."

* group.element[5].code = #isup-grade-group
* group.element[5].display = "ISUP grade group"
* group.element[5].target[0].code = #observation-gleason-isup-prostate
* group.element[5].target[0].relationship = #related-to
* group.element[5].target[0].comment = "GleasonIsupObservationLtProstate + ValueSet prostate-isup-grade-group. Example: Observation-observation-prostate-gleason-gradegroup-example."

* group.element[6].code = #idc-status
* group.element[6].display = "Intraductal carcinoma (IDC)"
* group.element[6].target[0].code = #observation-tumor-microscopic-idc
* group.element[6].target[0].relationship = #related-to
* group.element[6].target[0].comment = "TumorObservableLtLab / morphology Observation; national form has additional IDC sub-questions."

* group.element[7].code = #cribriform-status
* group.element[7].display = "Cribriform glands"
* group.element[7].target[0].code = #observation-tumor-microscopic-cribriform
* group.element[7].target[0].relationship = #related-to
* group.element[7].target[0].comment = "TumorObservableLtLab or structured finding Observation."

* group.element[8].code = #pattern4-pct-band
* group.element[8].display = "Pattern 4 quantity (percent band)"
* group.element[8].target[0].code = #observation-pattern4-percent
* group.element[8].target[0].relationship = #related-to
* group.element[8].target[0].comment = "TumorMeasurementLtLab or lab tumour Observation; dr-prostate has finer bands than this Questionnaire."

* group.element[9].code = #tumor-percent-in-biopsy
* group.element[9].display = "Tumour percentage in biopsy tissue"
* group.element[9].target[0].code = #observation-tumor-burden-percent
* group.element[9].target[0].relationship = #related-to
* group.element[9].target[0].comment = "Quantitative tumour assessment row in dr-prostate; map to Observation ratio or coded category."

* group.element[10].code = #periprostatic-fat-invasion
* group.element[10].display = "Periprostatic fat invasion"
* group.element[10].target[0].code = #observation-periprostatic-invasion
* group.element[10].target[0].relationship = #related-to
* group.element[10].target[0].comment = "NeoplasmInvasionLtProstate (imaging) vs microscopic finding in pathology Observation; use LT Lab tumour findings for biopsy."

* group.element[11].code = #perineural-invasion
* group.element[11].display = "Perineural invasion"
* group.element[11].target[0].code = #observation-perineural-invasion
* group.element[11].target[0].relationship = #related-to
* group.element[11].target[0].comment = "SNOMED 369731000 (present), 370051000 (absent), 385001000 (not identified), 396393005 (indeterminate); use LT Lab tumour findings."

* group.element[12].code = #lymphovascular-invasion
* group.element[12].display = "Lymphatic and/or vascular tumour invasion"
* group.element[12].target[0].code = #observation-lymphovascular-invasion
* group.element[12].target[0].relationship = #related-to
* group.element[12].target[0].comment = "SNOMED 385414009 Lymphatic (small vessel) tumor invasion finding; use LT Lab tumour findings for biopsy microscopic assessment."
