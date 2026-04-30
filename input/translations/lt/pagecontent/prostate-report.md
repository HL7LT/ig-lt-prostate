# Prostatos programos ataskaita (ImagingReport + Composition)

Šiame puslapyje aprašoma, kaip **vienas nuoseklus programos įrašas**, skirtas Lietuvos **prostatos vėžio prevencijai ir ankstyvai diagnostikai**, gali naudoti **LT Base** **ImagingReportLt** su susietu **ImagingCompositionLt** pagrindu sukurtu dokumentu: ataskaita išvardija struktūrizuotus **Observation** rezultatus; kompozicija grupuoja **žmonių skaitomas sekcijas** ir vaizdinimo nuorodas (tyrimas, radiniai, įspūdis), laikantis tos pačios **dokumento inkaro** idėjos kaip **KKL** (širdies ir kraujagyslių ligos) ir **patologijoje** kituose nacionaliniuose IG.

## Išteklių vaidmenys

* **[ProstateReportLtProstate](StructureDefinition-prostate-report-lt-prostate.html)** — **DiagnosticReport**, specializuotas **ImagingReportLt** pagrindu. Jame yra identifikatoriai, būsena, efektyvaus laiko žymė, **tyrimas**, **vykdytojas** ir **`result`** sąrašas su **Observation** ištekliais (PI-RADS, sekų balai, PI-QUAL, PRECISE, Gleason/ISUP, kai modeliuojama kaip stebėjimai ir kt.). Jis nurodo tiksliai vieną **[ProstateCompositionLtProstate](StructureDefinition-prostate-composition-lt-prostate.html)** naratyviniam dokumentui. **PSA** ir susijęs kontekstas gali būti **`supportingInfo`** (tipiškos nuorodos į **ObservationLt**), suderinta su baziniais šablonais.

* **[ProstateCompositionLtProstate](StructureDefinition-prostate-composition-lt-prostate.html)** — **Composition**, paremta **ImagingCompositionLt**: fiksuotos **vaizdinimo** sekcijos (pvz., vaizdinimo tyrimas, užsakymas, anamnezė, procedūra, palyginimas, radiniai, įspūdis, rekomendacija). **Naratyvas** **`section.text`** TURI palaikyti skaitymą nereikalaujant visų nuorodų.

**DiagnosticReportLt** apriboja **`result`** tik **Observation**. Autoritetingi **patologiniai** **DiagnosticReport** egzemplioriai (**PathologyReportLtLab** **LT Lab** IG) **nedubliuojami** **`result`** lauke. Susiekite juos per **Encounter**, **dokumentų paketus** arba programos dokumentaciją; **[LT Lab patologijos darbo eiga](https://build.fhir.org/ig/HL7LT/ig-lt-lab/pathology-workflow.html)** rodo **[PathologyCompositionLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-composition-lt-lab.html)** ir **[PathologyReportLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-report-lt-lab.html)**.

## Pavyzdžiai šiame IG

* [DiagnosticReport: Prostatos programos ataskaita (pavyzdys)](DiagnosticReport-diagnosticreport-prostate-programme-report-example.html)
* [Composition: Prostatos programos dokumentas (pavyzdys)](Composition-composition-prostate-programme-example.html)

Jie suderinti su **[darbo eiga](workflow.html)** ir pakartotinai naudoja tuos pačius paciento ir vaizdinimo pavyzdžius kaip kiti prostatos egzemplioriai.

## Ryšys su MpMRIReportLtProstate

**[MpMRIReportLtProstate](StructureDefinition-mpmri-report-lt-prostate.html)** specializuoja **EU** **ImDiagnosticReport** **mpMRI** su **ProstateMriTypeVS** ir **Composition** nuorodomis į **EU** vaizdinimo kompoziciją. Naudokite jį **EU vaizdinimo R5** suderintoms mpMRI ataskaitoms. Naudokite **ProstateReportLtProstate**, kai reikalingas **nacionalinis** **ImagingReportLt** / **ImagingCompositionLt** sluoksnis.

## Tarpusavio IG matavimai (publikuotas CI Build)

Neapdoroti **gyvybinių rodiklių** ir **gyvenimo būdo** duomenys paprastai profiluojami **LT VitalSigns** ir **LT Lifestyle**:

* [Kraujospūdis (pavyzdys)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html)
* [Kūno ūgis (pavyzdys)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html)
* [Tabako vartojimas (pavyzdys)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html)
* [Alkoholio vartojimas (pavyzdys)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html)

## Ryšys su klausimynais

Nacionalinės **ESPBI** formos gali būti fiksuojamos kaip **[Questionnaire](https://hl7.org/fhir/questionnaire.html)** / **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** — žr. **[Klausimynai](questionnaire.html)**, kur aprašytas **ConceptMap** pagrindu atliekamas susiejimas su profiliais. Tas kelias yra **ortogonalus** **ProstateReport**; įgyvendintojai gali saugoti formų užpildymus, išvesti **Observations** arba naudoti abu metodus.
