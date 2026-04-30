# Lietuvos prostatos vėžio prevencijos ir ankstyvo diagnozavimo diegimo vadovas

## Įvadas ir tikslas

Šis **Diegimo vadovas (IG)** nurodo, kaip nuosekliai pateikti ir keistis **struktūrizuotais klinikiniais duomenimis**, susijusiais su **Prostatos vėžio prevencijos ir ankstyvo diagnozavimo programa**, naudojant **FHIR** (angl. Fast Healthcare Interoperability Resources) standartą.

Vadovas palaiko nacionalinę programą, skirtą **ankstyvam prostatos vėžio aptikimui, diagnozavimui, stebėjimui ir tolesnei priežiūrai**, apibrėžiant **sąveikias duomenų struktūras**, skirtas **laboratoriniams tyrimams, vaizdinimui, klinikiniam interpretavimui, siuntimams, invazinei diagnostikai ir patologinėms ataskaitoms**. Jo tikslas – užtikrinti:

* **nuoseklų ir aukštos kokybės duomenų rinkimą** visų sveikatos priežiūros teikėjų,
* **semantinę sąveiką** tarp **laboratorinių, radiologinių, urologinių, patologinių ir klinikinių sistemų**,
* **struktūrizuotą ataskaitų teikimą** **programos stebėjimui, kokybės užtikrinimui ir antriniam naudojimui**,
* bei patikimą **pacientų ilgalaikę priežiūrą** diagnostikos ir stebėjimo epizodų metu.

Vadovas parengtas kaip nacionalinio **ADP projekto** dalis, siekiant palaikyti **koordinuotą, duomenimis grindžiamą valdymą** Lietuvos prevencinių ir ankstyvo diagnozavimo programų.

## Auditorija

Šis vadovas skirtas **diegimo vadovų autoriams, sistemų tiekėjams, integracijų specialistams, sveikatos priežiūros sprendimų kūrėjams ir klinikiniams suinteresuotiesiems**, dalyvaujantiems keičiantis **prostatos vėžio atrankos ir diagnostikos duomenimis naudojant FHIR**. Tikimasi, kad skaitytojai turi bent **pagrindinių FHIR žinių** ir prireikus kreipsis į **pagrindinę FHIR specifikaciją**.

## Apimtis ir pagrindiniai turiniai

Šis vadovas orientuotas į **prostatos vėžio prevencijos ir diagnostikos darbo eigą**, apimančią **populiacijos lygio atranką**, **diagnostinį vaizdinimą**, **rizikos stratifikaciją** ir **ilgalaikį stebėjimą**.

Jis apima šias **klinikinius domenus**:

* **Laboratoriniai tyrimai** — pirmiausia **prostatos specifinio antigeno (PSA)** matavimas,
* **Vaizdinimo atlikimas** — multiparametrinis arba biparametrinis **prostatos MRT**,
* **Radiologinis interpretavimas ir ataskaitų rengimas** naudojant:
  * **PI-RADS** **pažeidimų lygio rizikos stratifikacijai**,
  * **PRECISE** **tyrimo lygio longitudinaliam ligos pokyčio vertinimui per laiką**,
* **Detalus anatominis lokalizavimas** pagal **PI-RADS 39-sektorių modelį**, pateikiamas naudojant **SNOMED CT kūno struktūrų kodus**,
* **Klinikinės darbo eigos koordinavimo palaikymas**, įskaitant siuntimuosnaudojant skirtingas specialybes,
* **Invazinės diagnostikos procedūros, pvz., prostatos biopsija** (aprašomos per susijusius IG),
* **Patologinis ištyrimas ir ataskaitų teikimas** (integruotas per susijusius laboratorinių tyrimų IG),
* **Aktyvus stebėjimas ir ilgalaikė priežiūra** mažos rizikos ligoms.

Vadovas modeliuoja prostatos vėžio prevenciją ir diagnostiką kaip **longitudinalų, sprendimais grindžiamą, daugiadalykį procesą**, integruojantį **laboratoriją, radiologiją, urologiją ir patologiją** į nuoseklų informacijos modelį.

## Pagrindiniai modeliavimo principai

Modeliavimo metodas grindžiamas šiais **pagrindiniais principais**:

1. **Duomenų gavimo ir interpretavimo atskyrimas**
   Laboratoriniai tyrimai ir vaizdinimo procedūros generuoja struktūrizuotus duomenų rinkinius, o **interpretacija, vertinimas ir diagnozė** pateikiami atskirai.

2. **Aiškus klinikinius stebėjimų ir darbo eigos logikos atskyrimas**
   **PI-RADS ir PRECISE vertinimai** atspindi stebėjimus, o **klinikiniai veiksmai** (pvz., siuntimas, biopsija, gydymo sprendimai) atspindi darbo eigos procesus.

3. **Domeno specifinis modeliavimas**
   PSA tyrimui, prostatos MRT, radiologiniam vertinimui, biopsijai ir patologijai reikalingi **specializuoti profiliai ir modeliavimo metodai**.

4. **Longitudinalus nuoseklumas**
   Visi duomenų elementai sukurti taip, kad palaikytų **sąsają per laiką**, leidžiančią **nuolatinį klinikinės istorijos sekimą** per atranką ir tolesnę priežiūrą.

5. **Struktūrizuota, bet lanksti dokumentacija**
   Vadovas palaiko **visiškai struktūrizuotus**, **iš dalies struktūrizuotus** ir **naratyvinius duomenis**, suteikdamas tiek sąveiką, tiek klinikinę subtilumą.

