CodeSystem: SnomedProstateExtension
Id: snomed-prostate-extension
Title: "SNOMED CT Prostate Extension"
Description: "Local codes extending SNOMED CT for prostate-related clinical findings not yet available in SNOMED CT. To be used until adopted by SNOMED CT."
* ^url = $snomed-prostate-extension-cs-url
* ^status = #draft
* ^experimental = true
* ^caseSensitive = false
* ^content = #complete
* ^publisher = "HL7 Lithuania"
* #standard-prostate "Standard prostate (finding)" "Normal consistency on digital rectal examination."
* #flexible-prostate "Flexible prostate (finding)" "Flexible/elastic consistency on digital rectal examination."
* #inflexible-prostate "Inflexible prostate (finding)" "Inflexible/rigid consistency on digital rectal examination."
// Change nature / etiology for pelvic organ findings
* #change-neoplasm-related "Related to prostate neoplasm (finding)" "Change is related to the primary prostate neoplasm (invasion, compression, or direct extension)."
* #change-benign "Benign change (finding)" "Benign, non-neoplastic change (e.g. hyperplasia, inflammation)."
* #change-non-neoplastic "Non-neoplastic / incidental (finding)" "Change is not related to the prostate neoplasm (incidental or other etiology)."

ValueSet: ProstateChangeNatureVS
Id: prostate-change-nature
Title: "Prostate - Change Nature / Etiology"
Description: "Nature of observed change in pelvic organs: neoplasm-related, benign, or non-neoplastic/incidental."
* ^url = $prostate-change-nature-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* SnomedProstateExtension#change-neoplasm-related "Related to prostate neoplasm"
* SnomedProstateExtension#change-benign "Benign change"
* SnomedProstateExtension#change-non-neoplastic "Non-neoplastic / incidental"

ValueSet: DigitalRectalExaminationVS
Id: digital-rectal-examination
Title: "Digital Rectal Examination Findings"
Description: "Findings from digital rectal examination (DRE) of the prostate, including consistency and palpable mass."
* ^url = $digital-rectal-examination-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* $sct#276385001 "Soft prostate (finding)"
* $sct#276387009 "Hard prostate (finding)"
* $sct#443607001 "Palpable mass (finding)"
* SnomedProstateExtension#standard-prostate "Standard prostate (finding)"
* SnomedProstateExtension#flexible-prostate "Flexible prostate (finding)"
* SnomedProstateExtension#inflexible-prostate "Inflexible prostate (finding)"
