Instance: example-practitioner
InstanceOf: Practitioner
Title: "Example of Practitioner"
Usage: #example
* name.text = "Registrar"
* qualification.code = $sct#224538006 "Triage nurse (occupation)"

Instance: example-doctor
InstanceOf: Practitioner
Title: "Example of Doctor"
Usage: #example
* name.text = "Radiologist"
* qualification.code = $sct#78729002 "Diagnostic radiologist"

Instance: example-radiologist-role
InstanceOf: PractitionerRoleEu
Usage: #example
Title: "Example Radiologist Role"
* practitioner = Reference(example-doctor)
* organization = Reference(example-organization)
* code.text = "Radiologist"
