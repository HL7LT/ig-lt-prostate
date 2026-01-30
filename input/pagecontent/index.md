# Lithuanian Prostate Cancer Prevention and Diagnostic Implementation Guide

## Introduction and Purpose

This Implementation Guide specifies how to consistently represent and exchange structured clinical data related to the **Prostate Cancer Prevention and Early Diagnostic Programme** using the **HL7® FHIR® standard**.

The guide supports the national programme for the **early detection, diagnosis, monitoring, and follow-up of prostate cancer** by defining interoperable data structures for **laboratory testing, imaging, clinical interpretation, referrals, invasive diagnostics, and pathology reporting**. Its purpose is to enable:

* consistent and high-quality data capture across healthcare providers,
* semantic interoperability between **laboratory, radiology, urology, pathology, and clinical systems**,
* structured reporting for **programme monitoring, quality assurance, and secondary use**,
* and reliable **longitudinal follow-up of patients** across diagnostic and surveillance episodes.

The guide is developed as part of the national **ADP project** to support coordinated, data-driven management of preventive and early diagnostic programmes in Lithuania.

## Scope

This guide focuses specifically on the **prostate cancer prevention and diagnostic workflow**, which combines **population-level screening, diagnostic imaging, risk stratification, and longitudinal monitoring**.

It covers the following clinical domains:

* **Laboratory testing** — primarily **Prostate-Specific Antigen (PSA)** measurement,
* **Imaging acquisition** — multiparametric or biparametric prostate MRI,
* **Radiological interpretation and reporting** using:
  * **PI-RADS** for **lesion-level risk stratification**, and  
  * **PRECISE** for **exam-level longitudinal assessment of disease change over time**,
* Detailed anatomical localisation of prostate findings using the **PI-RADS 39-sector model**, represented with SNOMED CT body structure codes,
* Explicit modelling of **assessment and workflow decisions**,
* **Referrals** to urologists, radiologists, and pathologists,
* **Invasive diagnostic procedures** — prostate biopsy,
* **Pathological histological examination and diagnostic reporting**,
* **Active surveillance and longitudinal monitoring** for low-risk disease.

The guide models prostate cancer prevention and diagnostics as a **longitudinal, decision-driven, multidisciplinary process** integrating laboratory, radiology, urology, and pathology into a single coherent information model.

## Key Modelling Principles

The modelling approach is based on the following core principles:

1. **Separation of data acquisition and interpretation**  
   Laboratory tests and imaging procedures generate structured datasets, while interpretation, assessment, and diagnosis are represented separately as observations, diagnostic reports, and assessments.

2. **Explicit separation of clinical observation and workflow logic**  
   For example, **PI-RADS and PRECISE assessments** represent what is observed, while referrals, biopsies, and treatment decisions represent workflow actions derived from those observations.

3. **Domain-specific modelling**  
   PSA testing, prostate MRI, radiological scoring, biopsy, and pathology require domain-specific profiles that differ fundamentally from general preventive or lifestyle-based models.

4. **Longitudinal coherence**  
   All data elements are designed to support linkage across time, allowing screening results, follow-up imaging, biopsies, pathology, and surveillance data to be connected into a continuous clinical history.  
   PRECISE assessments are modelled as **exam-level longitudinal observations**, linked to prior MRI examinations, enabling standardized tracking of progression, stability, or regression across follow-up studies.

5. **Structured but flexible documentation**  
   The guide supports fully structured, partially structured, and narrative data, allowing both standardized data exchange and necessary clinical nuance.

6. **High-resolution anatomical localisation**  
   Prostate lesions are localized using the full **PI-RADS 39-sector model**, enabling precise, standardized anatomical referencing across imaging, pathology, and longitudinal follow-up.

7. **Lesion-centric scoring with exam-level interpretation**  
   * PI-RADS assessments and MRI sequence component scores (T2, DWI, ADC, DCE) are modelled **per lesion**.  
   * PRECISE assessments are modelled **per exam/patient**, summarizing overall longitudinal change informed by lesion-level findings.

## Radiology Assessment Architecture

The guide follows a layered radiology modelling approach:

* **LTProstateMpMRIReport** acts as the clinical and temporal anchor for each MRI examination.
* **LTProstateLesion (BodyStructure)** represents anatomically localized lesions using the PI-RADS 39-sector model.
* **PI-RADS assessments** are assigned **per lesion**.
* **Sequence scores (T2, DWI, ADC, DCE)** are recorded **per lesion and per sequence**.
* **PI-QUAL** represents **exam-level image quality**.
* **PRECISE** represents **exam-level longitudinal change**, linked to prior MRI examinations.

This structure ensures clear separation between acquisition, lesion characterization, per-sequence scoring, and longitudinal disease assessment.

## Content of the Guide

This guide provides:

* **FHIR profiles and extensions** for prostate cancer screening, imaging, assessment, and diagnosis,
* **terminology bindings** using **SNOMED CT, LOINC and ICD-10-AM**,
* structured **example instances** illustrating real clinical scenarios,
* mappings from **clinical programme datasets to interoperable FHIR artefacts**,
* and identification of gaps and future development needs.

At the current stage, the guide includes the **core workflow** and a **first set of key profiles and examples**. Further refinement, terminology expansion, and clinical validation will be performed in subsequent iterations.

## Why Use This Guide?

By adopting this guide, implementers and healthcare institutions can:

1. **Interoperability:** Ensure consistent and comparable prostate screening and diagnostic data across systems.
2. **Data Quality:** Improve the consistency, completeness, and clinical usefulness of laboratory, imaging, and pathology data.
3. **Clinical Utility:** Support structured reporting, quality assurance, population-level monitoring, and future clinical decision support.
4. **Longitudinal Care:** Enable linkage of screening, diagnostics, treatment, and follow-up across time and providers.

Navigate the sections below to access the profiles, terminology bindings, and detailed examples needed to implement the standard.

### IP Statements
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

### Contributors

| Name                                             | Role           | Organization                  |
|--------------------------------------------------|----------------|-------------------------------|
| [Igor Bossenko](https://about.askigor.eu)        | Primary Author | [HELEX](https://helex.health)|
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Co-Author | [HELEX](https://helex.health)|
| Martynas Bieliauskas                             | Reviewer       | [LMB](https://lmb.lt)        |
