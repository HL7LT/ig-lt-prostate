# ESPBI electronic forms as Questionnaires

Lithuanian **prostate cancer prevention and early diagnosis** programme documentation includes **electronic forms** aligned with national spreadsheets (e.g. **dr-prostate** pathology, **ADPP** / consultation sheets in the same workbook). This IG provides **[Questionnaire](https://hl7.org/fhir/questionnaire.html)** / **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** examples and **machine-readable mapping** via **[ConceptMap](https://hl7.org/fhir/conceptmap.html)** resources.

## Coverage

The Questionnaires in this IG do not reproduce every field from the source files. They are **illustrative** and expanded over time.

## Questionnaire and response examples

| Form | Questionnaire | Example response | Coverage |
|------|---------------|------------------|----------|
| ADPP primary assessment (E025/E027) | [Questionnaire](Questionnaire-questionnaire-prostate-adpp-primary-assessment.html) | [QuestionnaireResponse](QuestionnaireResponse-questionnaireresponse-prostate-adpp-primary-assessment-example.html) | Clinical blocks, family history, vital signs, PSA history, prior mpMRI, prior treatment, programme flags, race, DRE (multiselect with SNOMED codes), systemic diseases. Demographics from **PatientLt**. |
| Radiologist referral (E027) | [Questionnaire](Questionnaire-questionnaire-prostate-radiologist-referral.html) | — | Referral to radiologist for mpMRI. Diagnosis with optional Grade Group, screening flag, clinical/family history, DRE, anthropometrics, PSA, prior imaging/treatments, anticoagulants. |
| Pathologist referral (E014) | [Questionnaire](Questionnaire-questionnaire-prostate-pathologist-referral.html) | — | Referral to pathologist for biopsy (form 014-1-1/a). Biopsy type, tissue fixing, clinical diagnosis with staging, procedure type, specimen counts per location, PSA/PSAT/volume, PI-RADS. |
| Pathology ESPBI (dr-prostate subset) | [Questionnaire](Questionnaire-questionnaire-prostate-pathology-espbi.html) | [QuestionnaireResponse](QuestionnaireResponse-questionnaireresponse-prostate-pathology-espbi-example.html) | Specimen, treatment effect, histology, ISUP, IDC, cribriform, burden/invasion items. **Missing** (non-exhaustive): repeatable per-biopsy-core structure, full Pattern 4/5 percentage steps, seminal vesicle / lymphovascular rows. |

## FHIR mapping (ConceptMap, not embedded tables)

Mappings from **Questionnaire `linkId`** to **logical FHIR targets** (profiles, elements, or example instances) are defined in **FHIR Shorthand** as **ConceptMap** instances:

| ConceptMap | Source codes (`linkId`) | Target codes (logical mapping) |
|------------|-------------------------|--------------------------------|
| **[ConceptMap: ADPP Questionnaire → FHIR](ConceptMap-conceptmap-prostate-adpp-questionnaire-to-fhir-lt-prostate.html)** | [CodeSystem: prostate-adpp-questionnaire-item](CodeSystem-prostate-adpp-questionnaire-item.html) | [CodeSystem: prostate-fhir-mapping-target](CodeSystem-prostate-fhir-mapping-target.html) |
| **[ConceptMap: Pathology Questionnaire → FHIR](ConceptMap-conceptmap-prostate-pathology-questionnaire-to-fhir-lt-prostate.html)** | [CodeSystem: prostate-pathology-questionnaire-item](CodeSystem-prostate-pathology-questionnaire-item.html) | [CodeSystem: prostate-fhir-mapping-target](CodeSystem-prostate-fhir-mapping-target.html) |

**Note:** The radiologist and pathologist referral questionnaires do not yet have dedicated ConceptMaps. Their items map to the same target profiles described in the ADPP ConceptMap (family history, DRE, anthropometrics, PSA, prior imaging) plus Lab IG profiles for pathology orders and specimens.

### Key FHIR mapping targets for prostate questionnaire items

| Questionnaire item | Target profile / resource |
|--------------------|--------------------------|
| DRE findings | **[DreObservationLtProstate](StructureDefinition-dre-observation-lt-prostate.html)** |
| Family history | **[FamilyMemberScreeningHistoryLtLifestyle](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/StructureDefinition-family-member-screening-history-lt-lifestyle.html)** |
| Height / Weight / BMI | **[BodyHeight](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/StructureDefinition-body-height.html)** / **[BodyWeight](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/StructureDefinition-body-weight.html)** / **[BMI](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/StructureDefinition-bmi.html)** |
| Anticoagulant use | **[MedicationStatementLtLifestyle](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/StructureDefinition-medication-statement-lt-lifestyle.html)** |
| ISUP Grade Group | **[GleasonIsupObservationLtProstate](StructureDefinition-gleason-isup-observation-lt-prostate.html)** |
| Specimen quality | **[SpecimenAdequacyLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-adequacy-lt-lab.html)** |
| Biopsy procedure | **[BiopsyProcedureLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-biopsy-procedure-lt-lab.html)** |
| Pathology order | **[PathologyOrderLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-order-lt-lab.html)** |
| Tumour observables | **[TumorObservableLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-observable-lt-lab.html)** |
| Screening programme | **[ScreeningCarePlanLtProstate](StructureDefinition-screening-careplan-lt-prostate.html)** |

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
