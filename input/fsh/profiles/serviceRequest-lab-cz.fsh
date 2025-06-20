Profile: CZ_ServiceRequestLab
Parent: ServiceRequest
Id: cz-service-request-lab
Title: "ServiceRequest: Laboratory Order"
Description: "ServiceRequest used to represent a Laboratory Order for the scope of the Czech national interoperability project."

// Clarify when to use ServiceRequest and RequestGroup
* . ^short = "Laboratory Order"
* . ^definition = "Laboratory Order for Laboratory Report."

* insert ImposeProfile($ServiceRequest-eu-lab)
* insert SetFmmandStatusRule (0, draft)


// add binding for category and code
* identifier 1..

* category 1..

* code 1..
* code from CZ_NclpLabpolVS (required)

* subject 1..
* subject only Reference(CZ_PatientAnimal or CZ_PatientCore or Group or Device or CZ_LocationCore)

* requisition ^short = "Composite Request ID."

* specimen	only Reference(CZ_SpecimenLab)
  * ^short = "Must be present, if order is request for test" // Check....
  // add invariant ?

* insurance only Reference(CZ_Coverage)
