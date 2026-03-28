Instance: questionnaire-prostate-pathologist-referral
InstanceOf: Questionnaire
Usage: #example
Title: "Questionnaire: Referral to pathologist (E014)"
Description: "Questionnaire for the Referral to a pathologist form (E014, form 014-1-1/a) in the Lithuanian prostate cancer screening programme. Patient demographics omitted (sourced from PatientLt)."
* url = "https://hl7.lt/fhir/prostate/Questionnaire/prostate-pathologist-referral"
* version = "0.1.0"
* name = "ProstatePathologistReferral"
* title = "Referral to pathologist (E014, form 014-1-1/a)"
* status = #draft
* subjectType = #Patient
* date = "2025-06-01"
* publisher = "HL7 Lithuania"

// ── Group 0: Referral information ────────────────────────────────
* item[0].linkId = "grp-referral-info"
* item[0].text = "Referral information"
* item[0].type = #group
* item[0].item[0].linkId = "sending-institution"
* item[0].item[0].text = "Sending institution"
* item[0].item[0].type = #string
* item[0].item[0].required = true
* item[0].item[1].linkId = "sending-section"
* item[0].item[1].text = "Section / department"
* item[0].item[1].type = #string
* item[0].item[2].linkId = "treating-physician-name"
* item[0].item[2].text = "Treating physician (full name)"
* item[0].item[2].type = #string
* item[0].item[2].required = true
* item[0].item[3].linkId = "treating-physician-email"
* item[0].item[3].text = "Treating physician e-mail"
* item[0].item[3].type = #string
* item[0].item[4].linkId = "treating-physician-phone"
* item[0].item[4].text = "Treating physician phone"
* item[0].item[4].type = #string
* item[0].item[5].linkId = "referring-doctor-name"
* item[0].item[5].text = "Referring doctor (full name)"
* item[0].item[5].type = #string
* item[0].item[5].required = true
* item[0].item[6].linkId = "referring-doctor-email"
* item[0].item[6].text = "Referring doctor e-mail"
* item[0].item[6].type = #string
* item[0].item[7].linkId = "referring-doctor-phone"
* item[0].item[7].text = "Referring doctor phone"
* item[0].item[7].type = #string

// ── Group 1: Biopsy type ─────────────────────────────────────────
* item[1].linkId = "grp-biopsy-type"
* item[1].text = "Biopsy type"
* item[1].type = #group
* item[1].item[0].linkId = "biopsy-type"
* item[1].item[0].text = "Biopsy type"
* item[1].item[0].type = #coding
* item[1].item[0].required = true
* item[1].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#biopsy-initial "Initial biopsy"
* item[1].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#biopsy-repeat "Repeat biopsy"

// ── Group 2: Tissue fixing ───────────────────────────────────────
* item[2].linkId = "grp-tissue-fixing"
* item[2].text = "Tissue fixing"
* item[2].type = #group
* item[2].item[0].linkId = "tissue-fixing-material"
* item[2].item[0].text = "Tissue-fixing material"
* item[2].item[0].type = #coding
* item[2].item[0].required = true
* item[2].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#fixative-buffered-formalin "10% buffered formalin"
* item[2].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#fixative-unfixed "Unfixed (no fixative)"

// ── Group 3: Clinical diagnosis ──────────────────────────────────
* item[3].linkId = "grp-clinical-diagnosis"
* item[3].text = "Clinical diagnosis"
* item[3].type = #group
* item[3].item[0].linkId = "clinical-diagnosis"
* item[3].item[0].text = "Clinical diagnosis"
* item[3].item[0].type = #coding
* item[3].item[0].required = true
* item[3].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#dx-n40-gph "N40 Glandular prostatic hyperplasia"
* item[3].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#dx-c61 "C61 Malignant neoplasm of prostate"
* item[3].item[1].linkId = "clinical-t-stage"
* item[3].item[1].text = "Clinical T stage (if C61)"
* item[3].item[1].type = #coding
* item[3].item[1].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#ct-1c "cT1c"
* item[3].item[1].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#ct-2 "cT2"
* item[3].item[1].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#ct-3a "cT3a"
* item[3].item[1].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#ct-3b "cT3b"

