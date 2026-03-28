Profile: LesionLtProstate
Parent: $EuBodyStructureUrl
Id: lesion-lt-prostate
Title: "BodyStructure: Prostate Lesion"
Description: """
An anatomical prostate lesion identified on MRI and localized using
the PI-RADS 39-sector model.
Lesion location is encoded using specific SNOMED CT body structure
concepts representing exact prostate sectors (base/mid/apex, zone,
side and position).
"""
* ^url = $lesion-lt-prostate-url
* patient 1..1
* patient only Reference(PatientLt)
* includedStructure 1..1
* includedStructure.structure 1..1
* includedStructure.structure from $prostate-pirads-sector-url (required)
// TODO 2.2: Add lesion size/dimensions (mm) per Excel mpMRI requirements
* morphology 0..1
* description 0..1
