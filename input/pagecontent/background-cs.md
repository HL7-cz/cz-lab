### Popis problematiky

#### Obchodní požadavky

Laboratorní doména je jednou ze základních domén využívaných při diagnostice a rozhodování v rámci klinické praxe. Služby laboratoří jsou žádané v rámci všech lékařských oborů, obecných i úzce specializovaných. Ne všichni poskytovatelé zdravotní péče disponují vlastními laboratorními kapacitami a zároveň je možné některé specifické testy provádět pouze v rámci specializovaných laboratoří. Právě proto je přístup k externím laboratořím pro poskytovatele zdravotní péče zásadní. Ruku v ruce s tím je zásadní také způsob předávání informací (objednávek, výsledků testů apod.) mezi laboratořemi a poskytovateli zdravotní péče. Poskytovatelé zdravotní péče musí být také schopni správné interpretace výsledků poskytnutých kvalifikovanou laboratoří. Pro její bezchybné zajištění je nutné, aby byly laboratorní výsledky zaznamenávány a předávány univerzálním způsobem pomocí standardizovaných číselníků a datových modelů pro vyšetřovací techniky, vzorky, výsledky apod. Výměna laboratorních výsledků mezi odděleními a organizacemi minimalizuje potřebu opakovaných testů a snižuje tak jak zátěž pro pacienta, tak finanční nákladnost.

Kromě významu v rámci zdravotní péče o pacienty existuje také zvyšující se poptávka po sekundárním využití zdravotních dat. Strukturované a standardizované výsledky laboratorních vyšetření jsou velmi cenné pro klinický výzkum, efektivní řízení v rámci zdravotních služeb apod.

#### Současný stav

Standardizace výměny výsledků laboratorních testů v rámci České republiky v současnosti vychází ze standardů DASTA, závazných standardů podporovaných Ministerstvem zdravotnictví ČR sloužících k předávání dat mezi zdravotnickými informačními systémy.

Původní verze DASTA, která položila koncepční základy datového standardu, ale ještě neřešila problematiku laboratorního komplementu, byla v průběhu dalšího vývoje doplněna a umožnila tak komplexní řešení komunikace s laboratorním informačním systémem. Vedle toho vznikl také Národní číselník laboratorních položek (NČLP), který byl budován na základě nomenklatury IFCC a ve spolupráci s touto mezinárodní organizací. Další verze byly dál doplňovány o datové bloky včetně komplexního řešení obousměrné formalizované komunikace s LIS nebo zavedení filozofie klinických událostí a jejich formalizací.

Z pacientských dat dnes standard DASTA umožňuje předávat informace z mnoha oblastí, jako jsou zejména: identifikační data a základní informace o pacientovi, urgentní informace, platební vztahy, pojišťovny, pracovní neschopnosti, anamnéza, léky, očkování, diagnózy trvalé a aktuální, klinické události mnoha typů – objednávky, výsledky, zprávy a mnohé jiné.

Jak je vidět, standard DASTA již dnes obsahově pokrývá velkou část potřeb laboratorní medicíny uvedených v této funkční specifikaci, proto z hlediska rozsahu změn vyplývajících z projektu nepůjde o změny zásadního charakteru, spíše o rozšíření existujícího standardu a doplnění nových mezinárodních formátů předávaných zpráv (například pro potřeby přeshraniční výměny dat) a také o účinnou kontrolu jejich implementace.

Právě v implementaci existují často zásadní nedostatky. Řada informačních systémů stále ještě používá obsoletní verze standardů (například DASTA v3.x), implementuje pouze základní, nestrukturovaný způsob tvorby laboratorního nálezu, nebo zanedbává pravidelný upgrade verzí. Problém s udržováním aktuální verze se netýká jen standardu DASTA, ale velmi často i Národního číselníku laboratorních položek (NČLP).

Slabiny současného stavu jsou totiž především ve faktu, že DASTA představuje ryze národní, proprietární standard a nesplňuje současné požadavky mezinárodní interoperability. Druhým zásadním faktorem je absence externí kontroly dodržování standardu. Kombinací obou faktorů dochází k limitované interoperabilitě existujících datových zpráv a dokumentů v oblasti laboratorní medicíny. Tento problém se netýká pouze standardu DASTA, ale představuje obecný problém, který bude nezbytné vyřešit bez ohledu na použitý komunikační standard.


#### Sémantika

