Instance: example-radiologist-role
InstanceOf: PractitionerRoleEu
Usage: #example
Title: "Example Radiologist Role"
* practitioner = Reference(example-doctor)
* organization = Reference(example-organization)
* code.text = "Radiologist"