6. **Aukštos raiškos anatominis lokalizavimas**
   Prostatos pažeidimai lokalizuojami naudojant **PI-RADS 39-sektorių modelį**, suteikiant **tikslias ir standartizuotas anatomines nuorodas**.

7. **Pažeidimų centrinė vertinimo sistema su tyrimo lygio interpretacija**
   * **PI-RADS vertinimai** ir MRT sekų balai yra **pažeidimų lygmens**
   * **PRECISE vertinimai** yra **tyrimo lygio ir longitudinalūs**

## Radiologinio vertinimo architektūra

Vadovas laikosi **sluoksninio radiologinio modeliavimo metodo**:

* **LTProstateMpMRIReport** — klinikinis ir laiko inkaras kiekvienam MRT tyrimui
* **LTProstateLesion (BodyStructure)** — anatomiškai lokalizuoti pažeidimai pagal PI-RADS modelį
* **PI-RADS vertinimai** — priskirti **kiekvienam pažeidimui**
* **Sekų balai (T2, DWI, ADC, DCE)** — registruojami **kiekvienam pažeidimui ir kiekvienai sekai**
* **PI-QUAL** — atspindi **tyrimo lygio vaizdo kokybę**
* **PRECISE** — atspindi **tyrimo lygio longitudinalinį pokytį**, susietą su ankstesniais MRT tyrimais

Ši struktūra užtikrina aiškų atskyrimą tarp **duomenų gavimo**, **pažeidimų apibūdinimo** ir **longitudinalaus ligos vertinimo**.

## Vadovo turinys

Šis vadovas pateikia:

* **FHIR profilius ir plėtinius** prostatos vėžio atrankai, vaizdinimui, vertinimui ir ataskaitų rengimui,
* **terminologijos susiejimus** naudojant **SNOMED CT, LOINC ir ICD-10-AM**,
* **struktūrizuotos pavyzdinės instancijos**, iliustruojančias klinikinius scenarijus,
* susiejimus iš **klinikinių programų duomenų rinkinių į sąveikius FHIR artefaktus**,
* išsamų **realaus gyvenimo prostatos mpMRI pavyzdį**, parodantį, kaip naratyviniai radiologiniai duomenys pateikiami naudojant šiame vadove apibrėžtus profilius,
* ir palaikančią dokumentaciją **darbo eigai**, **ataskaitos struktūrai** ir **klausimynu grindžiamam duomenų rinkimui**.

Vadove pateikiamas visas publikuotų artefaktų rinkinys ir išsamus **MRT pavyzdžio** puslapis, demonstruojantis realaus pasaulio prostatos mpMRI darbo eigos pateikimą struktūrizuota FHIR forma.

## Kodėl verta naudoti šį vadovą?

Naudodami šiuos profilius ir gaires, įgyvendintojai gali palaikyti standartizuotą metodą:

- **Sąveikumui:** suteikti galimybę **nuosekliai, semantiškai keistis** prostatos vėžio atrankos ir diagnostikos duomenimis **laboratorinėse, radiologinėse, urologinėse ir patologinėse sistemose**.
- **Duomenų kokybei:** pagerinti struktūrizuotų diagnostikos ir vaizdinimo duomenų **nuoseklumą**, **išsamumą** ir **palyginamumą**.
- **Klinikiniam naudingumui:** palaikyti **struktūrizuotą ataskaitų rengimą**, **programos stebėjimą**, **kokybės užtikrinimą** ir **klinikinės sprendimų palaikymą**.
- **Ilgalaikei priežiūrai:** sudaryti galimybę **susieti atrankos, diagnostikos ir tolesnės priežiūros duomenis** per laiką ir skirtingus teikėjus.

## Kaip naršyti šiame vadove

Šis vadovas suskirstytas į keletą skyrių, padedančių įgyvendinimui nuo apžvalgos iki išsamių konformacijos artefaktų. Visi **konformacijos** ir **pavyzdiniai ištekliai** išvardyti puslapyje [**Artefaktai**](artifacts.html). Pagrindiniai skyriai:

- [**Artefaktai**](artifacts.html) — visas **profilių, plėtinių, terminologijos išteklių ir pavyzdinių instancijų** sąrašas, apibrėžtas šiame vadove.
- [**Darbo eiga**](workflow.html) — **klinikinių žingsnių ir diagnostikos proceso** apžvalga.
- [**Prostatos ataskaita**](prostate-report.html) — **ImagingReport ir Composition paketo** struktūra.
- [**Klausimynai**](questionnaire.html) — struktūrizuotos **ESPBI tipo formos ir duomenų rinkimo modeliai**.
- [**MRT pavyzdys**](prostate-mpmri-example.html) — išsamus **realaus gyvenimo prostatos mpMRI pavyzdys**, rodantis, kaip radiniai, vertinimai, vaizdinimo kontekstas ir ataskaitos struktūra pateikiami FHIR formatu.

## Intelektinės nuosavybės pareiškimai
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

## Bendraautoriai

| Vardas | Vaidmuo | Organizacija |
|--------|---------|--------------|
| [Igor Bossenko](https://about.askigor.eu) | Pagrindinis autorius | [HELEX Solutions](https://helex.solutions) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Bendraautorė | [HELEX Solutions](https://helex.solutions) |
| Martynas Bieliauskas | Recenzentas | [LMB](https://lmb.lt) |
