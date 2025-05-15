Instance: CZ-LabResult-Composition-Example
InstanceOf: CZ_CompositionLabReport
Usage: #example
Title: "Lab Result Composition Example"
Description: "An example of a laboratory report Composition for a glucose result"

* status = #final
* type = http://loinc.org#11502-2 "Laboratory report"
* category = http://loinc.org#26436-6 "Laboratory Studies (set)"
* date = "2025-04-25T10:00:00+01:00"

* subject = Reference(Mracena2)

* author[0] = Reference(Practitioner-2) 
* title = "Laboratory Report"

* extension[diagnosticReport-reference].valueReference.reference = "urn:uuid:diagnosticReport1"


* section[lab-no-subsections]
  * title = "Biochemistry"
  * code = http://loinc.org#18719-5 "Chemistry studies (set)"
  * entry[0].reference = "urn:uuid:observation1"
