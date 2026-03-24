# Lithuanian Prostate Cancer Prevention and Diagnostic Implementation Guide

## Introduction and Purpose

This **Implementation Guide (IG)** specifies how to consistently represent and exchange **structured clinical data** related to the **Prostate Cancer Prevention and Early Diagnostic Programme** using the **Fast Healthcare Interoperability Resources (FHIR)** standard.

The guide supports the national programme for the **early detection, diagnosis, monitoring, and follow-up of prostate cancer** by defining **interoperable data structures** for **laboratory testing, imaging, clinical interpretation, referrals, invasive diagnostics, and pathology reporting**. Its purpose is to enable:

* **consistent and high-quality data capture** across healthcare providers,
* **semantic interoperability** between **laboratory, radiology, urology, pathology, and clinical systems**,
* **structured reporting** for **programme monitoring, quality assurance, and secondary use**,
* and reliable **longitudinal follow-up of patients** across diagnostic and surveillance episodes.

The guide is developed as part of the national **ADP project** to support **coordinated, data-driven management** of preventive and early diagnostic programmes in Lithuania.

## Audience

This guide is intended for **implementation guide authors, system vendors, integrators, healthcare solution developers, and clinical stakeholders** involved in exchanging **prostate cancer screening and diagnostic data using FHIR**. Readers are expected to have at least a **basic familiarity with FHIR** and to refer to the **core FHIR specification** where additional background is needed.

## Scope and Key Content

This guide focuses on the **prostate cancer prevention and diagnostic workflow**, which combines **population-level screening**, **diagnostic imaging**, **risk stratification**, and **longitudinal monitoring**.

It covers the following **clinical domains**:

* **Laboratory testing** — primarily **Prostate-Specific Antigen (PSA)** measurement,
* **Imaging acquisition** — multiparametric or biparametric **prostate MRI**,
* **Radiological interpretation and reporting** using:
  * **PI-RADS** for **lesion-level risk stratification**,  
  * **PRECISE** for **exam-level longitudinal assessment of disease change over time**,
* **Detailed anatomical localisation** using the **PI-RADS 39-sector model**, represented with **SNOMED CT body structure codes**,
* **Support for clinical workflow coordination**, including referrals across specialties,
* **Invasive diagnostic procedures such as prostate biopsy** (referenced and integrated via related IGs),
* **Pathological examination and reporting** (integrated via related laboratory IGs),
* **Active surveillance and longitudinal monitoring** for low-risk disease.

The guide models prostate cancer prevention and diagnostics as a **longitudinal, decision-driven, multidisciplinary process** integrating **laboratory, radiology, urology, and pathology** into a coherent information model.

## Key Modelling Principles

The modelling approach is based on the following **core principles**:

1. **Separation of data acquisition and interpretation**  
   Laboratory tests and imaging procedures generate structured datasets, while **interpretation, assessment, and diagnosis** are represented separately.

2. **Explicit separation of clinical observation and workflow logic**  
   **PI-RADS and PRECISE assessments** represent observations, while **clinical actions** (e.g. referrals, biopsies, treatment decisions) represent workflow processes.

3. **Domain-specific modelling**  
   PSA testing, prostate MRI, radiological scoring, biopsy, and pathology require **specialized profiles and modelling approaches**.

4. **Longitudinal coherence**  
   All data elements are designed to support **linkage across time**, enabling **continuous clinical history tracking** across screening and follow-up.

5. **Structured but flexible documentation**  
   The guide supports **fully structured**, **partially structured**, and **narrative data**, allowing both interoperability and clinical nuance.

6. **High-resolution anatomical localisation**  
   Prostate lesions are localized using the **PI-RADS 39-sector model**, enabling **precise and standardized anatomical referencing**.

7. **Lesion-centric scoring with exam-level interpretation**  
   * **PI-RADS assessments** and MRI sequence scores are **lesion-based**  
   * **PRECISE assessments** are **exam-level and longitudinal**

## Radiology Assessment Architecture

The guide follows a **layered radiology modelling approach**:

* **LTProstateMpMRIReport** — clinical and temporal anchor for each MRI examination  
* **LTProstateLesion (BodyStructure)** — anatomically localized lesions using the PI-RADS model  
* **PI-RADS assessments** — assigned **per lesion**  
* **Sequence scores (T2, DWI, ADC, DCE)** — recorded **per lesion and per sequence**  
* **PI-QUAL** — represents **exam-level image quality**  
* **PRECISE** — represents **exam-level longitudinal change**, linked to prior MRI examinations  

This structure ensures clear separation between **data acquisition**, **lesion characterization**, and **longitudinal disease assessment**.

## Content of the Guide

This guide provides:

* **FHIR profiles and extensions** for prostate cancer screening, imaging, assessment, and reporting,
* **terminology bindings** using **SNOMED CT, LOINC, and ICD-10-AM**,
* **structured example instances** illustrating clinical scenarios,
* mappings from **clinical programme datasets to interoperable FHIR artefacts**,
* a detailed **real-life prostate mpMRI example** showing how narrative radiology content is represented using the profiles defined in this guide,
* and supporting documentation for **workflow**, **report structure**, and **questionnaire-based data capture**.

The guide includes both the full set of published artifacts and a detailed **MRI Example** page that demonstrates the representation of a real-world prostate mpMRI workflow in structured FHIR form.

## Why Use This Guide?

By adopting these profiles and guidance, implementers can support a standardized approach to:

- **Interoperability:** Enable **consistent, semantic exchange** of prostate cancer screening and diagnostic data across **laboratory, radiology, urology, and pathology systems**.
- **Data Quality:** Improve the **consistency**, **completeness**, and **comparability** of structured diagnostic and imaging data.
- **Clinical Utility:** Support **structured reporting**, **programme monitoring**, **quality assurance**, and **clinical decision support**.
- **Longitudinal Care:** Enable **linkage of screening, diagnostics, and follow-up data** across time and providers.

## How to Navigate This Guide

This guide is organized into several sections that support implementation from overview to detailed conformance artifacts. All **conformance** and **example resources** are listed on the [**Artifacts**](artifacts.html) page. Key sections include:

- [**Artifacts**](artifacts.html) — Complete list of **profiles, extensions, terminology resources, and example instances** defined by this guide.
- [**Workflow**](workflow.html) — Overview of the **clinical pathway and diagnostic process**.
- [**Prostate Report**](prostate-report.html) — Structure of the **ImagingReport and Composition bundle**.
- [**Questionnaires**](questionnaire.html) — Structured **ESPBI-style forms and data capture models**.
- [**MRI Example**](prostate-mpmri-example.html) — Detailed **real-life prostate mpMRI example** showing how findings, assessments, imaging context, and report structure are represented in FHIR.

## IP Statements
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

## Contributors

| Name | Role | Organization |
|------|------|--------------|
| [Igor Bossenko](https://about.askigor.eu) | Primary Author | [HELEX Solutions](https://helex.solutions) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Co-Author | [HELEX Solutions](https://helex.solutions) |
| Martynas Bieliauskas | Reviewer | [LMB](https://lmb.lt) |