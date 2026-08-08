Instance: questionnaire-prostate-radiologist-referral
InstanceOf: Questionnaire
Usage: #example
Title: "Questionnaire: Referral to radiologist (E027)"
Description: "Questionnaire for the referral to a radiologist (form E027) in the Lithuanian prostate cancer screening programme. Patient demographics are omitted — they come from PatientLt."
* url = "https://hl7.lt/fhir/prostate/Questionnaire/prostate-radiologist-referral"
* version = "0.1.0"
* name = "ProstateRadiologistReferral"
* title = "Referral to a radiologist (E027)"
* status = #draft
* subjectType = #Patient
* date = "2025-06-01"
* publisher = "HL7 Lithuania"

// ── 0  Referral context ────────────────────────────────────────────────
* item[0].linkId = "grp-referral-context"
* item[0].text = "Referral context"
* item[0].type = #group

* item[0].item[0].linkId = "diagnosis"
* item[0].item[0].text = "Diagnosis (ICD-10)"
* item[0].item[0].type = #coding
* item[0].item[0].required = true
* item[0].item[0].answerOption[0].valueCoding = $icd10#N40 "Enlargement of prostate"
* item[0].item[0].answerOption[1].valueCoding = $icd10#C61 "Malignant neoplasm of prostate"

* item[0].item[1].linkId = "diagnosis-grade-group"
* item[0].item[1].text = "Grade group (if C61)"
* item[0].item[1].type = #coding
* item[0].item[1].required = false
* item[0].item[1].answerOption[0].valueCoding = $sct#1279715000 "ISUP Grade Group 1 (Gleason 3+3)"
* item[0].item[1].answerOption[1].valueCoding = $sct#1279714001 "ISUP Grade Group 2 (Gleason 3+4)"
* item[0].item[1].answerOption[2].valueCoding = $sct#1279716004 "ISUP Grade Group 3 (Gleason 4+3)"
* item[0].item[1].answerOption[3].valueCoding = $sct#1279717008 "ISUP Grade Group 4 (Gleason 8)"
* item[0].item[1].answerOption[4].valueCoding = $sct#1279720000 "ISUP Grade Group 5 (Gleason 9-10)"

* item[0].item[2].linkId = "specialist-qualification"
* item[0].item[2].text = "Specialist qualification"
* item[0].item[2].type = #string
* item[0].item[2].required = true
* item[0].item[2].initial.valueString = "Radiologist"
* item[0].item[2].readOnly = true

* item[0].item[3].linkId = "institution"
* item[0].item[3].text = "Referring institution"
* item[0].item[3].type = #string
* item[0].item[3].required = true

* item[0].item[4].linkId = "screening-programme"
* item[0].item[4].text = "Screening programme participant"
* item[0].item[4].type = #coding
* item[0].item[4].required = true
* item[0].item[4].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[4].answerOption[1].valueCoding = $sct#373067005 "No (qualifier value)"

// ── 1  Clinical ────────────────────────────────────────────────────────
* item[1].linkId = "grp-clinical"
* item[1].text = "Clinical information"
* item[1].type = #group

* item[1].item[0].linkId = "complaints-anamnesis"
* item[1].item[0].text = "Complaints / anamnesis"
* item[1].item[0].type = #text
* item[1].item[0].required = false

* item[1].item[1].linkId = "condition-assessment-info"
* item[1].item[1].text = "Condition assessment information"
* item[1].item[1].type = #text
* item[1].item[1].required = true

// ── 2  Family history ──────────────────────────────────────────────────
* item[2].linkId = "grp-family-history"
* item[2].text = "Family oncological history (first-degree)"
* item[2].type = #group

* item[2].item[0].linkId = "family-hx-prostate"
* item[2].item[0].text = "Prostate cancer"
* item[2].item[0].type = #coding
* item[2].item[0].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[2].item[0].answerOption[1].valueCoding = $sct#373067005 "No (qualifier value)"
* item[2].item[0].answerOption[2].valueCoding = $sct#261665006 "Unknown (qualifier value)"

* item[2].item[1].linkId = "family-hx-breast"
* item[2].item[1].text = "Breast cancer"
* item[2].item[1].type = #coding
* item[2].item[1].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[2].item[1].answerOption[1].valueCoding = $sct#373067005 "No (qualifier value)"
* item[2].item[1].answerOption[2].valueCoding = $sct#261665006 "Unknown (qualifier value)"

* item[2].item[2].linkId = "family-hx-ovarian"
* item[2].item[2].text = "Ovarian cancer"
* item[2].item[2].type = #coding
* item[2].item[2].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[2].item[2].answerOption[1].valueCoding = $sct#373067005 "No (qualifier value)"
* item[2].item[2].answerOption[2].valueCoding = $sct#261665006 "Unknown (qualifier value)"

* item[2].item[3].linkId = "family-hx-colon"
* item[2].item[3].text = "Colorectal cancer"
* item[2].item[3].type = #coding
* item[2].item[3].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[2].item[3].answerOption[1].valueCoding = $sct#373067005 "No (qualifier value)"
* item[2].item[3].answerOption[2].valueCoding = $sct#261665006 "Unknown (qualifier value)"

