Instance: questionnaire-prostate-pathology-espbi
InstanceOf: Questionnaire
Usage: #example
Title: "Questionnaire: Prostate pathology report (ESPBI / dr-prostate subset)"
Description: "Illustrative FHIR Questionnaire aligned with dr-prostate spreadsheet (subset). Full coverage gaps and FHIR mapping: IG page Questionnaires and ConceptMap prostate-pathology-questionnaire-to-fhir."
* url = "https://hl7.lt/fhir/prostate/Questionnaire/prostate-pathology-espbi"
* version = "0.1.0"
* name = "ProstatePathologyEspbi"
* title = "Prostate pathology structured report"
* status = #draft
* subjectType = #Patient
* date = "2025-03-24"
* publisher = "HL7 Lithuania"

* item[0].linkId = "grp-specimen"
* item[0].text = "Specimen and macroscopic context"
* item[0].type = #group
* item[0].item[0].linkId = "bioptate-length-mm"
* item[0].item[0].text = "Bioptate length (mm)"
* item[0].item[0].type = #quantity
* item[0].item[1].linkId = "specimen-quality"
* item[0].item[1].text = "Quality of materials"
* item[0].item[1].type = #coding
* item[0].item[1].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#specimen-satisfactory "Specimen satisfactory for evaluation"
* item[0].item[1].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#specimen-limited "Specimen satisfactory but limited"
* item[0].item[1].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#specimen-insufficient "Insufficient tissue for diagnosis"

* item[1].linkId = "grp-treatment-effect"
* item[1].text = "Treatment effect (selected)"
* item[1].type = #group
* item[1].item[0].linkId = "treatment-effect"
* item[1].item[0].text = "Treatment effect on tumour"
* item[1].item[0].type = #coding
* item[1].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#treatment-unknown "Unknown"
* item[1].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#treatment-unidentifiable "Unidentifiable"
* item[1].item[0].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#treatment-radiotherapy "Observed radiotherapy effect"
* item[1].item[0].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#treatment-hormone "Observed hormone therapy effect"
* item[1].item[0].answerOption[4].valueCoding = $prostate-questionnaire-options-cs#treatment-other "Other effect"

* item[2].linkId = "grp-histology"
* item[2].text = "Histological tumour type"
* item[2].type = #group
* item[2].item[0].linkId = "histological-type"
* item[2].item[0].text = "Primary histological type"
* item[2].item[0].type = #coding
* item[2].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#hist-acinar "Acinar adenocarcinoma"
* item[2].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#hist-other "Other (comment)"
* item[2].item[1].linkId = "histological-comment"
* item[2].item[1].text = "Histological type comment"
* item[2].item[1].type = #text

* item[3].linkId = "grp-grade"
* item[3].text = "Grade (ISUP)"
* item[3].type = #group
* item[3].item[0].linkId = "isup-grade-group"
* item[3].item[0].text = "International Society of Urological Pathology grade group"
* item[3].item[0].type = #coding
* item[3].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#isup-gg1 "Grade Group 1"
* item[3].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#isup-gg2 "Grade Group 2"
* item[3].item[0].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#isup-gg3 "Grade Group 3"
* item[3].item[0].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#isup-gg4 "Grade Group 4"
* item[3].item[0].answerOption[4].valueCoding = $prostate-questionnaire-options-cs#isup-gg5 "Grade Group 5"

* item[4].linkId = "grp-idc-cribriform"
* item[4].text = "IDC and cribriform"
* item[4].type = #group
* item[4].item[0].linkId = "idc-status"
* item[4].item[0].text = "Intraductal carcinoma (IDC)"
* item[4].item[0].type = #coding
* item[4].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#idc-absent "Not identified"
* item[4].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#idc-present "Identifiable"
* item[4].item[1].linkId = "cribriform-status"
* item[4].item[1].text = "Cribriform glands"
* item[4].item[1].type = #coding
* item[4].item[1].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#cribriform-na "Not applicable"
* item[4].item[1].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#cribriform-unknown "Undefined"
* item[4].item[1].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#cribriform-present "Identifiable"

