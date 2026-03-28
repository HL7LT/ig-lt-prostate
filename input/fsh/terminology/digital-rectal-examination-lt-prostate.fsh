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
