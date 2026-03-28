Instance: questionnaire-prostate-adpp-primary-assessment
InstanceOf: Questionnaire
Usage: #example
Title: "Questionnaire: ADPP primary assessment (expanded illustrative)"
Description: "Illustrative Questionnaire aligned with consultation / ADPP spreadsheet blocks (Patient demographics omitted). Coverage and FHIR mapping: IG page Questionnaires and ConceptMap prostate-adpp-questionnaire-to-fhir."
* url = "https://hl7.lt/fhir/prostate/Questionnaire/prostate-adpp-primary-assessment"
* version = "0.2.0"
* name = "ProstateAdppPrimaryAssessment"
* title = "Prostate cancer prevention — primary assessment"
* status = #draft
* subjectType = #Patient
* date = "2025-03-24"
* publisher = "HL7 Lithuania"

* item[0].linkId = "grp-context"
* item[0].text = "Visit context"
* item[0].type = #group
* item[0].item[0].linkId = "assessment-datetime"
* item[0].item[0].text = "Assessment date and time"
* item[0].item[0].type = #dateTime
* item[0].item[0].required = true
* item[0].item[1].linkId = "referral-reason"
* item[0].item[1].text = "Reason for referral / programme entry"
* item[0].item[1].type = #coding
* item[0].item[1].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#referral-screening "Screening"
* item[0].item[1].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#referral-elevated-psa "Elevated PSA"
* item[0].item[1].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#referral-other "Other"

* item[1].linkId = "grp-clinical"
* item[1].text = "Clinical findings (same visit)"
* item[1].type = #group
* item[1].item[0].linkId = "race"
* item[1].item[0].text = "Race"
* item[1].item[0].type = #string
* item[1].item[0].required = true
* item[1].item[1].linkId = "psa-recorded"
* item[1].item[1].text = "PSA measured at this visit"
* item[1].item[1].type = #boolean
* item[1].item[2].linkId = "dre-result"
* item[1].item[2].text = "Digital rectal examination (multiselect)"
* item[1].item[2].type = #coding
* item[1].item[2].repeats = true
* item[1].item[2].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#dre-not-done "Not performed"
* item[1].item[2].answerOption[1].valueCoding = $snomed-prostate-extension-cs-url#standard-prostate "Standard"
* item[1].item[2].answerOption[2].valueCoding = $sct#276387009 "Hard"
* item[1].item[2].answerOption[3].valueCoding = $sct#276385001 "Soft"
* item[1].item[2].answerOption[4].valueCoding = $snomed-prostate-extension-cs-url#flexible-prostate "Flexible"
* item[1].item[2].answerOption[5].valueCoding = $snomed-prostate-extension-cs-url#inflexible-prostate "Inflexible"
* item[1].item[2].answerOption[6].valueCoding = $sct#443607001 "Palpable mass"

* item[2].linkId = "grp-family-history"
* item[2].text = "Family oncological history (first-degree)"
* item[2].type = #group
* item[2].item[0].linkId = "family-hx-prostate"
* item[2].item[0].text = "Prostate cancer"
* item[2].item[0].type = #coding
* item[2].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#ynk-yes "Yes"
* item[2].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#ynk-no "No"
* item[2].item[0].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#ynk-unknown "Unknown"
* item[2].item[1].linkId = "family-hx-breast"
* item[2].item[1].text = "Breast cancer"
* item[2].item[1].type = #coding
* item[2].item[1].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#ynk-yes "Yes"
* item[2].item[1].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#ynk-no "No"
* item[2].item[1].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#ynk-unknown "Unknown"
* item[2].item[2].linkId = "family-hx-ovarian"
* item[2].item[2].text = "Ovarian cancer"
* item[2].item[2].type = #coding
* item[2].item[2].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#ynk-yes "Yes"
* item[2].item[2].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#ynk-no "No"
* item[2].item[2].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#ynk-unknown "Unknown"
* item[2].item[3].linkId = "family-hx-colon"
* item[2].item[3].text = "Colorectal cancer"
* item[2].item[3].type = #coding
* item[2].item[3].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#ynk-yes "Yes"
* item[2].item[3].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#ynk-no "No"
* item[2].item[3].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#ynk-unknown "Unknown"

