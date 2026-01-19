Alias: $sct = http://snomed.info/sct
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $ucum = http://unitsofmeasure.org

ValueSet: RegionalLymphNodeStatus
Id: lt-regional-lymph-node-status
Title: "Regional Lymph Node Status"
Description: "Codes representing the presence or absence of regional lymph node involvement."
* ^language = #en
* ^status = #active
* ^publisher = "HL7 Lithuania"
* $sct#260413007 "None (qualifier value)"
* $sct#52101004 "Present (qualifier value)"

Profile: LTRegionalLymphNodeInvolvement
Parent: LTBaseObservation
Id: lt-regional-lymph-node-involvement
Title: "Regional Lymph Node Involvement on MRI"
Description: "Observation profile for Regional Lymph Nodes. Records 'No' vs 'There is', with optional text for localization and size in mm."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* category = $observation-category#imaging "Imaging"
* code = $sct#371494008 "Regional lymph node involvement (observable entity)"
* subject 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from RegionalLymphNodeStatus (required)

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

* component contains 
    nodeLocation 0..1 and 
    nodeSize 0..1

* component[nodeLocation].code = $sct#399635006 "Site of lymph node (observable entity)"
* component[nodeLocation].value[x] only string

* component[nodeSize].code = $sct#364109001 "Size of lymph node (observable entity)"
* component[nodeSize].value[x] only Quantity
* component[nodeSize].valueQuantity.system = $ucum
* component[nodeSize].valueQuantity.code = #mm
* component[nodeSize].valueQuantity.unit = "mm"

* method = $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"

Instance: Example-RegionalLymphNode-Present
InstanceOf: LTRegionalLymphNodeInvolvement
Title: "Example: Regional Lymph Nodes - Present"
Description: "Example showing 'There is' damage, with localization text and size."
Usage: #example
* status = #final
* category = $observation-category#imaging "Imaging"
* code = $sct#371494008 "Regional lymph node involvement (observable entity)"
* subject = Reference(Patient/example-patient)

* effectiveDateTime = "2026-01-13T14:30:00+02:00"
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* component[0].code = $sct#399635006 "Site of lymph node (observable entity)"
* component[0].valueString = "Enlarged node near the right iliac artery"
* component[1].code = $sct#364109001 "Size of lymph node (observable entity)"
* component[1].valueQuantity = 15 'mm' "mm"
* method = $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"