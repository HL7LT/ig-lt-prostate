# Prostate programme report (ImagingReport + Composition)

This page describes how **one coherent programme record** for Lithuanian **prostate cancer prevention and early diagnosis** can use **LT Base** **ImagingReportLt** with a linked **ImagingCompositionLt**-based document: the report lists structured **Observation** results; the composition groups **human-readable sections** and imaging references (study, findings, impression), following the same **document anchor** idea as **CVD** and **pathology** in other national IGs.

## Roles of the resources

* **[ProstateReportLtProstate](StructureDefinition-prostate-report-lt-prostate.html)** — **DiagnosticReport** specialised on **ImagingReportLt**. It carries identifiers, status, effective time, **study**, **performer**, and a **`result`** list of **Observation** resources (PI-RADS, sequence scores, PI-QUAL, PRECISE, Gleason/ISUP when modelled as observations, etc.). It points to exactly one **[ProstateCompositionLtProstate](StructureDefinition-prostate-composition-lt-prostate.html)** for the narrative document. **PSA** and related context may appear in **`supportingInfo`** (typed references to **ObservationLt**), consistent with base patterns.

* **[ProstateCompositionLtProstate](StructureDefinition-prostate-composition-lt-prostate.html)** — **Composition** on **ImagingCompositionLt**: fixed **imaging** sections (e.g. imaging study, order, history, procedure, comparison, findings, impression, recommendation). **Narrative** in **`section.text`** SHALL support reading without resolving every reference.

**DiagnosticReportLt** restricts **`result`** to **Observation** only. Authoritative **pathology** **DiagnosticReport** instances (**PathologyReportLtLab** in **LT Lab**) are **not** duplicated in **`result`**. Link them via **Encounter**, **document bundles**, or programme documentation; the **[LT Lab pathology workflow](https://build.fhir.org/ig/HL7LT/ig-lt-lab/pathology-workflow.html)** shows **[PathologyCompositionLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-composition-lt-lab.html)** and **[PathologyReportLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-report-lt-lab.html)**.

## Examples in this IG

* [DiagnosticReport: Prostate programme report (example)](DiagnosticReport-diagnosticreport-prostate-programme-report-example.html)
* [Composition: Prostate programme document (example)](Composition-composition-prostate-programme-example.html)

They align with the **[workflow](workflow.html)** and reuse the same patient and imaging examples as other prostate instances.

## Relation to MpMRIReportLtProstate

**[MpMRIReportLtProstate](StructureDefinition-mpmri-report-lt-prostate.html)** specialises **EU** **ImDiagnosticReport** for **mpMRI** with **ProstateMriTypeVS** and **Composition** references to **EU** imaging composition. Use it for **EU imaging R5**-aligned mpMRI reporting. Use **ProstateReportLtProstate** when the **national** **ImagingReportLt** / **ImagingCompositionLt** stack is required.

## Cross-IG measurements (published CI Build)

Raw **vital signs** and **lifestyle** data are usually profiled in **LT VitalSigns** and **LT Lifestyle**:

* [Blood pressure (example)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html)
* [Body height (example)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html)
* [Tobacco use (example)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html)
* [Alcohol consumption (example)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html)

## Relation to questionnaires

National **ESPBI** forms may be captured as **[Questionnaire](https://hl7.org/fhir/questionnaire.html)** / **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** — see **[Questionnaires](questionnaire.html)** for **ConceptMap**-based mapping to profiles. That path is **orthogonal** to **ProstateReport**; implementers may store form captures, derive **Observations**, or use both.
