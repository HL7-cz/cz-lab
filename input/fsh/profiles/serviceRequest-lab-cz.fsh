Profile: CZ_ServiceRequestLab
Parent: ServiceRequest
Id: cz-service-request-lab
Title: "ServiceRequest: Laboratorní žádanka"
Description: "ServiceRequest used to represent a Laboratory Order for the scope of the Czech national interoperability project."

// Clarify when to use ServiceRequest and RequestGroup
* . ^short = "Laboratory Order"
* . ^definition = "Laboratory Order composition."

* insert ImposeProfile($ServiceRequest-eu-lab)

* insert SetFmmandStatusRule ( 0, draft )


// add binding for category and code
* identifier 1..
* category 1..
* code 1..
* subject 1..
* subject only Reference(CZ_PatientCore or Patient or Group or Location or Device or CZ_MedicalDevice)
* requisition ^short = "Composite Request ID."
* specimen	only Reference(CZ_SpecimenLab)
  * ^short = "Must be present, if order is request for test" // Check....
  // add invariant ?
* insurance only Reference(Coverage)
