# LT Prostate Implementation Guide

This repository contains the source content for the **Lithuanian Prostate Cancer Screening and Diagnostic FHIR Implementation Guide**.

The guide defines how structured clinical data related to prostate cancer screening and diagnostics can be represented and exchanged using the **HL7 FHIR standard**.

## Purpose

The purpose of this Implementation Guide is to support:

- Interoperable exchange of prostate cancer screening and diagnostic data
- Consistent structured reporting across laboratories, radiology, pathology, and clinical systems
- Longitudinal linkage of screening, diagnostics, and follow-up
- National programme monitoring, quality assurance, and secondary use of data

## Clinical Scope

The guide covers the following areas:

- PSA testing and laboratory screening
- Clinical assessment and referral
- Prostate imaging (e.g. MRI, PI-RADS)
- Diagnostic and follow-up decisions
- Prostate biopsy procedures
- Pathology and histological diagnosis

The overall workflow is modelled as a **multi-step, decision-driven clinical process** spanning screening, diagnostics, and confirmation.

## Repository Structure

- `input/fsh/` — FHIR Shorthand (FSH) profiles, extensions, examples, and rules  
- `input/pagecontent/` — Markdown content for the IG website (including `index.md`)  
- `output/` — Generated Implementation Guide (after build)  
- `sushi-config.yaml` — SUSHI configuration  
- `ig.ini` — IG Publisher configuration  

## Building the Guide

### Prerequisites

- Java (for the IG Publisher)
- Node.js
- SUSHI (`npm install -g fsh-sushi`)


### Basic workflow

Before building, make sure your local repository is up to date:

```bash
git pull
```

After making changes, remember to commit and push:

```bash
git add .
git commit -m "Update IG content"
git push
```

---

### Build steps — Windows

Run:

```bat
_genonce.bat
```

When the build completes, open the generated guide:

```bat
start output\index.html
```

---

### Build steps — macOS / Linux

1. Generate FHIR resources from FSH:

```bash
sushi .
```

2. Run the IG Publisher:

```bash
./_genonce.sh
```

If `_genonce.sh` is not available, use:

```bash
./_build.sh
```

When the build completes, open the generated guide:

```bash
open output/index.html
```

---

The generated site is located in the `output/` folder.

## Status

This guide is under active development and will evolve based on:

- Clinical validation
- Feedback from implementers
- Terminology refinement
- Alignment with European and international standards

## Licence

This project is licensed under the MIT License unless stated otherwise.

## Contributors

- Igor Bossenko — Primary author
- Kati Laidus — Co-author
- Martynas Bieliauskas — Reviewer