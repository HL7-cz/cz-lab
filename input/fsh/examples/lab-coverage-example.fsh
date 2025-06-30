/*
Instance: CZ-Coverage-SelfPay
InstanceOf: CoverageCz
Usage: #example
Title: "Self-paying Patient Coverage"
Description: "Example of a coverage entry where the patient pays for the services (samoplátce) on a specific date"

* status = #active
* type = $hl7CoverageType#self "Self-pay"
* beneficiary = Reference(Mracena2)
* payor = Reference(Mracena2)
* period.start = "2025-04-24"
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/coverage-id"
  * value = "SELF-2025-0001"
*/