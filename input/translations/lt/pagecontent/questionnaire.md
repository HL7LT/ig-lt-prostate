# ESPBI elektroninės formos kaip klausimynai

Lietuvos **prostatos vėžio prevencijos ir ankstyvo diagnozavimo** programos dokumentacija apima **elektronines formas**, suderintas su nacionalinėmis skaičiuoklėmis (pvz., **dr-prostate** patologijai, **ADPP** / konsultacijų lapai tame pačiame darbaknygėje). Šis IG pateikia **[Questionnaire](https://hl7.org/fhir/questionnaire.html)** / **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** pavyzdžius ir **mašininio skaitymo susiejimą** per **[ConceptMap](https://hl7.org/fhir/conceptmap.html)** išteklius.

## Aprėptis

Šio IG klausimynai neatkuria kiekvieno šaltinių failų lauko. Jie yra **iliustraciniai** ir plečiami laikui bėgant.

## Klausimyno ir atsakymų pavyzdžiai

| Forma | Klausimynas | Atsakymų pavyzdys | Aprėptis |
|-------|-------------|-------------------|----------|
| ADPP pirminis vertinimas (E025/E027) | [Questionnaire](Questionnaire-questionnaire-prostate-adpp-primary-assessment.html) | [QuestionnaireResponse](QuestionnaireResponse-questionnaireresponse-prostate-adpp-primary-assessment-example.html) | Klinikiniai blokai, šeimos anamnezė, gyvybiniai rodikliai, PSA anamnezė, ankstesnis mpMRI, ankstesnis gydymas, programos žymos, rasė, PTP (daugiapasirinkimas su SNOMED kodais), sisteminės ligos. Demografiniai duomenys iš **PatientLt**. |
| Radiologo siuntimas (E027) | [Questionnaire](Questionnaire-questionnaire-prostate-radiologist-referral.html) | — | Siuntimas radiologui mpMRI atlikimui. Diagnozė su pasirenkamuoju laipsnių grupavimu, atrankos žyma, klinikine/šeimos anamneze, PTP, antropometriniais duomenimis, PSA, ankstesniais vaizdinimais/gydymais, antikoaguliantais. |
| Patologo siuntimas (E014) | [Questionnaire](Questionnaire-questionnaire-prostate-pathologist-referral.html) | — | Siuntimas patologui biopsijai (forma 014-1-1/a). Biopsijos tipas, audinio fiksavimas, klinikinė diagnozė su stadijinimu, procedūros tipas, mėginių skaičiai pagal lokalizaciją, PSA/PSAT/tūris, PI-RADS. |
| Patologijos ESPBI (dr-prostate poaibis) | [Questionnaire](Questionnaire-questionnaire-prostate-pathology-espbi.html) | [QuestionnaireResponse](QuestionnaireResponse-questionnaireresponse-prostate-pathology-espbi-example.html) | Mėginys, gydymo efektas, histologija, ISUP, IDC, kribrozinė struktūra, naštą/invaziją aprašantys elementai. **Trūksta** (neišsamus): kartojama biopsijos kerno struktūra, visi 4/5 modelio procentiniai žingsniai, sėklinių pūslelių / limfovaskulinės eilutės. |

## FHIR susiejimas (ConceptMap, ne įterptos lentelės)

Susijimai nuo **Questionnaire `linkId`** iki **loginių FHIR tikslų** (profilių, elementų arba pavyzdinių egzempliorių) apibrėžti **FHIR Shorthand** kaip **ConceptMap** egzemplioriai:

| ConceptMap | Šaltinių kodai (`linkId`) | Tikslų kodai (loginis susiejimas) |
|------------|--------------------------|----------------------------------|
| **[ConceptMap: ADPP klausimynas → FHIR](ConceptMap-conceptmap-prostate-adpp-questionnaire-to-fhir-lt-prostate.html)** | [CodeSystem: prostate-adpp-questionnaire-item](CodeSystem-prostate-adpp-questionnaire-item.html) | [CodeSystem: prostate-fhir-mapping-target](CodeSystem-prostate-fhir-mapping-target.html) |
| **[ConceptMap: Patologijos klausimynas → FHIR](ConceptMap-conceptmap-prostate-pathology-questionnaire-to-fhir-lt-prostate.html)** | [CodeSystem: prostate-pathology-questionnaire-item](CodeSystem-prostate-pathology-questionnaire-item.html) | [CodeSystem: prostate-fhir-mapping-target](CodeSystem-prostate-fhir-mapping-target.html) |

**Pastaba:** Radiologo ir patologo siuntimo klausimynai dar neturi specialių ConceptMap. Jų elementai susieti su tais pačiais tiksliniais profiliais, aprašytais ADPP ConceptMap (šeimos anamnezė, PTP, antropometriniai duomenys, PSA, ankstesni vaizdinimais), ir su Lab IG profiliais patologinių užsakymų bei mėginių atveju.

### Pagrindiniai FHIR susiejimo tikslai prostatos klausimynų elementams

| Klausimyno elementas | Tikslo profilis / išteklius |
|---------------------|---------------------------|
| PTP radiniai | **[DreObservationLtProstate](StructureDefinition-dre-observation-lt-prostate.html)** |
| Šeimos anamnezė | **[FamilyMemberScreeningHistoryLtLifestyle](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/StructureDefinition-family-member-screening-history-lt-lifestyle.html)** |
| Ūgis / svoris / KMI | **[BodyHeight](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/StructureDefinition-body-height.html)** / **[BodyWeight](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/StructureDefinition-body-weight.html)** / **[BMI](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/StructureDefinition-bmi.html)** |
| Antikoaguliantų vartojimas | **[MedicationStatementLtLifestyle](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/StructureDefinition-medication-statement-lt-lifestyle.html)** |
| ISUP laipsnių grupė | **[GleasonIsupObservationLtProstate](StructureDefinition-gleason-isup-observation-lt-prostate.html)** |
| Mėginio kokybė | **[SpecimenAdequacyLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-adequacy-lt-lab.html)** |
| Biopsijos procedūra | **[BiopsyProcedureLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-biopsy-procedure-lt-lab.html)** |
| Patologinis užsakymas | **[PathologyOrderLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-order-lt-lab.html)** |
| Naviko stebimi rodikliai | **[TumorObservableLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-observable-lt-lab.html)** |
| Atrankos programa | **[ScreeningCarePlanLtProstate](StructureDefinition-screening-careplan-lt-prostate.html)** |

Kiekvienas **ConceptMap.group.element** turi:

* **`code`** — Klausimyno **linkId** (toks pat kaip šaltinio CodeSystem kodas).
* **`target.code`** — tikslo kodas iš **prostate-fhir-mapping-target** (pvz., `observation-psa-serum`, `encounter-period`).
* **`target.comment`** — naratyvinis susiejimas su **LT Base**, **LT Lab**, **LT Prostate**, **LT VitalSigns** arba **LT Lifestyle** profiliais ir **pavyzdžiais** (įskaitant CI build URL, kur taikytina).

**Prižiūrėtojai:** pridedant arba pervadinant Questionnaire `linkId`, pridėkite **kodą** prie atitinkamo **šaltinio CodeSystem**, pridėkite **ConceptMap** eilutę ir **išplėskite** **tikslinį** CodeSystem, jei pridedate naują susiejimo tikslą.

## Kada naudoti QuestionnaireResponse, o kada Observations

| Metodas | Tipinis naudojimas |
|---------|-------------------|
| **Questionnaire / QuestionnaireResponse** | Tikslus formų užpildymo fiksavimas; užpildytų formų auditas. |
| **Observation**, **DiagnosticReport**, **Condition** (profiliai **LT Prostate**, **LT Lab**, **LT Base**) | **Klinikinė sąveika**, sprendimų palaikymas, longitudinalus stebėjimas. |

**[Prostatos ataskaita](prostate-report.html)** pakete **nereikalaujama** Questionnaire nuorodos; **ConceptMap** aprašo, kaip **išvesti** arba **suderinti** struktūrizuotus išteklius iš formų atsakymų.

## Tarpusavio IG pavyzdžiai (CI Build)

* [Kraujospūdis (VitalSigns)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html)
* [Kūno ūgis (VitalSigns)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html)
* [Tabako vartojimas (Lifestyle)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html)
* [Alkoholio vartojimas (Lifestyle)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html)
* [Patologijos ataskaita (LT Lab)](https://build.fhir.org/ig/HL7LT/ig-lt-lab/DiagnosticReport-diagnosticreport-pathology-report-example.html)
