# Apžvalga: Longitudinalus priežiūros kelias

## Prostatos vėžio atrankos ir diagnostikos darbo eiga

Prostatos vėžio darbo eiga yra struktūrizuotas, longitudinalus procesas, palaikantis **ankstyvą aptikimą**, **rizikos stratifikaciją** ir **diagnozę**. Ji pereina nuo populiacijos lygio laboratorinės atrankos prie pažangaus pažeidimų lygio vaizdinimo, kulminuojant daugiadalykiais klinikiniais sprendimais (įskaitant **laboratorines**, **vaizdinimo**, **radiologinio vertinimo** ir **patologines** ataskaitas).

Skaitmeniniame ekosistemoje tai atspindi Prostatos programos ataskaita, kuri sujungia struktūrizuotą DiagnosticReport (duomenų inkarą) su Composition (žmonėms skaitomą naratyvą). Ankstesni žingsniai naudoja **LT Base**, **LT VitalSigns**, **LT Lab** ir **LT Lifestyle** demografiniams duomenims, gyvybiniams rodikliams, laboratoriniams tyrimams, [patologijos darbo eigoms](https://build.fhir.org/ig/HL7LT/ig-lt-lab/pathology-workflow.html) ir elgesio duomenims, kur taikytina.

## Programos įtraukimas ir tinkamumas

ADPP (ankstyvo diagnozavimo ir prevencijos programa) seka dalyvius per **[ScreeningCarePlanLtProstate](StructureDefinition-screening-careplan-lt-prostate.html)**, kuris fiksuoja įtraukimo būseną, rizikos grupę ir suplanuotas veiklas.

### Tikslinės populiacijos kriterijai

| Kriterijus | Standartinė grupė | Padidėjusios rizikos grupė |
|------------|------------------|-----------------------------|
| **Lytis** | Vyriška | Vyriška |
| **Amžius** | 50–69 metai (imtinai) | 45–49 metai (imtinai) |
| **Šeimos anamnezė** | — | Tėvas arba brolis, kuriam diagnozuotas prostatos vėžys |
| **Periodiškumas** | PSA kas 2 metus | PSA kas 2 metus |

**Specialios taisyklės:**
- Vyrams iki 59 metų, kurių PSA < 1 ng/ml: paslauga ne dažniau kaip kartą per 5 metus
- Vyrams 60–69 metų, kurių PSA < 1 ng/ml: nebekviečiami dalyvauti

Šeimos anamnezė fiksuojama naudojant **[FamilyMemberScreeningHistoryLtLifestyle](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/StructureDefinition-family-member-screening-history-lt-lifestyle.html)** iš **LT Lifestyle** su SNOMED situacijos kodais (414205003 prostatos, 429740004 krūties, 2301000119106 kiaušidžių, 312824007 gaubtinės žarnos vėžys).

## I fazė: Atranka ir laboratorinis vertinimas

* Procesas paprastai pradedamas **pirminės sveikatos priežiūros arba urologijos** vizitu, **Prostatos specifinio antigeno (PSA)** tyrimu ir **[skaitmenine tiesiosios žarnos apžiūra (PTP)](StructureDefinition-dre-observation-lt-prostate.html)**.
* Klinikinis trigeris: Gydytojas inicijuoja PSA tyrimą kaip rutininės atrankos arba klinikinės indikacijos dalį.
* Duomenų pateikimas: PSA rezultatai fiksuojami kaip struktūrizuoti Observation ištekliai. Jie yra pagrindinis siuntimo į vaizdinimą trigeris.

### PSA ribinių verčių sprendimų taisyklės

| PSA rezultatas | Amžius | Veiksmas |
|---------------|--------|---------|
| PSA < 1 ng/ml | iki 59 metų | Pakartotinis kvietimas po **5 metų** (T16) |
| PSA 1–3 ng/ml | iki 69 metų | Pakartotinis kvietimas po **2 metų** (T17) |
| PSA < 1 ng/ml | 60–69 metų | **Išėjimas iš programos** — nebėra kviečiami (T18) |
| PSA > 3 ng/ml | bet koks | **Siuntimas urologui** (T19, forma E027) |

Kontekstiniai duomenys: Palaikanti informacija, pvz., amžius, tendencijos per laiką, gyvenimo būdo veiksniai (pvz., tabako ar alkoholio vartojimas iš **LT Lifestyle** profilių) ir antropometriniai duomenys bei gyvybiniai rodikliai (naudokite **LT VitalSigns** profilius — [BodyHeight](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/StructureDefinition-body-height.html), [BodyWeight](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/StructureDefinition-body-weight.html), [BMI](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/StructureDefinition-bmi.html)), susieti siekiant suteikti klinikinį kontekstą. Antikoaguliantų vartojimas fiksuojamas per **[MedicationStatementLtLifestyle](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/StructureDefinition-medication-statement-lt-lifestyle.html)**.

### Siuntimo formos (ESPBI)

Programa naudoja šias ESPBI elektronines formas siuntimams:

| Žingsnis | Forma | Aprašymas | Klausimynas |
|---------|-------|-----------|-------------|
| T19 | **E027** | Siuntimas urologui | [ADPP klausimynas](Questionnaire-questionnaire-prostate-adpp-primary-assessment.html) |
| T22 | **E027** | Siuntimas radiologui mpMRI atlikimui | [Radiologo siuntimo klausimynas](Questionnaire-questionnaire-prostate-radiologist-referral.html) |
| T26 | **E014** | Siuntimas patologui (biopsijos užsakymas) | [Patologo siuntimo klausimynas](Questionnaire-questionnaire-prostate-pathologist-referral.html) |
| T29 | **E090/a** | Pirminio onkologinio diagnozės pranešimas | — |

### II fazė: Vaizdinimo atlikimas ir kokybė (MRT)

Jei tai indikuojama PSA lygiais arba klinikiniu rizikingumu, atliekamas prostatos MRT — **biparametrinis (bpMRT)** arba **multiparametrinis (mpMRT)**.

* **Vaizdinimo atlikimas:** Techniniai duomenys fiksuojami kaip vaizdinimo ištekliai. Šiame etape interpretacija nefiksuojama.
* **PI-QUAL vertinimas:** Radiologas priskiria **PI-QUAL balą** tyrimo lygmeniu. Tai nurodo, ar vaizdo kokybė pakankama patikimam PI-RADS vertinimui.
* **Techninis susiejimas:** Naudokite MpMRIReportLtProstate ES suderintoms ataskaitoms arba ProstateReportLtProstate nacionalinio lygio atitikčiai.

### III fazė: Radiologinis vertinimas (pažeidimų lygmeniu)

Radiologai nustato ir vertina atskirus pažeidimus naudodami PI-RADS sistemą.

**Pažeidimų nustatymas**

Kiekvienas pažeidimas vertinamas kaip struktūrizuotas anatominis vienetas naudojant PI-RADS 39-sektorių modelį, dokumentuojant:
* Lokalizaciją: zona, lygis (bazė, vidurinis prostatos, viršūnė), pusė ir padėtis.
* Morfologiją: aktualius deskriptorius ir anatominius atskaitos taškus.

**Sekų ir PI-RADS vertinimas**

Kiekvienam nustatytam pažeidimui priskiriami individualūs sekų balai (T2W, DWI, ADC ir DCE). Jie kulminuoja **PI-RADS vertinimu**, atspindinčiu kliniškai reikšmingo vėžio tikimybę _tam konkrečiam pažeidimui_.

### IV fazė: Struktūrizuota diagnostinė ataskaita

Visi radiniai sudedami į nuoseklų programos įrašą. Šis įrašas susideda iš dviejų pagrindinių techninių komponentų:

| Komponentas | Ištekliaus tipas | Turinys |
| --- | --- | --- |
| Duomenų ataskaita | DiagnosticReport | Struktūrizuotas stebėjimų sąrašas (PI-RADS, PI-QUAL, sekų balai ir kt.) |
| Naratyvas | Dok. Composition | Žmonėms skirtos sekcijos: radiniai, įspūdis ir rekomendacijos. |

Pastaba: Patologiniai rezultatai (Gleason/ISUP) siejami per Encounter arba supportingInfo, bet išlieka valdomi LT Lab patologijos darbo eigoje, siekiant išvengti duomenų dubliavimo.

### V fazė: Biopsija ir patologinė išvada

Jei MRT atskleidžia didelės rizikos (PI-RADS 4–5) arba nerimą keliančius vidutinės rizikos (PI-RADS 3) pažeidimus, atliekama biopsija.

* **Procedūra:** Atliekami vaizdinimo valdomi biopsijos mėginiai iš taikinių ir (arba) sisteminių sričių.
* **Patologija:** Audinių analizė suteikia galutinę diagnozę, įskaitant Gleason laipsniavimą (**[GleasonIsupObservationLtProstate](StructureDefinition-gleason-isup-observation-lt-prostate.html)**) ir naviko klasifikavimą.
* **Integracija:** Šie rezultatai siejami su vaizdinimo kontekstu, kad būtų suformuotas išsamus klinikiinis paveikslas.

### VI fazė: Longitudinalus stebėjimas (PRECISE)

Pacientų, esančių aktyvaus stebėjimo programoje, pakartotiniai MRT stebimi naudojant PRECISE sistemą.

* **Tyrimo lygio vertinimas:** Skirtingai nuo PI-RADS (pažeidimų specifinio), PRECISE vertina bendrą ligos pokytį (Regresiją, Stabilumą arba Progresiją) lyginant su ankstesniais tyrimais.
* **Stebėjimas:** Struktūrizuotas modelis leidžia susieti konkrečius pažeidimus per laiką, suteikdamas galimybę standartizuotai stebėti ligos evoliuciją.

### Klinikinių sprendimų logikos santrauka

Darbo eiga išlaiko griežtą atskyrimą tarp Vertinimo (duomenų) ir Sprendimo (veiksmo).

* **Žemas PI-RADS:** Tolesnis atrankinis tikrinimas arba rutininis stebėjimas.
* **Vidutinis PI-RADS:** Trumpalaikis tolesnis stebėjimas arba papildomas vertinimas.
* **Aukštas PI-RADS:** Siuntimas urologui biopsijai.

## Programos dokumentų paketas (Prostatos ataskaita + kompozicija)

Dėl **vieno keičiamo su vaizdinimo klase suderinto įrašo**, suderinto su **LT Base** **ImagingReportLt**, šis vadovas apibrėžia **[ProstateReportLtProstate](StructureDefinition-prostate-report-lt-prostate.html)** ir **[ProstateCompositionLtProstate](StructureDefinition-prostate-composition-lt-prostate.html)**. **DiagnosticReport** išvardija **Observation** rezultatus (PSA susiję duomenys gali pasirodyti **supportingInfo**; PI-RADS, PI-QUAL, PRECISE ir kt. **result** lauke). **Composition** naudoja **vaizdinimo kompozicijos** sekcijų išdėstymą (tyrimas, užsakymas, anamnezė, procedūra, palyginimas, radiniai, įspūdis, rekomendacija). **Patologinis DiagnosticReport** **neįtraukiamas** į `result` (žr. **DiagnosticReportLt**); susiekite jį per **LT Lab** paketus arba susitikimą, kaip parodyta **[prostatos ataskaitos](prostate-report.html)** puslapyje.

**Pavyzdžiai šiame IG**

* [DiagnosticReport: Prostatos programos ataskaita (pavyzdys)](DiagnosticReport-diagnosticreport-prostate-programme-report-example.html)
* [Composition: Prostatos programos dokumentas (pavyzdys)](Composition-composition-prostate-programme-example.html)

**Specializuotas mpMRT profilis:** **[MpMRIReportLtProstate](StructureDefinition-mpmri-report-lt-prostate.html)** išlieka **EU ImDiagnosticReport** suderintas profilis išsamiam mpMRT keitimui; naudokite **ProstateReportLtProstate**, kai reikalingas **nacionalinis ImagingReport** šablonas.

## ESPBI elektroninės formos (Questionnaire)

Nacionalinės **ESPBI** formos (įskaitant patologinių ataskaitų laukus, suderintus su programos skaičiuoklėmis) gali būti pateiktos kaip **[Questionnaire](https://hl7.org/fhir/questionnaire.html)** / **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** — žr. **[Klausimynai](questionnaire.html)**, kur pateikiama **aprėptis lyginant su šaltinių skaičiuoklėmis**, **ConceptMap** susijimai su LT profiliais ir pavyzdžiai. Jie yra **ortogonalūs** **ProstateReport** / **Composition** atžvilgiu.

## Tarpusavio IG pavyzdžiai (CI Build)

Iliustraciniai publikuoti matavimų ir elgesio pavyzdžiai, dažnai siejami su programos vertinimu:

* [Kraujospūdis (VitalSigns)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html)
* [Kūno ūgis (VitalSigns)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html)
* [Tabako vartojimas (Lifestyle)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html)
* [Alkoholio vartojimas (Lifestyle)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html)

## Išsamūs klinikiniai naratyvai (pažeidimai, PI-RADS, PRECISE)

Toliau pateikiami skyriai išplečia **kaip** pažeidimų lygio ir tyrimo lygio vertinimai modeliuojami šiame IG (profiliai ir stebėjimai).

### Laboratorija pagrįsta atranka

Darbo eiga paprastai pradedama **Prostatos specifinio antigeno (PSA)** tyrimu. PSA rezultatas fiksuojamas kaip struktūrizuotas laboratorinis **Observation** ir dažnai inicijuoja tolesnį vertinimą.

### Vaizdinimo atlikimas (prostatos MRT)

Jei indikuojamas tolesnis vertinimas, užsakomas prostatos MRT tyrimas (**bpMRT** arba **mpMRT**). Atlikimo metu pacientas yra; duomenys atspindi tik techninį atlikimą.

### Radiologinis vertinimas ir pažeidimų nustatymas

Radiologas peržiūri MRT sekas ir nustato vieną ar daugiau prostatos **pažeidimų**, su lokalizacija naudojant **PI-RADS 39-sektorių modelį**, zoną, lygį, pusę ir padėtį.

### Pažeidimų lygio sekų vertinimas

Kiekvienam pažeidimui **[SequenceScoreLtProstate](StructureDefinition-sequence-score-lt-prostate.html)** stebėjimai fiksuoja T2, DWI, ADC ir pasirinktinai DCE balus.

### PI-RADS pažeidimų lygio vertinimas

**[PIRADSAssessmentLtProstate](StructureDefinition-pirads-assessment-lt-prostate.html)** suteikia **pažeidimų lygio** PI-RADS kategoriją. Keli pažeidimai gali turėti skirtingus balus.

### Vaizdo kokybės vertinimas (PI-QUAL)

**[PiqualObservationLtProstate](StructureDefinition-piqual-observation-lt-prostate.html)** yra **tyrimo lygio** vaizdo kokybės balas.

### Ekstraprostatinis vertinimas: invazija ir dubens organų pakitimai

Be pažeidimų vertinimo, mpMRT ataskaita turi įvertinti, ar navikas plinta už prostatos ribų. Du profiliai fiksuoja tai:

**[NeoplasmInvasionLtProstate](StructureDefinition-neoplasm-invasion-lt-prostate.html)** fiksuoja tiesioginę invaziją į periprostatines struktūras:

| Struktūra | SNOMED | Laterališkumas | Tikrumas |
|-----------|--------|---------------|----------|
| Prostatos kapsulė | 60405008 | Dešinė / Kairė | Tikėtinas (įtariamas) / Neabejotinas (esamas) |
| Sėklinės pūslelės | 64739004, 279669004 | Dešinė / Kairė / Bazė | Tikėtinas / Neabejotinas |
| Neurovaskuliniai ryšuliai | 59820001 | Dešinė / Kairė | Tikėtinas / Neabejotinas |
| Regioniniai limfmazgiai | 312500006 | Dešinė / Kairė | Esamas (+ laisvas tekstas vietai ir dydžiui) |

**[BladderChangesLtProstate](StructureDefinition-bladder-changes-lt-prostate.html)** fiksuoja šlapimo pūslės pakitimus su dviem komponentais:
- **changeStatus** (privalomas): Nėra / Įtariamas / Esamas (iš `ProstateDamageAndChangeStatusVS`)
- **changeNature** (pasirinktinas): su naviku susijęs / gerybinis / nenavikinis (iš `ProstateChangeNatureVS`)

**[PelvicOrganChangesLtProstate](StructureDefinition-pelvic-organ-changes-lt-prostate.html)** fiksuoja tiesiosios žarnos ir kitų dubens organų pakitimus:

| Struktūra | SNOMED | Pastabos |
|-----------|--------|---------|
| Tiesioji žarna | 34402009 | Su naviku susiję arba kiti |

**[BoneMetastasisLtProstate](StructureDefinition-bone-metastasis-lt-prostate.html)** atskirai fiksuoja kaulų metastazių vertinimą (kodas: SNOMED 94222008 „Antrinis piktybinis kaulų navikas").

Abu profiliai nurodo **BodyStructure** egzempliorių (EU BodyStructure) naudojant kodus iš **[BodyStructureProstateVS](ValueSet-body-structure-prostate.html)**. Kiekvienas BodyStructure egzempliorius turi anatominės struktūros kodą ir pasirinktinį **laterališkumą**. Stebėjimo reikšmė naudoja **[ProstateDamageAndChangeStatusVS](ValueSet-prostate-damage-and-change-status.html)** (Nėra / Įtariamas / Esamas).

#### Laterališkumas ir tikrumas

Excel mpMRT reikalavimai skiria **laterališkumą** (dešinė, kairė, bazė sėklinėms pūslelėms) ir **tikrumą** (Tikėtinas ir Neabejotinas) kiekvienai invazijai atžvilgiu. Jie fiksuojami taip:

- **Laterališkumas** registruojamas **BodyStructure** egzemplioriuje naudojant `includedStructure.laterality` (SNOMED 24028007 dešinė, 7771000 kairė). Sėklinių pūslelių bazei naudojamas atskiras SNOMED kodas (279669004), o ne laterališkumas.
- **Tikrumas** susiejamas su `ProstateDamageAndChangeStatusVS`:
  - *Tikėtinas* (įtariama invazija) → **415684004 Suspected** (įtariamas)
  - *Neabejotinas* (patvirtinta invazija) → **52101004 Present** (esamas)
  - *Invazijos nėra* → **2667000 Absent** (nėra)

Kiekvienas struktūros + laterališkumo + tikrumo derinys sukuria atskirą NeoplasmInvasionLtProstate stebėjimą, nurodantį savo BodyStructure egzempliorių. Pavyzdžiui, „Kapsulė — Tikėtinas: dešinė" sukuria vieną stebėjimą su reikšme=Įtariamas, nurodančią BodyStructure su kapsule + dešine lateraliu.

Atskiras BodyStructure profilis **nėra** apibrėžtas šioms struktūroms — EU BodyStructure profilis su `BodyStructureProstateVS` susiejimu yra pakankamas. Tai skiriasi nuo **[LesionLtProstate](StructureDefinition-lesion-lt-prostate.html)**, kuris turi savo profilį, nes intraprostatiniai pažeidimai reikalauja 39-sektorių PI-RADS žemėlapio ir morfologinių apribojimų.

**Pavyzdžiai:**
- Neoplazmos invazija: [Kapsulės (esamas, dešinė)](Observation-observation-prostatic-capsule-invasion-present-example.html), [Sėklinių pūslelių (įtariamas, kairė)](Observation-observation-seminal-vesicle-invasion-suspected-l-example.html), [Limfmazgio (esamas)](Observation-observation-prostate-lymphnode-invasion-present-l-example.html)
- Šlapimo pūslė: [Su naviku susijęs (įtariamas)](Observation-observation-prostate-bladder-neoplasm-related-example.html), [Gerybiniai pakitimai](Observation-observation-prostate-bladder-benign-example.html)
- Tiesioji žarna: [Tiesiosios žarnos pakitimai (nėra)](Observation-observation-prostate-rectal-changes-absent-example.html)
- Kaulai: [Metastazė (esama)](Observation-observation-prostate-bone-metastasis-present-example.html), [Metastazė (nėra)](Observation-observation-prostate-bone-metastasis-absent-example.html)

### Atsitiktiniai prostatos susirgimų radiniai

mpMRT ir PRECISE formose yra pasirinktinė sekcija **kitiems prostatos susirgimams**, pastebėtiems kartu su pirminiu vertinimu. Naudokite **[ProstateOtherConditionsLtProstate](StructureDefinition-prostate-other-conditions-lt-prostate.html)** šiems atsitiktiniams radiniams fiksuoti naudojant struktūrizuotus SNOMED kodus iš **[ProstateOtherConditionsVS](ValueSet-prostate-other-conditions.html)**:

| Būklė | SNOMED |
|-------|--------|
| Mazginė hiperplazija | 266569009 |
| Prostatitas | 9713002 |
| Fibrotiniai pakitimai | 263756000 |

Susiejimas yra **plečiamas**, todėl laisvo teksto aprašymai gali būti pateikti per `valueCodeableConcept.text`, kai nėra tinkamo standartinio kodo. Įtraukite juos į `ProstateReportLtProstate.result`.

### Sudėjimas į MRT diagnostinę ataskaitą

Radiniai sudedami į struktūrizuotą ataskaitą. Naudokite **[MpMRIReportLtProstate](StructureDefinition-mpmri-report-lt-prostate.html)** ES suderintoms mpMRT ataskaitoms arba **[ProstateReportLtProstate](StructureDefinition-prostate-report-lt-prostate.html)** **ImagingReportLt** programos inkarui.

### Klinikinis sprendimų priėmimas pagal PI-RADS

Klinikinis vertinimas atskiriamas nuo darbo eigos sprendimų (siuntimas, biopsija). PI-RADS lemia veiksmus, pvz., stebėjimas ar siuntimas biopsijai.

### Prostatos biopsija ir patologija

Biopsija atliekama naudojant **[BiopsyProcedureLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-biopsy-procedure-lt-lab.html)** iš **LT Lab**. Biopsijos užsakymai vykdomi pagal **[PathologyOrderLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-order-lt-lab.html)**. Mėginiai sekomi per **[SpecimenLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-lt-lab.html)** ir **[SpecimenBlockLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-block-lt-lab.html)**. Patologiniai rezultatai struktūrizuoti **[PathologyReportLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-report-lt-lab.html)** su **[PathologyCompositionLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-composition-lt-lab.html)**. TNM stadijinimas naudoja **[ProstateConditionLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-prostate-condition-lt-lab.html)**.

Papildomi laboratoriniai stebėjimai: **[SpecimenAdequacyLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-adequacy-lt-lab.html)** (mėginio kokybė), **[SpecimenMeasurementLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-measurement-lt-lab.html)** (bioptato ilgis), **[TumorObservableLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-observable-lt-lab.html)** (naviko savybės).

**Perinevrinė ir limfovaskulinė invazija** fiksuojama kaip struktūrizuoti elementai [patologijos klausimyne](Questionnaire-questionnaire-prostate-pathology-espbi.html) su koduotomis atsakymų galimybėmis (esama / nenustatyta / dviprasmiška / negalima įvertinti) ir pasirinktiniais laisvo teksto pastabomis. [Patologijos ConceptMap](ConceptMap-conceptmap-prostate-pathology-questionnaire-to-fhir-lt-prostate.html) susieja šiuos elementus su LT Lab naviko radinio Observations (SNOMED 369731000 perinevrinė esama, 370051000 nėra; 385414009 limfovaskulinė invazija).

Pilna patologijos darbo eiga: **[LT Lab patologijos darbo eiga](https://build.fhir.org/ig/HL7LT/ig-lt-lab/pathology-workflow.html)**.

### Longitudinalus stebėjimas ir PRECISE vertinimas

**[PreciseAssessmentLtProstate](StructureDefinition-precise-assessment-lt-prostate.html)** apibendrina pokytį lyginant su ankstesniu MRT (regresija, stabilumas, progresija).

### Komunikacija ir ilgalaikė priežiūra

Struktūrizuotas modelis palaiko PSA tendencijas, serijinį MRT, PRECISE ir integraciją su patologija bendriems sprendimų priėmimams.

## Apžvalgos diagrama

```mermaid
flowchart LR
  step1[PrimaryAssessment]
  step2[MRIAcquisition]
  step3[RadiologyPIRADS]
  step4[BiopsyDecision]
  step5[Pathology]
  step6[ManagementFollowUp]
  step1 --> step2
  step2 --> step3
  step3 --> step4
  step4 --> step5
  step5 --> step6
  step6 --> step3
```

Ciklas nuo **ManagementFollowUp** atgal į **RadiologyPIRADS** atspindi **pakartotinius MRT** ir **stebėjimą** per laiką.
