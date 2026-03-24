# ESPBI electronic forms as Questionnaires

Lithuanian **prostate cancer prevention and early diagnosis** programme documentation includes **electronic forms** aligned with national spreadsheets (e.g. **dr-prostate** pathology, **ADPP** / consultation sheets in the same workbook). This IG provides **[Questionnaire](https://hl7.org/fhir/questionnaire.html)** / **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** examples and **machine-readable mapping** via **[ConceptMap](https://hl7.org/fhir/conceptmap.html)** resources.

## Coverage

The Questionnaires in this IG do not reproduce every field from the source files. They are **illustrative** and expanded over time.

## Questionnaire and response examples

| Form | Questionnaire | Example response | Coverage |
|------|---------------|------------------|----------|
| ADPP primary assessment | [Questionnaire](Questionnaire-questionnaire-prostate-adpp-primary-assessment.html) `https://hl7.lt/fhir/prostate/Questionnaire/prostate-adpp-primary-assessment` | [QuestionnaireResponse](QuestionnaireResponse-questionnaireresponse-prostate-adpp-primary-assessment-example.html) | aligns with the main clinical blocks, family history, vital signs, PSA history, prior mpMRI PI-RADS, prior treatment, programme flags; patient identity and demographics fields are omitted (use **PatientLt**). **Prior therapy dates** and **full DRE multiselect** (every SNOMED from sheet) are only **partially** or **summarised** in this Questionnaire.|
| Pathology ESPBI (dr-prostate subset) | [Questionnaire](Questionnaire-questionnaire-prostate-pathology-espbi.html) `https://hl7.lt/fhir/prostate/Questionnaire/prostate-pathology-espbi` | [QuestionnaireResponse](QuestionnaireResponse-questionnaireresponse-prostate-pathology-espbi-example.html) | covers a **subset** (specimen, treatment effect, histology, ISUP, IDC, cribriform, plus a few burden/invasion items). **Missing** from the Questionnaire (non-exhaustive): **repeatable per-biopsy-core** structure, **full** Pattern 4/5 percentage steps, **seminal vesicle / lymphovascular** rows, **sending form** metadata (sheet8), and many SNOMED-specific option rows.|

## FHIR mapping (ConceptMap, not embedded tables)

Mappings from **Questionnaire `linkId`** to **logical FHIR targets** (profiles, elements, or example instances) are defined in **FHIR Shorthand** as **ConceptMap** instances:

| ConceptMap | Source codes (`linkId`) | Target codes (logical mapping) |
|------------|-------------------------|--------------------------------|
| **[ConceptMap: ADPP Questionnaire → FHIR](ConceptMap-conceptmap-prostate-adpp-questionnaire-to-fhir-lt-prostate.html)** | [CodeSystem: prostate-adpp-questionnaire-item](CodeSystem-prostate-adpp-questionnaire-item-lt-prostate.html) | [CodeSystem: prostate-fhir-mapping-target](CodeSystem-prostate-fhir-mapping-target-lt-prostate.html) |
| **[ConceptMap: Pathology Questionnaire → FHIR](ConceptMap-conceptmap-prostate-pathology-questionnaire-to-fhir-lt-prostate.html)** | [CodeSystem: prostate-pathology-questionnaire-item](CodeSystem-prostate-pathology-questionnaire-item-lt-prostate.html) | [CodeSystem: prostate-fhir-mapping-target](CodeSystem-prostate-fhir-mapping-target-lt-prostate.html) |

Each **ConceptMap.group.element** has:

* **`code`** — Questionnaire **linkId** (same as source CodeSystem code).
* **`target.code`** — target code from **prostate-fhir-mapping-target** (e.g. `observation-psa-serum`, `encounter-period`).
* **`target.comment`** — narrative mapping to **LT Base**, **LT Lab**, **LT Prostate**, **LT VitalSigns**, or **LT Lifestyle** profiles and **examples** (including CI build URLs where applicable).

**Maintainers:** when adding or renaming a Questionnaire `linkId`, add a **code** to the corresponding **source CodeSystem**, add a **ConceptMap** row, and **extend** the **target** CodeSystem if you introduce a new mapping target.



## When to use QuestionnaireResponse vs Observations

| Approach | Typical use |
|----------|-------------|
| **Questionnaire / QuestionnaireResponse** | Screen-faithful capture; audit of filled forms. |
| **Observation**, **DiagnosticReport**, **Condition** (profiles in **LT Prostate**, **LT Lab**, **LT Base**) | **Clinical interoperability**, decision support, longitudinal follow-up. |

The **[Prostate report](prostate-report.html)** bundle does **not** require a Questionnaire reference; **ConceptMap** describes how to **derive** or **align** structured resources from form answers.

## Cross-IG examples (CI Build)

* [Blood pressure (VitalSigns)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html)
* [Body height (VitalSigns)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html)
* [Tobacco use (Lifestyle)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html)
* [Alcohol consumption (Lifestyle)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html)
* [Pathology report (LT Lab)](https://build.fhir.org/ig/HL7LT/ig-lt-lab/DiagnosticReport-diagnosticreport-pathology-report-example.html)
