Instance: encounter-prostate-diagnostic-example
InstanceOf: EncounterLt
Usage: #example
Title: "Encounter: Prostate diagnostic visit (example)"
Description: "Ambulatory prostate cancer screening encounter."
* status = #completed
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(patient-male-example)
* participant
  * type = $v3-ParticipationType#ATND "attender"
  * actor = Reference(Practitioner/practitioner-eucore-example)
* actualPeriod
  * start = "2025-09-22T10:00:00Z"
  * end = "2025-09-22T11:00:00Z"   
* type = $sct#20135006 "Screening procedure"
* serviceType.concept = $sct#113011001 "Palpation (procedure)"
* serviceProvider = Reference(Organization/organization-lt-example)

// Instance: ExampleBreastStep1Encounter
// InstanceOf: LTBaseEncounter
// Usage: #example
// Title: "Example – Breast Imaging Visit (Step 1)"
// * status = #completed
// * class = $v3-ActCode#AMB "Ambulatory"
// * subject = Reference(example-patient)
// * participant
//   * type = $v3-ParticipationType#ATND "attender"
//   * period
//     * start = "2024-06-15T09:30:00+03:00"
//     * end = "2024-06-15T10:00:00+03:00"
//   * actor = Reference(practitioner-eucore-example)
// * actualPeriod
//   * start = "2024-06-15T09:30:00+03:00"
//   * end = "2024-06-15T10:00:00+03:00"
// * serviceProvider = Reference(organization-lt-example)

