### Procesy (Workflow)

#### Tvorba

##### Tvorba a vydání laboratorní výsledkové zprávy

Use case Laboratorní výsledková zpráva zahrnuje procesy spojené s prováděním testů a vydáváním výsledkových zpráv klinickou laboratoří v návaznosti na objednávky in vitro diagnostických testů.

##### Vydání standardní laboratorní výsledkové zprávy

Po provedení interních testovacích procesů, které zahrnují konsolidaci všech objednávek testů nebo skupin objednávek a všech kroků kontroly kvality a validace, vytvoří laboratoř kompletní konečnou výsledkovou zprávu, a to na základě požadavků a parametrů formulovaných zadavatelem objednávky. Zpráva je laboratoří označena jako „Konečná“ (stav laboratorní výsledkové zprávy je změněn na „Konečná“) a je odeslána do aplikace klinické praxe (nazývané Order Result Tracker) a také všem korespondentům zahrnutým v objednávce laboratorního testu. Kopie zprávy může být uložená v připojeném systému úložiště EHR.

Všechny výsledky jednotlivých testů, které jsou součástí konečné laboratorní výsledkové zprávy, by měly být ve stavu „Konečný“ nebo „Zrušen“.

##### Vydání nekompletní laboratorní výsledkové zprávy

V některých případech může laboratoř vydat i výsledkovou zprávu, která je buď nekompletní (některé výsledky nejsou dostupné nebo nejsou označeny jako „Konečný“), nebo neverifikovaná. Obvykle k tomu dochází v případech, když jsou některé výsledky dostupné až později (z důvodu povahy testu nebo organizačních a technických důvodů), zatímco jiné výsledky testů je potřeba komunikovat příjemci zprávy ze specifických organizačných důvodů a/nebo procesních pravidel nebo z důvodu naléhavosti a důležitosti některých z výsledků testů. V těchto případech by měl být stav zprávy vždy označen jako „Předběžná“ nebo „Nekompletní“. Podrobnosti uvádí Tabulka 2.

##### Vydání upravené laboratorní výsledkové zprávy

V případech, kdy jsou obsah výsledkové zprávy nebo odkazované zdroje změněny (upraveny nebo doplněny) poté, co byly označeny stavem „Konečný“ a zpráva byla zkompletována a verifikovaná autorizovanou osobou, by stav zprávy měl být změněn na „Upravená“, „Opravená“ nebo „Doplněná“ v závislosti na situaci. Podrobnosti uvádí Tabulka 2.

##### Zrušení laboratorní výsledkové zprávy

V některých případech nemusí být laboratoř schopna provést žádný z testů a vydat výsledkovou zprávu. Důvody mohou být různé, například ztráta vzorku, prasklá zkumavka, porucha analyzátoru apod. V těchto případech by měl být stav zprávy upraven na „Zrušená“ a měly by zároveň být uvedeny konkrétní podrobnosti – nejlépe jako hodnoty prvku TestResultvalue.CodedResult. Další informace mohou být také poskytnuty v komentáři k výsledkům.

##### Stažení chybně vydané laboratorní výsledkové zprávy

Pokud byla laboratorní výsledková zpráva vytvořena nebo vydána omylem, měl by její stav být změněn na „Chybně zadaná“. Tato změna stavu označuje, že celá dříve zveřejněná zpráva by měla být považována za neplatnou.

##### Stav laboratorní výsledkové zprávy

Laboratorní výsledkové zprávy, tak jak bylo popsáno v předchozích kapitolách, mohou existovat v několika stavech v závislosti na konkrétním procesu. Aplikace, které s výsledkovými zprávami pracují, si musí pečlivě všímat jejich aktualizací (revizí) a také zajistit, aby se se staženými zprávami náležitě nakládalo.

Aplikace, které poskytují diagnostické zprávy, ke kterým patří také laboratorní výsledková zpráva, by neměly zprávu označit za konečnou, dokud nejsou kompletní nebo připojené všechny její datové položky.

Pokud byla zpráva stáhnuta po předchozím vydání ve stavu „Konečná“, měla by být zpráva a s ní sdružená měření stažena s nahrazením stavových kódů pojmem „Chybně zadaná“ a přidáním závěru nebo komentáře (pokud je tato možnost k dispozici) se zněním ve smyslu „Tato zpráva byla stažena“. Důvod stažení může být poskytnut ve formátu volného textu. Stavový automat dokumentuje možné přechody mezi stavy.

{% include img.html img="diagnostic-report-state-machine.png" caption="Obrázek 1: stavový diagram laboratorní vásledkové zprávy" width="70%" %}

Tabulka 2: možné stavy laboratorní výsledkové zprávy

