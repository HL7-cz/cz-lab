Extension: AccreditationCz
Id: accreditation-cz
Title: "Požadavek na akreditaci"
Description: "Vyšetření má být provedeno pouze laboratoří, která má akreditaci pro dané vyšetření."

* valueBoolean 1..1
* valueBoolean ^short = "Vyžadována akreditace"

* ^context[0].type = #element
* ^context[0].expression = "ServiceRequest"