* item[3].linkId = "grp-vitals"
* item[3].text = "Anthropometrics"
* item[3].type = #group
* item[3].item[0].linkId = "height-cm"
* item[3].item[0].text = "Height (cm)"
* item[3].item[0].type = #quantity
* item[3].item[1].linkId = "weight-kg"
* item[3].item[1].text = "Weight (kg)"
* item[3].item[1].type = #quantity
* item[3].item[2].linkId = "bmi-kg-m2"
* item[3].item[2].text = "BMI (kg/m²)"
* item[3].item[2].type = #quantity

* item[4].linkId = "grp-psa-history"
* item[4].text = "PSA history"
* item[4].type = #group
* item[4].item[0].linkId = "first-psa-ngml"
* item[4].item[0].text = "First PSA (ng/ml)"
* item[4].item[0].type = #quantity
* item[4].item[1].linkId = "first-psa-date"
* item[4].item[1].text = "First PSA date (at least year-month)"
* item[4].item[1].type = #date
* item[4].item[2].linkId = "second-psa-ngml"
* item[4].item[2].text = "Second PSA (ng/ml)"
* item[4].item[2].type = #quantity
* item[4].item[3].linkId = "second-psa-date"
* item[4].item[3].text = "Second PSA date (at least year-month)"
* item[4].item[3].type = #date

* item[5].linkId = "grp-prior-imaging"
* item[5].text = "Prior prostate mpMRI"
* item[5].type = #group
* item[5].item[0].linkId = "prior-mpmri"
* item[5].item[0].text = "Prior mpMRI documented"
* item[5].item[0].type = #boolean
* item[5].item[1].linkId = "prior-mpmri-pirads"
* item[5].item[1].text = "Prior mpMRI PI-RADS category"
* item[5].item[1].type = #coding
* item[5].item[1].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#pirads-cat-1-2 "PI-RADS 1–2"
* item[5].item[1].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#pirads-cat-3 "PI-RADS 3"
* item[5].item[1].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#pirads-cat-4 "PI-RADS 4"
* item[5].item[1].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#pirads-cat-5 "PI-RADS 5"

* item[6].linkId = "grp-prior-therapy"
* item[6].text = "Prior prostate-directed therapy and anticoagulation"
* item[6].type = #group
* item[6].item[0].linkId = "prior-prostatectomy"
* item[6].item[0].text = "Prior prostatectomy"
* item[6].item[0].type = #boolean
* item[6].item[1].linkId = "prior-prostate-radiation"
* item[6].item[1].text = "Prior prostate radiotherapy"
* item[6].item[1].type = #boolean
* item[6].item[2].linkId = "anticoagulant-use"
* item[6].item[2].text = "Anticoagulant use"
* item[6].item[2].type = #boolean

* item[7].linkId = "grp-systemic"
* item[7].text = "Systemic diseases"
* item[7].type = #group
* item[7].item[0].linkId = "systemic-diseases"
* item[7].item[0].text = "Systemic diseases (e.g. RA, myeloma, immunosuppression)"
* item[7].item[0].type = #text
* item[7].item[1].linkId = "systemic-diseases-date"
* item[7].item[1].text = "Diagnosis date (year-month)"
* item[7].item[1].type = #date

* item[8].linkId = "grp-narrative"
* item[8].text = "Narrative"
* item[8].type = #group
* item[8].item[0].linkId = "complaints-anamnesis"
* item[8].item[0].text = "Complaints, anamnesis"
* item[8].item[0].type = #text
* item[8].item[1].linkId = "specialist-additional-info"
* item[8].item[1].text = "Additional description for specialist"
* item[8].item[1].type = #text


Instance: questionnaireresponse-prostate-adpp-primary-assessment-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: ADPP primary assessment (example)"
Description: "Example answers for the expanded ADPP primary assessment Questionnaire."
* questionnaire = "https://hl7.lt/fhir/prostate/Questionnaire/prostate-adpp-primary-assessment"
* status = #completed
* subject = Reference(patient-male-example)
* authored = "2024-05-26T08:30:00Z"