| Stav | Popis |
| --- | --- |
| Registrovaná (registered) | Zpráva je zaevidována, ale zatím není nic k dispozici. |
| Nekompletní (partial) | Jedná se o nekompletní (například prozatímní) zprávu: data ve zprávě mohou být nekompletní nebo neverifikována. |
| Předběžná (preliminary) | Verifikované včasné výsledky jsou k dispozici, ale ne všechny výsledky jsou ve stavu „Konečný“. |
| Konečná (final) | Zpráva je kompletní a verifikována autorizovanou osobou. |
| Upravená (amended) | Poté, co byla zpráva označena za konečnou, došlo k její úpravě. To zahrnuje jakékoliv změny ve výsledcích, diagnóze, volném textu nebo jiném obsahu zprávy, která již byla vydána. |
| Opravená (corrected) | Poté, co byla zpráva označena za konečnou, došlo k její úpravě ve smyslu opravy chyby ve zprávě nebo vydaných výsledcích. |
| Doplněná (appended) | Poté, co byla zpráva označena za konečnou, došlo k její úpravě ve smyslu přidání nového obsahu. Existující obsah zůstal nezměněn. |
| Zrušená (cancelled) | Zpráva není dostupná, protože nedošlo k měření, nebo nebylo dokončeno (nebo bylo přerušeno). |
| Chybně zadaná (entered-in-error) | Zpráva byla stažena po jejím předchozím vydání ve stavu „Konečná“. Tento elektronický záznam nikdy neměl existovat, i když je možné, že některá klinická rozhodnutí se o něj opírala. (Pokud byly provedeny reálné úkony, status zprávy má být změněn na „Zrušená“ spíš než na „Chybně zadaná“). |

##### Stav výsledků testů

Nejenom samotná zpráva, ale také její položky (tzn. jednotlivé výsledky testů zahrnuté v laboratorní zprávě) se mohou nacházet v různých fázích svého životního cyklu. Tyto fáze mohou být vyjádřeny pomocí stavů, tak jak popisuje Tabulka 3. Přechody mezi těmito stavy ukazuje diagram na obrázku Obrázek 2.

{% include img.html img="observation-state-machine.png" caption="Obrázek 2: přehled stavů pro výsledek laboratorního testu" width="70%" %}

Tabulka 3: možné stavy výsledku laboratorního testu

| Stav | Popis |
| --- | --- |
| Čeká na vyřízení (pending) | Požadavek na měření je zaevidován, ale výsledek ještě není dostupný. |
| Předběžný (preliminary) | Jedná se o prozatímní nebo předběžné měření: data mohou být nekompletní nebo neverifikované. |
| Konečný (final) | Konečný výsledek. |
| Upravený (amended) | Poté, co bylo měření označené za konečné, došlo k jeho úpravě. To zahrnuje jeho aktualizaci, přidání nové informace nebo opravu. |
| Opravený (corrected) | Poté, co bylo měření označené za konečné, došlo k jeho úpravě, která odstranila chybu ve výsledku testu. |
| Zrušen (cancelled) | Výsledek měření není dostupný, protože k měření nedošlo, nebo nebylo dokončeno (nebo bylo přerušeno). |
| Chybně zadán (entered-in-error) | Výsledek měření byl stažen po jeho předchozím vydání ve stavu „Konečný“. Tento elektronický záznam nikdy neměl existovat, i když je možné, že některá klinická rozhodnutí se o něj opírala. (Pokud byly provedeny reálné úkony, status výsledku má být změněn na „Zrušen“ spíš než na „Chybně zadán“). |

##### Vztah mezi stavem laboratorní výsledkové zprávy a stavem výsledků

I když jsou stav dokumentu a stav jeho položek z pohledu procesů částečně nezávislé, je možné formulovat některá základní pravidla pro kontrolu jejich konzistence na základě jejich definic.

Tabulka 4: relace mezi stavem zprávy a stavem jednotlivých testů

| Stav zprávy | Popis stavu zprávy | Pravidla pro konzistenci se stavy výsledků pro implementaci |
| --- | --- | --- |
| Registrovaná | Zpráva je zaevidována, ale zatím není nic k dispozici. | VŠECHNY výsledky registrované NEBO zrušené |
| Nekompletní | Jedná se o nekompletní (například prozatímní) zprávu: data ve zprávě mohou být nekompletní nebo neverifikována. | NĚKTERÉ (registrovaný, předběžný, konečný, zrušený) NEBO NĚKTERÉ NE verifikované |
| Předběžná | Verifikované včasné výsledky jsou k dispozici, ale ne všechny výsledky jsou ve stavu „Konečný“. | NĚKTERÉ (registrovaný, předběžný, konečný) A VŠECHNY (verifikovaný NEBO zrušený) |
| Konečná | Zpráva je kompletní a verifikována autorizovanou osobou. | VŠECHNY (konečný A verifikovaný) NEBO NĚKTERÉ zrušený |
| Upravená | Poté, co byla zpráva označena za konečnou, došlo k její úpravě. To zahrnuje jakékoliv změny ve výsledcích, diagnóze, volném textu nebo jiném obsahu zprávy, která již byla vydána. | NĚKTERÉ upravený NEBO chybně zadaný NEBO byl změněn jiný obsah zprávy |
| Opravená | Poté, co byla zpráva označena za konečnou, došlo k její úpravě ve smyslu opravy chyby ve zprávě nebo vydaných výsledcích. | NĚKTERÉ opravený NEBO chybně zadaný |
| Doplněná | Poté, co byla zpráva označena za konečnou došlo k její úpravě ve smyslu přidání nového obsahu. Existující obsah zůstal nezměněn. | VŠECHNY (konečný A verifikovaný) |
| Zrušená | Zpráva není dostupná, protože nedošlo k měření, nebo nebylo dokončeno (nebo bylo přerušeno). | VŠECHNY zrušené |
| Chybně zadaná | Zpráva byla stažena po jejím předchozím vydání ve stavu „Konečná“. Tento elektronický záznam nikdy neměl existovat i když je možné, že některá klinická rozhodnutí se o něj opírala. (Pokud byly provedeny reálné úkony, status zprávy má být změněn na „Zrušena“ spíš než ne „Chybně zadaná“). | VŠECHNY chybně zadané |