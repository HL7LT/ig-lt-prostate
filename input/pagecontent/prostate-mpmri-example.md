# Prostate mpMRI example

This page presents a real-life example of a multiparametric prostate MRI (mpMRI) report and shows how the clinical information from the radiology report is represented using the FHIR profiles defined in this implementation guide.

The example is based on a typical clinical mpMRI report containing PSA values, prostate volume, PI-RADS assessment, PRECISE follow-up, lesion localisation, and local staging findings (capsular contact, seminal vesicle, neurovascular bundle, lymph node, bladder, and rectal involvement).

This example illustrates how narrative radiology reports can be transformed into structured, interoperable data that preserves the original clinical meaning while enabling secondary use for clinical decision support, registries, quality assurance, and research.

---

## Modeling approach

In this implementation guide, prostate MRI findings are modeled in a lesion-centric manner. Each relevant lesion is represented explicitly as a BodyStructure resource and as an imaging finding (ImFinding). Imaging-derived observations such as PI-RADS score and sequence-specific scores (T2, DWI, ADC, DCE) reference the lesion via the `focus` element and are grouped under the corresponding imaging finding. This allows multiple observations to be consistently linked to the same anatomical finding and supports longitudinal follow-up and comparison across imaging studies.

Longitudinal assessment is represented using the PRECISE scoring system. The PRECISE observation links the current mpMRI study to prior imaging studies and captures whether new lesions have appeared or whether existing lesions have changed. This enables structured follow-up tracking for patients under active surveillance.

Anatomical localisation of findings in the prostate uses the PI-RADS sector map. Peripheral zone findings are linked to specific PI-RADS sectors using BodyStructure resources with SNOMED CT codes. This supports consistent reporting, spatial analysis, and potential integration with image-based AI systems.

The mpMRI report is represented using both a DiagnosticReport and an EU Imaging Composition. The DiagnosticReport contains the core clinical conclusions and references to observations, while the Composition provides a document-level structure aligned with HL7 Europe guidance, grouping findings, impressions, and recommendations into clinically meaningful sections.

---

## Imaging procedure and study

The imaging examination is represented as a FHIR Procedure and ImagingStudy:

- [Multiparametric prostate MRI procedure](Procedure-procedure-prostate-mpmri-example.html)  
- [Imaging study](ImagingStudy-example-imagingstudy.html)

---

## Main findings

### Lesion and PI-RADS assessment

The main lesion in the anterior transition zone is represented as a BodyStructure and linked imaging observations:

- [Prostate lesion (BodyStructure)](BodyStructure-bodyStructure-prostate-lesion1-example.html)  
- [Lesion imaging finding (ImFinding)](ImFinding-imfinding-prostate-lesion1-example.html)  
- [PI-RADS assessment](Observation-observation-prostate-pirads-lesion1-example.html)  
- [T2 score](Observation-observation-prostate-t2-score-lesion1-example.html)  
- [DWI score](Observation-observation-prostate-dwi-score-lesion1-example.html)  
- [ADC score](Observation-observation-prostate-adc-score-lesion1-example.html)  
- [DCE assessment](Observation-observation-prostate-dce-score-lesion1-example.html)

---

## Peripheral zone findings

Diffuse enhancement in the peripheral zone without a focal lesion is captured as:

- [Peripheral zone diffuse enhancement](Observation-observation-prostate-peripheral-zone-diffuse-enhancement-example.html)  
- [Peripheral zone sector (PI-RADS map)](BodyStructure-bodystructure-prostate-peripheral-zone-mid-right-example.html)

---

## Local staging and organ involvement

Local staging findings from the report are represented as structured observations:

- [Capsular contact (suspected)](Observation-observation-prostate-capsule-invasion-suspected-example.html)  
- [Seminal vesicle invasion (absent)](Observation-observation-prostate-seminal-vesicle-invasion-example.html)  
- [Neurovascular bundle involvement (absent)](Observation-observation-prostate-neurovascular-bundle-invasion-example.html)  
- [Regional lymph node involvement (absent)](Observation-observation-prostate-regional-lymph-node-invasion-example.html)  
- [Urinary bladder wall thickening](Observation-observation-prostate-urinary-bladder-changes-example.html)  
- [Rectal changes (absent)](Observation-observation-prostate-rectum-changes-example.html)

---

## Laboratory values and derived parameters

Key laboratory and derived parameters included in the radiology report are modeled as laboratory observations:

- [PSA](Observation-observation-prostate-psa-example.html)  
- [Prostate volume](Observation-observation-prostate-volume-example.html)  
- [PSA density](Observation-observation-prostate-psad-example.html)

---

## Histopathology context

The known histopathology result used for clinical context and follow-up:

- [Gleason / ISUP Grade Group](Observation-observation-prostate-gleason-gradegroup-example.html)

---

## Longitudinal assessment

Follow-up comparison and PRECISE scoring:

- [PRECISE longitudinal assessment](Observation-observation-prostate-precise-followup-example.html)

---

## Final report

All observations and findings are compiled into a structured imaging report and clinical document:

- [mpMRI DiagnosticReport](DiagnosticReport-diagnosticReport-prostate-mpmri-report-example.html)  
- [mpMRI Composition (EU Imaging Report)](Composition-composition-prostate-mpmri-report-example.html)

This example demonstrates how a real-world prostate mpMRI report can be represented in a structured, interoperable way using FHIR, enabling reuse of imaging findings across clinical care, research, and secondary use scenarios.