Zdravotní péče je odvětví založené na znalostech a klinické informace odvozené z klinických dat patří mezi jeho klíčové faktory. Implementace elektronické zdravotnické dokumentace rozšiřuje kapacitu informačních systémů pro sběr, používání a výměnu citlivých osobních zdravotnických údajů.

Sémantická interoperabilita je schopnost informačních systémů vyměňovat si data bez významové nejednoznačnosti. Je požadavkem pro umožnění existence strojově vyčíslitelné logiky, odvozování a sdružování dat mezi informačními systémy. Toho je dosaženo přidáním dat o datech (metadat) a propojením každého datového prvku s kontrolovaným, sdíleným slovníkem. Je to právě sdílený slovník a jeho přidružené odkazy na ontologii, které poskytují základy pro schopnost strojové interpretace, inference a logiky.

##### Hlavní číselníky používané pro objednávání laboratorních testů a hlášení výsledků

Laboratorní služby jsou jednou z prvních oblastí ve zdravotnictví, které se dostalo podpory od informačních systémů. V průběhu roků bylo po světě vytvořeno několik standardních číselníků, mezi nejvýznamnější patří Logical Observation Identifiers Names and Codes (LOINC), Nomenclature for Properties and Units (NPU), nebo SNOMED Clinical Terms (SNOMED CT). Kromě těchto mezinárodních existuje napříč Evropou mnoho dalších, národních číselníků.

V České republice je nejvýznamnějším používaným číselníkem Národní číselník laboratorních položek (NČLP), který je udržován centrálně ve spolupráci s Ministerstvem zdravotnictví.

Sdílení výsledků laboratorních testů mezi různými poskytovateli zdravotní péče vyžaduje standardizovanou terminologii, která jednoznačně určí konkrétní laboratorní test, informaci o druhu vzorku (například arteriální krev, 24-hodinový sběr moči, mozkomíšní mok apod.), anatomické umístění, odkud byl vzorek odebrán (například vzorek kůže levého kolene), zkoumaný systém (například krev, plazma, moč), analyty (nazývané též komponenty, například sodík, Alanin transamináza nebo protilátky proti Brucelle), vyšetřované vlastnosti (veličiny, například hmotnostní koncentrace, objem, numerický podíl, frekvence, hmotnost apod.), specifickou proceduru nebo vyšetřovací techniku a jednotky ve kterých je hodnota vyjádřena (v případě hodnot s jednotkami).

###### NČLP (Národní číselník laboratorních položek)

Národní číselník laboratorních položek je z hlediska informatického datovým souborem, obsahujícím základní definice a popisy laboratorních položek v rozsahu potřebném pro předávání objednávek a výsledků laboratorních vyšetření a pro běžnou laboratorní praxi. NČLP dále obsahuje základní definice a informace potřebné pro tvorbu standardů efektivní lékařské péče i pro tvorbu standardů managementu kvality v klinických laboratořích. Je široce využíván v různých typech zdravotnických informačních systémů (LIS, NIS, ISPL).

NČLP vychází z nomenklatury IUPA/IFCC pro tvorbu kódů NPU. V počátcích byly základy NČLP a NPU podobné, postupným vývojem vznikly v některých případech odlišné konstrukce.

V praxi je NČLP dosud nejvíce využíván Datovým standardem MZ ČR (DASTA), laboratorními informačními systémy (LIS), některými nemocničními informačními systémy (NIS) a předpokládá se využívání také propracovanějšími informačními systémy praktických lékařů (ISPL). NČLP je dále využíván při tvorbě standardů laboratorních a klinických oborů, v rámci kontrolních systémů EHK (EQA), při tvorbě encyklopedií laboratorních oborů, textů repetitorií pro výuku atd. Zejména s ohledem na tvorbu standardů laboratorních a klinických oborů je NČLP dále doplňován, upravován a rozšiřován.

NČLP je sestavován za pomoci elementů, uložených v interních číselnících. Jedná se zejména o číselníky systémů, komponent, procedur, druhů veličin a jednotek.

