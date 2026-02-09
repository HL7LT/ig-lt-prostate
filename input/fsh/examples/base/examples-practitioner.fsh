Profile: LTBasePractitionerRole
Parent: PractitionerRoleEuCore
Id: lt-practitioner-role
Title: "LT Base Practitioner Role"
Description: "Lithuanian Base Practitioner Role profile, used to define roles of the healthcare practitioner in the healthcare facilities"
* ^experimental = true
* ^status = #active
* practitioner MS
* practitioner only Reference(LTBasePractitioner)
* organization MS
* organization only Reference(LTBaseOrganization)
* code MS
//* code from PractitionerRoleCodeVS (required)
* location MS
* location only Reference(LTBaseLocation)
* specialty MS
Instance: example-practitioner-role
InstanceOf: LTBasePractitionerRole
Usage: #example
Title: "Dr. Petras Kazlauskas at Vilniaus miesto ligoninė - LT Base Practitioner Role Example"
Description: "An example Practitioner Role conforming to the Lithuanian Base Profile."
* practitioner = Reference(example-practitioner)
* organization = Reference(example-organization)
* code[0] = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* active = true