// ── Group 4: Procedure ───────────────────────────────────────────
* item[4].linkId = "grp-procedure"
* item[4].text = "Procedure"
* item[4].type = #group
* item[4].item[0].linkId = "operation-name"
* item[4].item[0].text = "Operation name"
* item[4].item[0].type = #coding
* item[4].item[0].required = true
* item[4].item[0].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#op-transperineal "Transperineal biopsy"
* item[4].item[0].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#op-transrectal "Transrectal biopsy"
* item[4].item[1].linkId = "procedure-type"
* item[4].item[1].text = "Procedure type"
* item[4].item[1].type = #coding
* item[4].item[1].required = true
* item[4].item[1].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#proc-systematic "Systematic biopsy"
* item[4].item[1].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#proc-adaptive "Adaptive biopsy"
* item[4].item[1].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#proc-systematic-targeted "Systematic + targeted biopsy"
* item[4].item[1].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#proc-applicative-perifocal "Applicative + perifocal biopsy"

// ── Group 5: Specimens ───────────────────────────────────────────
* item[5].linkId = "grp-specimens"
* item[5].text = "Description of histological object (number of biopsies per location)"
* item[5].type = #group
* item[5].item[0].linkId = "specimens-right-pz"
* item[5].item[0].text = "Right peripheral zone (number of biopsies)"
* item[5].item[0].type = #integer
* item[5].item[1].linkId = "specimens-left-pz"
* item[5].item[1].text = "Left peripheral zone (number of biopsies)"
* item[5].item[1].type = #integer
* item[5].item[2].linkId = "specimens-focus-1"
* item[5].item[2].text = "Focus 1 (number of biopsies)"
* item[5].item[2].type = #integer
* item[5].item[3].linkId = "specimens-focus-2"
* item[5].item[3].text = "Focus 2 (number of biopsies)"
* item[5].item[3].type = #integer
* item[5].item[4].linkId = "specimens-focus-3"
* item[5].item[4].text = "Focus 3 (number of biopsies)"
* item[5].item[4].type = #integer

// ── Group 6: Clinical data ───────────────────────────────────────
* item[6].linkId = "grp-clinical-data"
* item[6].text = "Clinical data"
* item[6].type = #group
* item[6].item[0].linkId = "psa-ngml"
* item[6].item[0].text = "PSA (ng/ml)"
* item[6].item[0].type = #quantity
* item[6].item[1].linkId = "psat-ngml-ml"
* item[6].item[1].text = "PSAT (ng/ml/ml)"
* item[6].item[1].type = #quantity
* item[6].item[2].linkId = "prostate-volume-ml"
* item[6].item[2].text = "Prostate volume (ml)"
* item[6].item[2].type = #quantity
* item[6].item[3].linkId = "mpmri-pirads"
* item[6].item[3].text = "mpMRI PI-RADS assessment"
* item[6].item[3].type = #coding
* item[6].item[3].answerOption[0].valueCoding = $prostate-questionnaire-options-cs#pirads-cat-1-2 "PI-RADS 1-2"
* item[6].item[3].answerOption[1].valueCoding = $prostate-questionnaire-options-cs#pirads-cat-3 "PI-RADS 3"
* item[6].item[3].answerOption[2].valueCoding = $prostate-questionnaire-options-cs#pirads-cat-4 "PI-RADS 4"
* item[6].item[3].answerOption[3].valueCoding = $prostate-questionnaire-options-cs#pirads-cat-5 "PI-RADS 5"

// ── Group 7: Additional information ──────────────────────────────
* item[7].linkId = "grp-additional"
* item[7].text = "Additional information"
* item[7].type = #group
* item[7].item[0].linkId = "additional-info"
* item[7].item[0].text = "Additional information"
* item[7].item[0].type = #text