* item[5].linkId = "grp-additional-grade-burden"
* item[5].text = "Additional grade and tumour burden (subset)"
* item[5].type = #group
* item[5].item[0].linkId = "pattern4-pct-band"
* item[5].item[0].text = "Quantity of Pattern 4 (percent band)"
* item[5].item[0].type = #coding
* item[5].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#pattern4-pct-na "Not applicable"
* item[5].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#pattern4-pct-lte5 "≤5%"
* item[5].item[0].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#pattern4-pct-6-10 "6–10%"
* item[5].item[0].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#pattern4-pct-gt40 ">40%"
* item[5].item[1].linkId = "tumor-percent-in-biopsy"
* item[5].item[1].text = "Tumour percentage in biopsy tissue"
* item[5].item[1].type = #coding
* item[5].item[1].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#tumor-pct-lt1 "<1%"
* item[5].item[1].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#tumor-pct-1-5 "1–5%"
* item[5].item[1].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#tumor-pct-gt90 ">90%"
* item[5].item[1].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#tumor-pct-uneval "Cannot be evaluated"

* item[6].linkId = "grp-invasion"
* item[6].text = "Local invasion (subset)"
* item[6].type = #group
* item[6].item[0].linkId = "periprostatic-fat-invasion"
* item[6].item[0].text = "Tumour infiltration in periprostatic adipose tissue"
* item[6].item[0].type = #coding
* item[6].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#periprostatic-unknown "Unidentifiable"
* item[6].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#periprostatic-absent "Not identified"
* item[6].item[0].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#periprostatic-present "Present"


Instance: questionnaireresponse-prostate-pathology-espbi-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: Prostate pathology ESPBI (example)"
Description: "Example answers using **valueCoding** for choice questions."
* questionnaire = "https://hl7.lt/fhir/prostate/Questionnaire/prostate-pathology-espbi"
* status = #completed
* subject = Reference(patient-male-example)
* authored = "2024-05-28T14:00:00Z"

* item[0].linkId = "grp-specimen"
* item[0].item[0].linkId = "bioptate-length-mm"
* item[0].item[0].answer.valueQuantity = 22 'mm' "mm"
* item[0].item[1].linkId = "specimen-quality"
* item[0].item[1].answer.valueCoding = $prostate-questionnaire-options-cs#specimen-satisfactory "Specimen satisfactory for evaluation"

* item[1].linkId = "grp-treatment-effect"
* item[1].item[0].linkId = "treatment-effect"
* item[1].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#treatment-unknown "Unknown"

* item[2].linkId = "grp-histology"
* item[2].item[0].linkId = "histological-type"
* item[2].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#hist-acinar "Acinar adenocarcinoma"
* item[2].item[1].linkId = "histological-comment"
* item[2].item[1].answer.valueString = "Acinar pattern; correlate with MRI."

* item[3].linkId = "grp-grade"
* item[3].item[0].linkId = "isup-grade-group"
* item[3].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#isup-gg1 "Grade Group 1"

* item[4].linkId = "grp-idc-cribriform"
* item[4].item[0].linkId = "idc-status"
* item[4].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#idc-absent "Not identified"
* item[4].item[1].linkId = "cribriform-status"
* item[4].item[1].answer.valueCoding = $prostate-questionnaire-options-cs#cribriform-na "Not applicable"

* item[5].linkId = "grp-additional-grade-burden"
* item[5].item[0].linkId = "pattern4-pct-band"
* item[5].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#pattern4-pct-lte5 "≤5%"
* item[5].item[1].linkId = "tumor-percent-in-biopsy"
* item[5].item[1].answer.valueCoding = $prostate-questionnaire-options-cs#tumor-pct-1-5 "1–5%"

* item[6].linkId = "grp-invasion"
* item[6].item[0].linkId = "periprostatic-fat-invasion"
* item[6].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#periprostatic-absent "Not identified"