* item[0].linkId = "grp-context"
* item[0].item[0].linkId = "assessment-datetime"
* item[0].item[0].answer.valueDateTime = "2024-05-26T08:30:00Z"
* item[0].item[1].linkId = "referral-reason"
* item[0].item[1].answer.valueCoding = $prostate-questionnaire-options-cs#referral-elevated-psa "Elevated PSA"

* item[1].linkId = "grp-clinical"
* item[1].item[0].linkId = "race"
* item[1].item[0].answer.valueString = "Caucasian"
* item[1].item[1].linkId = "psa-recorded"
* item[1].item[1].answer.valueBoolean = true
* item[1].item[2].linkId = "dre-result"
* item[1].item[2].answer.valueCoding = $sct#276387009 "Hard"

* item[2].linkId = "grp-family-history"
* item[2].item[0].linkId = "family-hx-prostate"
* item[2].item[0].answer.valueCoding = $prostate-questionnaire-options-cs#ynk-no "No"
* item[2].item[1].linkId = "family-hx-breast"
* item[2].item[1].answer.valueCoding = $prostate-questionnaire-options-cs#ynk-unknown "Unknown"
* item[2].item[2].linkId = "family-hx-ovarian"
* item[2].item[2].answer.valueCoding = $prostate-questionnaire-options-cs#ynk-no "No"
* item[2].item[3].linkId = "family-hx-colon"
* item[2].item[3].answer.valueCoding = $prostate-questionnaire-options-cs#ynk-no "No"

* item[3].linkId = "grp-vitals"
* item[3].item[0].linkId = "height-cm"
* item[3].item[0].answer.valueQuantity = 178 'cm' "cm"
* item[3].item[1].linkId = "weight-kg"
* item[3].item[1].answer.valueQuantity = 82 'kg' "kg"
* item[3].item[2].linkId = "bmi-kg-m2"
* item[3].item[2].answer.valueQuantity = 25.9 'kg/m2' "kg/m2"

* item[4].linkId = "grp-psa-history"
* item[4].item[0].linkId = "first-psa-ngml"
* item[4].item[0].answer.valueQuantity = 12.5 'ng/mL' "ng/mL"
* item[4].item[1].linkId = "first-psa-date"
* item[4].item[1].answer.valueDate = "2024-05-01"
* item[4].item[2].linkId = "second-psa-ngml"
* item[4].item[2].answer.valueQuantity = 15.7 'ng/mL' "ng/mL"
* item[4].item[3].linkId = "second-psa-date"
* item[4].item[3].answer.valueDate = "2024-05-20"

* item[5].linkId = "grp-prior-imaging"
* item[5].item[0].linkId = "prior-mpmri"
* item[5].item[0].answer.valueBoolean = true
* item[5].item[1].linkId = "prior-mpmri-pirads"
* item[5].item[1].answer.valueCoding = $prostate-questionnaire-options-cs#pirads-cat-4 "PI-RADS 4"

* item[6].linkId = "grp-prior-therapy"
* item[6].item[0].linkId = "prior-prostatectomy"
* item[6].item[0].answer.valueBoolean = false
* item[6].item[1].linkId = "prior-prostate-radiation"
* item[6].item[1].answer.valueBoolean = false
* item[6].item[2].linkId = "anticoagulant-use"
* item[6].item[2].answer.valueBoolean = false

* item[7].linkId = "grp-systemic"
* item[7].item[0].linkId = "systemic-diseases"
* item[7].item[0].answer.valueString = "No known systemic diseases"

* item[8].linkId = "grp-narrative"
* item[8].item[0].linkId = "complaints-anamnesis"
* item[8].item[0].answer.valueString = "Elevated PSA on screening; no urinary retention."
* item[8].item[1].linkId = "specialist-additional-info"
* item[8].item[1].answer.valueString = "Refer for mpMRI per programme pathway."