| **Název základního elementu** | **Definice** |
| --- | --- |
| Systém | Ohraničené uspořádání množiny elementů a množiny vztahů mezi těmito elementy. Jedná se o předmět laboratorního vyšetření (biologický materiál; například plazma). K některým systémům jsou definované specifikace systémů (subsystémy). |
| Komponenta | Definovatelná část systému. Jedná se o vlastní měřenou veličinu (složku; například glukóza). |
| Druh veličiny | Vlastnost komponenty (předmětu), která může být kvalitativně odlišena a kvantitativně určena (látkové množství, délka, barva). |
| Jednotka | Určitá veličina, přijatá konvencí pro kvantitativní porovnávání veličin stejného druhu. Je úzce svázána s druhem veličiny. |
| Procedura | Laboratorní vyšetřovací postup, sloužící k získávání vlastností komponent a jejich případnému kvantitativnímu posouzení. K některým procedurám jsou definované specifikace procedur. |

Laboratorní položka je veličina definovaná v NČLP prostřednictvím výše uvedené pětice základních elementů (systém, komponenta, druh veličiny, jednotka a procedura).

K této základní definiční pětici je vždy přiřazován jednoznačný identifikátor, který je považován za součást základní definice položky.

Základní definice laboratorní položky je doplňována dalšími údaji, potřebnými pro informační systémy, datový standard, standardy efektivní lékařské péče a standardy managementu kvality klinických laboratoří. Jedná se zejména o název laboratorní položky, třídu komponenty, gesci, typ z hlediska dialogu, vznik, formát hodnoty a další údaje. Ke každé položce jsou k dispozici odkazy na řadu dalších povinných nebo fakultativních informací.

Na základě Národního číselníku laboratorních položek (NČLP) jsou v praxi vytvářeny lokální číselníky laboratorních položek (LČLP), které jsou podmnožinou NČLP a mají jednoznačně definovaná pravidla tvorby i vzájemných vazeb. LČLP respektují potřeby konkrétních laboratoří. Lokální číselník laboratorních položek vzniká vždy v bezprostřední vazbě na konkrétní vhodnou položku NČLP, takže všechny údaje připojené k položce NČLP jsou k dispozici i pro odpovídající položku LČLP. K položkám LČLP jsou připojovány další potřebné a vhodné údaje lokálního charakteru.

