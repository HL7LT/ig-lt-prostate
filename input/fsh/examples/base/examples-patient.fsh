Instance: example-male-patient
InstanceOf: LTBasePatient
Usage: #example
Title: "Example of Patient - Tomas Kazlauskas"
Description: "An example male Patient conforming to the Lithuanian Base Profile."
// Identifiers (Required: 1..* MS)
* identifier[0].use = #official
* identifier[0].system = "urn:oid:1.2.3.4.5.6.7.8.9.11"
* identifier[0].value = "38001011234"  // Example Lithuanian personal code (male)
// Optional local hospital identifier
* identifier[1].use = #usual
* identifier[1].system = "http://hospital-lt.lt/patient-id"
* identifier[1].value = "HOSPLT-20001"
// Name
* name[0].use = #official
* name[0].family = "Kazlauskas"
* name[0].given[0] = "Tomas"
* name[0].text = "Tomas Kazlauskas"
// Active Status
* active = true
// Gender
* gender = #male
// Birth Date
* birthDate = "1980-01-01"
// Contact
* telecom[0].system = #phone
* telecom[0].value = "+370 61234567"
* telecom[0].use = #mobile
// Address
* address[0].use = #home
* address[0].line[0] = "Kalvarijų g. 25"
* address[0].city = "Vilnius"
* address[0].country = "LT"
* address[0].postalCode = "LT-09309"
