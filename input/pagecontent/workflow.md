# Prostate cancer screening and diagnostic workflow

The prostate cancer screening and diagnostic workflow is a structured, longitudinal clinical process that supports the early detection, risk stratification, diagnosis, and follow-up of prostate cancer. The workflow is driven by laboratory testing, diagnostic imaging, structured radiological assessment, and subsequent multidisciplinary clinical decision-making across radiology, urology, and pathology.

The workflow combines population-based screening, lesion-level imaging assessment, and exam-level longitudinal monitoring into a coherent pathway that supports both initial diagnosis and active surveillance.

## Laboratory-based screening

The workflow typically begins with laboratory-based screening using **Prostate-Specific Antigen (PSA)** testing.

A clinician or screening programme initiates PSA testing as part of routine screening or based on clinical indications. The PSA result is captured as a structured laboratory observation and represents the primary trigger for further diagnostic evaluation.

Based on PSA level, trends over time, age, and clinical context, the patient may be referred for prostate MRI as the next diagnostic step.

## Imaging acquisition (prostate MRI)

If further evaluation is indicated, a prostate MRI examination is ordered. This may be a:

- biparametric MRI (bpMRI), or  
- multiparametric MRI (mpMRI).

During the imaging acquisition visit, a radiology technologist performs the MRI examination. The patient is physically present during this encounter.

The imaging data are captured as structured imaging resources and represent the technical acquisition only. At this stage, no diagnostic interpretation is recorded.

## Radiological evaluation and lesion identification

After acquisition, the MRI examination is interpreted by a radiologist, usually in a separate evaluation context without the patient present.

The radiologist reviews the MRI sequences (T2-weighted, DWI, ADC, and optionally DCE) and identifies one or more prostate lesions.

Each lesion is represented as a structured anatomical entity, including:

- precise anatomical localisation using the **PI-RADS 39-sector model**,  
- zone, level (base, mid-gland, apex), side, and position,  
- and relevant morphological descriptors.

These lesion structures form the anatomical anchors for all lesion-level radiological assessments.

## Lesion-level sequence scoring

For each identified lesion, the radiologist assigns individual sequence scores based on:

- T2-weighted imaging,  
- Diffusion-weighted imaging (DWI),  
- Apparent diffusion coefficient (ADC),  
- and, when applicable, Dynamic contrast-enhanced imaging (DCE).

These sequence scores represent the component imaging assessments used to derive the overall PI-RADS score. They are recorded per lesion and per sequence and do not represent a final diagnostic conclusion on their own.

## PI-RADS lesion-level assessment

Using the lesion localisation and sequence-level findings, the radiologist assigns a **PI-RADS assessment** to each lesion.

PI-RADS is explicitly modelled as a **lesion-level risk stratification**, representing the likelihood that a specific lesion is clinically significant prostate cancer.

Each lesion may have its own independent PI-RADS score. Multiple lesions within a single MRI examination may therefore have different PI-RADS categories.

PI-RADS represents the primary lesion-level diagnostic assessment used to guide clinical decision-making.

## Image quality assessment (PI-QUAL)

For each MRI examination, the radiologist assigns a **PI-QUAL score**, representing overall technical image quality.

PI-QUAL is an **exam-level assessment**, not tied to a specific lesion. It indicates whether image quality is sufficient for reliable interpretation and whether PI-RADS results should be interpreted with confidence or caution.

Low PI-QUAL scores indicate potential limitations in diagnostic reliability.

## Compilation into MRI diagnostic report

All imaging findings and assessments are compiled into a structured prostate MRI diagnostic report.

The report acts as the clinical and temporal anchor for the examination and links together:

- lesion definitions and localisation,  
- sequence-level scores,  
- PI-RADS lesion assessments,  
- PI-QUAL image quality assessment,  
- and narrative radiologist conclusions.

The diagnostic report represents the authoritative radiological interpretation of the MRI examination.

## Clinical decision-making based on PI-RADS

A central design principle of the workflow is the explicit separation between:

- clinical assessment (what is observed and classified), and  
- workflow decision logic (what happens next as a result of that assessment).

PI-RADS lesion-level categories act as the primary triggers for further clinical actions, for example:

- Low PI-RADS scores → continued screening or routine follow-up,  
- Intermediate PI-RADS scores → short-interval follow-up or further evaluation,  
- High PI-RADS scores → referral to urology and consideration of prostate biopsy.

These decisions are represented as structured workflow actions such as referrals and procedure requests.

## Prostate biopsy and pathology

If biopsy is indicated, an image-guided prostate biopsy procedure is performed.

Biopsy samples are taken from targeted lesions and/or systematic prostate regions and documented as structured procedures, including anatomical localisation.

The collected tissue specimens are analysed by pathology. Pathological examination includes:

- histological assessment,  
- Gleason grading,  
- tumour classification,  
- and other relevant pathological findings.

The pathology diagnostic report represents the definitive diagnostic conclusion and is linked back to the imaging and clinical context.

## Longitudinal follow-up and PRECISE assessment

For patients undergoing active surveillance or follow-up after initial diagnosis, repeat prostate MRI examinations may be performed.

In follow-up MRI, longitudinal change is assessed using the **PRECISE framework**.

PRECISE is modelled as an **exam-level longitudinal assessment**, not as a lesion-level score. It represents overall disease change compared to a prior MRI examination, based on lesion evolution and imaging findings.

PRECISE categories summarize whether the overall disease status shows:

- regression,  
- stability, or  
- progression.

PRECISE assessments are explicitly linked to prior MRI examinations, enabling standardized tracking of disease evolution across time.

## Communication and longitudinal care

Radiology, urology, and pathology findings are communicated across clinical systems and care teams.

The structured longitudinal model enables:

- tracking of PSA trends,  
- linkage of lesions across time,  
- comparison of serial MRI examinations,  
- standardized assessment of progression using PRECISE,  
- and integration of imaging and pathology for clinical decision-making.

This workflow model reflects real clinical practice while ensuring a clear separation between:

- data acquisition and interpretation,  
- lesion-level assessment and exam-level longitudinal interpretation,  
- clinical observations and workflow decisions,  
- procedural steps and diagnostic conclusions.

It provides a structured and interoperable representation of the prostate cancer screening and diagnostic pathway and supports standardized data exchange, reporting, programme monitoring, and longitudinal patient management within the national prostate cancer prevention and early diagnostic programme.