NČLP je průběžně doplňován a rozšiřován ve vzájemné spolupráci odborníků z řad společností klinických oborů s laboratorní složkou ČLS a České společnosti zdravotnické informatiky a vědeckých informací ČLS a MZ ČR. Jeho aktuální tvar je vyvěšován na příslušné stránce [www.dastacr.cz](https://www.dastacr.cz/) i na webových službách MZ ČR.

###### LOINC (Logical Observation Identifier Names and Codes)

Databáze LOINC si klade za cíl být univerzálním a komplexním číselníkem laboratorních testů. Jde o celosvětově nejvíc používaný číselník, který pokrývá nejméně 98 % průměrných laboratorních testů (A. W. Forrey, 1996).

Mezinárodní iniciativy pro EHR interoperabilitu a standardizační orgány běžně odkazují na LOINC jako na referenční číselník laboratorních testů.

Sémantická struktura tzv. LOINC Terms je složená ze šesti os neboli hlavních prvků (nazývaných LOINC Parts): systém, komponenta, druh veličiny, časové informace o sběru vzorku, měřítko a vyšetřovací technika. LOINC na rozdíl od NČLP či NPU nedefinuje standardní jednotky měření.

Systém LOINC udržuje a vyvíjí Regenstrief Institute, Minneapolis, US. Jeho termíny jsou přeloženy a dostupné v mnohých evropských jazycích a systém je implementován v několika zemích. Víc informací o terminologii LOINC je dostupných na webových stránkách [https://loinc.org](https://terminology.hl7.org/4.0.0/ValueSet-v3-AdministrativeGender.html). LOINC kódy je možné vyhledávat online: [https://loinc.org/search](https://browser.ihtsdotools.org/).

###### NPU (Nomenclature for Properties and Units)

Terminologie NPU je klinická laboratorní terminologie používaná v několika severoevropských zemích. Za vědeckým vývojem terminologie NPU stojí společný výbor pro nomenklaturu dvou mezinárodních organizací: IFCC (International Federation of Clinical Chemistry and Laboratory Medicine) a IUPAC (International Union of Pure and Applied Chemistry).

Takzvané National Release Centers, sídlící ve třech zemích (Dánsko, Švédsko, Norsko), zodpovídají za překlad termínů do lokálních jazyků, za distribuci národních podmnožin NPU kódů a za přidávání národních kódů pro koncepty, které jsou v rámci národních systémů zdravotní péče nezbytné.

Definice NPU zahrnuje základní informace o výsledku vyšetření nebo měření v podobě formální struktury, která identifikuje:

- studovanou část vesmíru (systém);
- vyšetřovanou komponentu v rámci daného systému;
- veličinu komponenty v rámci daného systému;
- kde je to relevantní, přidává se i SI jednotka měření.

Za údržbu a publikaci anglické verze terminologie odpovídá International Release Centre při dánském Health Data Authority. Víc informací o principu NPU terminologie a jeho koncepčním modelu najdete na <https://labterminology.com>, domovské stránce [https://www.npu-terminology.org/](https://terminology.hl7.org/4.0.0/ValueSet-v3-Country2.html). Databáze NPU termínů, ve které je možné vyhledávat, je dostupná online [https://www.ifcc.org/ifcc-scientific-division/sd-committees/c-npu/npusearch](https://ciselniky.dasta.mzcr.cz/ZobrazCiselnik).

###### SNOMED CT

SNOMED CT je mezinárodní standard vícejazyčné klinické zdravotnické terminologie, který zahrnuje klinické nálezy, symptomy, diagnózy, procedury, tělesné struktury, organismy a jiné etiologie, látky, léčiva, přístroje a vzorky v počítačově zpracovatelném formátu používaném v klinické dokumentaci a zprávách.

Hlavním účelem SNOMED CT je kódovat významové struktury, které jsou součástí zdravotnických informacích, poskytnutím prostředků pro indexování, ukládání, získávání a agregaci klinických dat napříč specializacemi a místy poskytování péče.

SNOMED CT je spravován a distribuován SNOMED International, databáze termínů, ve které je možné vyhledávat, je dostupná online [https://browser.ihtsdotools.org/](https://ciselniky.dasta.mzcr.cz/ZobrazCiselnik).

##### NČLP a zajištění interoperability v rámci EU

Z rostoucích potřeb mezinárodní spolupráce a nutnosti nalezení společného základu pro jasnou a bezpečnou komunikaci vyvstaly požadavky na propojení číselníku NČLP s některým z mezinárodně používáních ekvivalentů. Volba padla na číselník NPU, především z důvodu podobné filozofické podstaty obou číselníků. Jak NPU, tak NČLP vycházejí z nomenklatury navržené IUPAC a IFCC, a proto mají podobné (někdy totožné) konstrukce, postavené na pojmech systém, komponenta, druh veličiny a jednotka, v NČLP ještě navíc procedura. Ačkoli oba systémy vycházejí z filozoficky stejné podstaty, není jejich přístup zcela totožný, za což může historie vývoje NPU i NČLP. Na NPU bylo zpočátku pohlíženo jako na nomenklaturu, nikoliv jako na číselník, zatímco NČLP byl od začátku budován jako číselník pro každodenní praxi, který musí sloužit k jednoznačnému objednávání vyšetření, sdělování výsledků i k jejich vzájemnému předávání včetně připojované interpretace.

Mapování NČLP a NPU bylo realizováno na více úrovních. Nejprve byly propojeny číselníky jednotlivých elementů, a to konkrétně číselník systémů, druhů veličin a komponent. Dále byly propojeny odpovídající položky z NČLP a NPU číselníků, přičemž byla současně zachycena také kvalita vazby.

Číselník NPU by měl být postupně mapován také na číselník LOINC, takže bude možné touto cestou realizovat též vazby NČLP/LOINC.

Další možností je kromě stávajícího NČLP, který bude nadále zachován pro kódování laboratorních testů, umožnit také používání mezinárodní terminologie, a to především při předávání dalších kódovaných komponent laboratorního nálezu. Jako velmi výhodný se pro tento účel jeví právě terminologický systém SNOMED CT. SNOMED CT je v současnosti nejrozsáhlejší používanou terminologií ve zdravotnictví. Poskytuje například řešení většiny případů reprezentace kvalitativních hodnot laboratorních výsledků.

Většina hodnot hlášených laboratorních výsledků spadá do jedné z následujících SNOMED CT hierarchií:

- Organism (410607006);
- Substance (105590001);
- Evaluation finding (441742003);
- Presence findings (260411009);
- Absence findings (272519000).

Použití číselníku SNOMED CT pro některé oblasti laboratorní domény (např. mikrobiologie či histopatologie atp.) by mělo být zváženo, nejen z hlediska přínosu v rámci interoperability v prostředí EU, ale i z hlediska finančních benefitů (náklady na údržbu národní alternativy, náklady na mapování národních systémů na systémy mezinárodní apod.).

