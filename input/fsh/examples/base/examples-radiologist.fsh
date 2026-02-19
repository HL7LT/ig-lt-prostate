Instance: example-doctor
InstanceOf: Practitioner
Usage: #example
Title: "Dr. Example Doctor - Practitioner Example"
Description: "An example Practitioner representing a doctor."
* name
  * use = #official
  * given = "Example"
  * family = "Doctor"
  * prefix = "Dr."
* telecom[0]
  * system = #phone
  * value = "+37065555555"
  * use = #work

Instance: example-radiologist-role
InstanceOf: PractitionerRoleEu
Usage: #example
Title: "Example Radiologist Role"
* practitioner = Reference(example-doctor)
* organization = Reference(example-organization)
* code.text = "Radiologist"
