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
* item[1].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#treatment-unknown "Treatment effect unknown"
* item[1].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#treatment-unidentifiable "Treatment effect unidentifiable"
* item[1].item[0].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#treatment-radiotherapy "Observed radiotherapy effect"
* item[1].item[0].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#treatment-hormone "Observed hormone therapy effect"
* item[1].item[0].answerOption[4].valueCoding = $prostate-questionnaire-options-cs#treatment-other "Observed other therapy effect"

* item[2].linkId = "grp-histology"
* item[2].text = "Histological tumour type"
* item[2].type = #group
* item[2].item[0].linkId = "histological-type"
* item[2].item[0].text = "Primary histological type"
* item[2].item[0].type = #coding
* item[2].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#hist-acinar "Acinar adenocarcinoma (conventional)"
* item[2].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#hist-other "Other histological type (see comment)"
* item[2].item[1].linkId = "histological-comment"
* item[2].item[1].text = "Histological type comment"
* item[2].item[1].type = #text

* item[3].linkId = "grp-grade"
* item[3].text = "Grade (ISUP)"
* item[3].type = #group
* item[3].item[0].linkId = "isup-grade-group"
* item[3].item[0].text = "International Society of Urological Pathology grade group"
* item[3].item[0].type = #coding
* item[3].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#isup-gg1 "ISUP Grade Group 1 (Gleason 3+3)"
* item[3].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#isup-gg2 "ISUP Grade Group 2 (Gleason 3+4)"
* item[3].item[0].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#isup-gg3 "ISUP Grade Group 3 (Gleason 4+3)"
* item[3].item[0].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#isup-gg4 "ISUP Grade Group 4 (Gleason 4+4 or equivalent)"
* item[3].item[0].answerOption[4].valueCoding = $prostate-questionnaire-options-cs#isup-gg5 "ISUP Grade Group 5 (Gleason 4+5 / 5+4 / 5+5)"

* item[4].linkId = "grp-idc-cribriform"
* item[4].text = "IDC and cribriform"
* item[4].type = #group
* item[4].item[0].linkId = "idc-status"
* item[4].item[0].text = "Intraductal carcinoma (IDC)"
* item[4].item[0].type = #coding
* item[4].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#idc-absent "Intraductal carcinoma not identified"
* item[4].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#idc-present "Intraductal carcinoma identifiable"
* item[4].item[1].linkId = "cribriform-status"
* item[4].item[1].text = "Cribriform glands"
* item[4].item[1].type = #coding
* item[4].item[1].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#cribriform-na "Cribriform not applicable"
* item[4].item[1].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#cribriform-unknown "Cribriform undefined"
* item[4].item[1].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#cribriform-present "Cribriform identifiable"

* item[5].linkId = "grp-additional-grade-burden"
* item[5].text = "Additional grade and tumour burden (subset)"
* item[5].type = #group
* item[5].item[0].linkId = "pattern4-pct-band"
* item[5].item[0].text = "Quantity of Pattern 4 (percent band)"
* item[5].item[0].type = #coding
* item[5].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#pattern4-pct-na "Pattern 4 %: not applicable"
* item[5].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#pattern4-pct-lte5 "Pattern 4 %: ≤5%"
* item[5].item[0].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#pattern4-pct-6-10 "Pattern 4 %: 6–10%"
* item[5].item[0].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#pattern4-pct-gt40 "Pattern 4 %: >40%"
* item[5].item[1].linkId = "tumor-percent-in-biopsy"
* item[5].item[1].text = "Tumour percentage in biopsy tissue"
* item[5].item[1].type = #coding
* item[5].item[1].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#tumor-pct-lt1 "Tumour % in biopsy: <1%"
* item[5].item[1].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#tumor-pct-1-5 "Tumour % in biopsy: 1–5%"
* item[5].item[1].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#tumor-pct-gt90 "Tumour % in biopsy: >90%"
* item[5].item[1].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#tumor-pct-uneval "Tumour %: cannot be evaluated"

* item[6].linkId = "grp-invasion"
* item[6].text = "Local invasion (subset)"
* item[6].type = #group
* item[6].item[0].linkId = "periprostatic-fat-invasion"
* item[6].item[0].text = "Tumour infiltration in periprostatic adipose tissue"
* item[6].item[0].type = #coding
* item[6].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#periprostatic-unknown "Periprostatic fat invasion: unidentifiable"
* item[6].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#periprostatic-absent "Periprostatic fat invasion: not identified"
* item[6].item[0].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#periprostatic-present "Periprostatic fat invasion: present"


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
* item[1].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#treatment-unknown "Treatment effect unknown"

* item[2].linkId = "grp-histology"
* item[2].item[0].linkId = "histological-type"
* item[2].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#hist-acinar "Acinar adenocarcinoma (conventional)"
* item[2].item[1].linkId = "histological-comment"
* item[2].item[1].answer.valueString = "Acinar pattern; correlate with MRI."

* item[3].linkId = "grp-grade"
* item[3].item[0].linkId = "isup-grade-group"
* item[3].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#isup-gg1 "ISUP Grade Group 1 (Gleason 3+3)"

* item[4].linkId = "grp-idc-cribriform"
* item[4].item[0].linkId = "idc-status"
* item[4].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#idc-absent "Intraductal carcinoma not identified"
* item[4].item[1].linkId = "cribriform-status"
* item[4].item[1].answer.valueCoding = $prostate-questionnaire-options-cs#cribriform-na "Cribriform not applicable"

* item[5].linkId = "grp-additional-grade-burden"
* item[5].item[0].linkId = "pattern4-pct-band"
* item[5].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#pattern4-pct-lte5 "Pattern 4 %: ≤5%"
* item[5].item[1].linkId = "tumor-percent-in-biopsy"
* item[5].item[1].answer.valueCoding = $prostate-questionnaire-options-cs#tumor-pct-1-5 "Tumour % in biopsy: 1–5%"

* item[6].linkId = "grp-invasion"
* item[6].item[0].linkId = "periprostatic-fat-invasion"
* item[6].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#periprostatic-absent "Periprostatic fat invasion: not identified"