// ── 3  DRE ─────────────────────────────────────────────────────────────
* item[3].linkId = "grp-dre"
* item[3].text = "Digital rectal examination"
* item[3].type = #group

* item[3].item[0].linkId = "dre-findings"
* item[3].item[0].text = "DRE findings (select all that apply)"
* item[3].item[0].type = #coding
* item[3].item[0].required = false
* item[3].item[0].repeats = true
* item[3].item[0].answerOption[0].valueCoding = $snomed-prostate-extension-cs-url#standard-prostate "Standard prostate (finding)"
* item[3].item[0].answerOption[1].valueCoding = $sct#276387009 "Hard prostate (finding)"
* item[3].item[0].answerOption[2].valueCoding = $sct#276385001 "Soft prostate (finding)"
* item[3].item[0].answerOption[3].valueCoding = $snomed-prostate-extension-cs-url#flexible-prostate "Flexible prostate (finding)"
* item[3].item[0].answerOption[4].valueCoding = $snomed-prostate-extension-cs-url#inflexible-prostate "Inflexible prostate (finding)"
* item[3].item[0].answerOption[5].valueCoding = $sct#443607001 "Palpable mass (finding)"

// ── 4  Vitals ──────────────────────────────────────────────────────────
* item[4].linkId = "grp-vitals"
* item[4].text = "Anthropometrics"
* item[4].type = #group

* item[4].item[0].linkId = "height-cm"
* item[4].item[0].text = "Height (cm)"
* item[4].item[0].type = #quantity
* item[4].item[0].required = true

* item[4].item[1].linkId = "weight-kg"
* item[4].item[1].text = "Weight (kg)"
* item[4].item[1].type = #quantity
* item[4].item[1].required = true

* item[4].item[2].linkId = "bmi-kg-m2"
* item[4].item[2].text = "BMI (kg/m2)"
* item[4].item[2].type = #quantity
* item[4].item[2].readOnly = true

// ── 5  PSA ─────────────────────────────────────────────────────────────
* item[5].linkId = "grp-psa"
* item[5].text = "PSA"
* item[5].type = #group

* item[5].item[0].linkId = "first-psa-ngml"
* item[5].item[0].text = "First PSA (ng/ml)"
* item[5].item[0].type = #quantity
* item[5].item[0].required = true

* item[5].item[1].linkId = "first-psa-date"
* item[5].item[1].text = "First PSA date"
* item[5].item[1].type = #date
* item[5].item[1].required = true

// ── 6  Prior imaging ───────────────────────────────────────────────────
* item[6].linkId = "grp-prior-imaging"
* item[6].text = "Prior prostate mpMRI"
* item[6].type = #group

* item[6].item[0].linkId = "prior-mpmri"
* item[6].item[0].text = "Prior mpMRI documented"
* item[6].item[0].type = #boolean

* item[6].item[1].linkId = "prior-mpmri-date"
* item[6].item[1].text = "Prior mpMRI date"
* item[6].item[1].type = #date

* item[6].item[2].linkId = "prior-mpmri-pirads"
* item[6].item[2].text = "Prior mpMRI PI-RADS category"
* item[6].item[2].type = #coding
* item[6].item[2].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#pirads-cat-1-2 "PI-RADS 1-2"
* item[6].item[2].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#pirads-cat-3 "PI-RADS 3"
* item[6].item[2].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#pirads-cat-4 "PI-RADS 4"
* item[6].item[2].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#pirads-cat-5 "PI-RADS 5"

// ── 7  Prior therapy ───────────────────────────────────────────────────
* item[7].linkId = "grp-prior-therapy"
* item[7].text = "Prior prostate-directed therapy"
* item[7].type = #group

* item[7].item[0].linkId = "prior-prostatectomy"
* item[7].item[0].text = "Prior prostate surgery"
* item[7].item[0].type = #boolean

* item[7].item[1].linkId = "prior-prostatectomy-date"
* item[7].item[1].text = "Prostate surgery date"
* item[7].item[1].type = #date

* item[7].item[2].linkId = "prior-prostate-radiation"
* item[7].item[2].text = "Prior prostate radiotherapy"
* item[7].item[2].type = #boolean

* item[7].item[3].linkId = "prior-prostate-radiation-date"
* item[7].item[3].text = "Prostate radiotherapy date"
* item[7].item[3].type = #date

// ── 8  Related ─────────────────────────────────────────────────────────
* item[8].linkId = "grp-related"
* item[8].text = "Related information"
* item[8].type = #group

* item[8].item[0].linkId = "anticoagulant-use"
* item[8].item[0].text = "Anticoagulant use"
* item[8].item[0].type = #boolean

// ── 9  Additional ──────────────────────────────────────────────────────
* item[9].linkId = "grp-additional"
* item[9].text = "Additional information"
* item[9].type = #group

* item[9].item[0].linkId = "specialist-additional-info"
* item[9].item[0].text = "Additional description for specialist"
* item[9].item[0].type = #text
                                                                                                                                                       