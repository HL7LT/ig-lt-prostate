# Prostatos mpMRI pavyzdys

Šiame puslapyje pateikiamas realaus gyvenimo multiparametrinio prostatos MRT (mpMRI) ataskaitos pavyzdys, rodantis, kaip klinikinė informacija iš radiologinės ataskaitos pateikiama naudojant šiame diegimo vadove apibrėžtus FHIR profilius.

Pavyzdys pagrįstas tipiška klinikiine mpMRI ataskaita, kurioje yra PSA reikšmės, prostatos tūris, PI-RADS vertinimas, PRECISE tolesnis stebėjimas, pažeidimų lokalizavimas ir vietinio stadijinimo radiniai (kapsulės kontaktas, sėklinės pūslelės, neurovaskuliniai ryšuliai, limfmazgiai, šlapimo pūslė ir tiesioji žarna).

Šis pavyzdys iliustruoja, kaip naratyvinės radiologinės ataskaitos gali būti transformuotos į struktūrizuotus, sąveikius duomenis, išsaugančius pirminę klinikinę reikšmę ir leidžiančius antrinį naudojimą klinikinei sprendimų palaikymui, registrams, kokybės užtikrinimui ir tyrimams.

---

## Modeliavimo metodas

Šiame diegimo vadove prostatos MRT radiniai modeliuojami pažeidimų centrine tvarka. Kiekvienas reikšmingas pažeidimas pateikiamas aiškiai kaip BodyStructure išteklius ir kaip vaizdinimo radinys (ImFinding). Vaizdinimo pagrindu gauti stebėjimai, pvz., PI-RADS balas ir sekų specifiniai balai (T2, DWI, ADC, DCE), nurodo pažeidimą per `focus` elementą ir yra sugrupuoti pagal atitinkamą vaizdinimo radinį. Tai leidžia kelis stebėjimus nuosekliai susieti su tuo pačiu anatominiu radiniu ir palaiko longitudinalų stebėjimą bei palyginimą keliuose vaizdinimo tyrimuose.

Longitudinalus vertinimas pateikiamas naudojant PRECISE vertinimo sistemą. PRECISE stebėjimas susieja dabartinį mpMRI tyrimą su ankstesniais vaizdinimo tyrimais ir fiksuoja, ar atsirado naujų pažeidimų arba ar pasikeitė esami. Tai leidžia struktūrizuotai stebėti tolesnes pacientų, esančių aktyvaus stebėjimo programoje, priežiūros eigas.

Radinių anatominė lokalizacija prostatoje naudoja PI-RADS sektorių žemėlapį. Periferinės zonos radiniai susieti su konkrečiais PI-RADS sektoriais naudojant BodyStructure išteklius su SNOMED CT kodais. Tai palaiko nuoseklų ataskaitų rengimą, erdvinę analizę ir galimą integravimą su vaizdinimo AI sistemomis.

mpMRI ataskaita pateikiama naudojant DiagnosticReport ir EU Imaging Composition. DiagnosticReport apima pagrindinius klinikinius išvadas ir nuorodas į stebėjimus, o Composition suteikia dokumento lygio struktūrą, suderintą su HL7 Europe gairėmis, sugrupuojant radinius, įspūdžius ir rekomendacijas į kliniškai prasmingas sekcijas.

---

## Vaizdinimo procedūra ir tyrimas

Vaizdinimo tyrimas pateikiamas kaip FHIR Procedure ir ImagingStudy:

- [Multiparametrinio prostatos MRT procedūra](Procedure-procedure-prostate-mpmri-example.html)
- [Vaizdinimo tyrimas](ImagingStudy-imagingstudy-prostate-mpmri-example.html)

---

## Pagrindiniai radiniai

### Pažeidimas ir PI-RADS vertinimas

Pagrindinis pažeidimas priekinėje pereinamosios zonos dalyje pateikiamas kaip BodyStructure ir susieti vaizdinimo stebėjimai:

