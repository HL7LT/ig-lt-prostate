Profile: PractitionerRoleLt
Parent: PractitionerRoleEuCore
Id: practitioner-role-lt
Title: "Practitioner Role (LT Base)"
Description: "Lithuanian Base Practitioner Role profile, used to define roles of the healthcare practitioner in the healthcare facilities"
* ^experimental = true
* ^status = #active
* practitioner MS
* practitioner only Reference(PractitionerEuCore)
* organization MS
* organization only Reference(OrganizationEuCore)
* code MS
* location MS
* location only Reference(Location)
* specialty MS

<<<<<<< Updated upstream
Instance: example-practitioner
InstanceOf: LTBasePractitioner
=======
Instance: practitioner-eucore-example
InstanceOf: PractitionerEuCore
>>>>>>> Stashed changes
Usage: #example
Title: "Practitioner: LT Base (example)"
Description: "An example Practitioner conforming to the Lithuanian Base Profile."
* language = #lt
* identifier
  * use = #official
  * system = "http://esveikata.lt/classifiers/Identifier/GYDYTOJAS"
  * value = "1234567890"
* name
  * use = #official
  * given = "Petras"
  * family = "Kazlauskas"
  * prefix = "Dr."
* telecom[0]
  * system = #phone
  * value = "+37061234567"
  * use = #work

Instance: practitioner-role-lt-example
InstanceOf: PractitionerRoleLt
Usage: #example
Title: "PractitionerRole: LT Base (example)"
Description: "An example Practitioner Role conforming to the Lithuanian Base Profile."
* practitioner = Reference(practitioner-eucore-example)
* organization = Reference(organization-lt-example)
* code[0] = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* active = true
