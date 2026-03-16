Instance: practitioner-doctor-example
InstanceOf: Practitioner
Usage: #example
Title: "Practitioner: Dr. Example Doctor (example)"
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

<<<<<<< Updated upstream
Instance: example-radiologist-role
InstanceOf: $EuPractitionerRoleUrl
=======
Instance: practitioner-role-radiologist-example
InstanceOf: PractitionerRoleEu
>>>>>>> Stashed changes
Usage: #example
Title: "PractitionerRole: Radiologist (example)"
* practitioner = Reference(practitioner-doctor-example)
* organization = Reference(organization-lt-example)
* code.text = "Radiologist"