- [Prostatos pažeidimas (BodyStructure)](BodyStructure-bodyStructure-prostate-lesion1-example.html)
- [Pažeidimo vaizdinimo radinys (ImFinding)](Observation-imfinding-prostate-lesion1-example.html)
- [PI-RADS vertinimas](Observation-observation-prostate-pirads-lesion1-example.html)
- [T2 balas](Observation-observation-prostate-t2-score-lesion1-example.html)
- [DWI balas](Observation-observation-prostate-dwi-score-lesion1-example.html)
- [ADC balas](Observation-observation-prostate-adc-score-lesion1-example.html)
- [DCE vertinimas](Observation-observation-prostate-dce-score-lesion1-example.html)

---

## Periferinės zonos radiniai

Difuzinis kontrastinis stiprėjimas periferinėje zonoje be židininio pažeidimo fiksuojamas kaip:

- [Periferinės zonos difuzinis kontrastinis stiprėjimas](Observation-observation-prostate-peripheral-zone-diffuse-enhancement-example.html)
- [Periferinės zonos sektorius (PI-RADS žemėlapis)](BodyStructure-bodyStructure-prostate-peripheral-zone-mid-right-example.html)

---

## Vietinis stadijinimas ir organų pažeidimai

Vietinio stadijinimo radiniai iš ataskaitos pateikiami kaip struktūrizuoti stebėjimai:

- [Kapsulės kontaktas (įtariamas)](Observation-observation-prostate-capsule-invasion-suspected-example.html)
- [Sėklinių pūslelių invazija (nėra)](Observation-observation-prostate-seminal-vesicle-invasion-example.html)
- [Neurovaskulinių ryšulių pažeidimas (nėra)](Observation-observation-prostate-neurovascular-bundle-invasion-example.html)
- [Regioninių limfmazgių pažeidimas (nėra)](Observation-observation-prostate-regional-lymph-node-invasion-example.html)
- [Šlapimo pūslės sienelės sustorėjimas](Observation-observation-prostate-urinary-bladder-changes-example.html)
- [Tiesiosios žarnos pakitimai (nėra)](Observation-observation-prostate-rectum-changes-example.html)

---

## Laboratorinės vertės ir išvestiniai parametrai

Pagrindiniai laboratoriniai ir išvestiniai parametrai, įtraukti į radiologinę ataskaitą, modeliuojami kaip laboratoriniai stebėjimai:

- [PSA](Observation-observation-prostate-psa-example.html)
- [Prostatos tūris](Observation-observation-prostate-volume-example.html)
- [PSA tankis](Observation-observation-prostate-psad-example.html)

---

## Histopatologinis kontekstas

Žinomas histopatologinis rezultatas, naudojamas klinikiniame kontekste ir tolesnėje priežiūroje:

- [Gleason / ISUP laipsnių grupė](Observation-observation-prostate-gleason-gradegroup-example.html)

---

## Longitudinalus vertinimas

Tolesnio stebėjimo palyginimas ir PRECISE vertinimas:

- [PRECISE longitudinalus vertinimas](Observation-observation-prostate-precise-followup-example.html)

---

## Galutinė ataskaita

Visi stebėjimai ir radiniai sudedami į struktūrizuotą vaizdinimo ataskaitą ir klinikinį dokumentą:

- [mpMRI DiagnosticReport](DiagnosticReport-diagnosticReport-prostate-mpmri-report-example.html)
- [mpMRI Composition (ES vaizdinimo ataskaita)](Composition-composition-prostate-mpmri-report-example.html)

Šis pavyzdys demonstruoja, kaip realaus pasaulio prostatos mpMRI ataskaita gali būti pateikta struktūrizuotu, sąveikiu būdu naudojant FHIR, suteikiant galimybę pakartotinai naudoti vaizdinimo radinius klinikinėje priežiūroje, tyrimuose ir antrinio naudojimo scenarijuose.
