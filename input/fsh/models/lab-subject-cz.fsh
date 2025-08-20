// -------------------------------------------------------------------------------				
//  Logical Model				lab-subject-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogEnSubjectLabEhnCz				
Id: SubjectCz		
Title: "A1.1, A1.2 - Subject of care"				
Description:  """Patient or Subject of care. Sections A1.1 and A1.2 of the eHN guideline."""				
* insert SetFmmandStatusRule ( 1, draft )		
* identification 1..1 Base "A.1.1 Identification of the patient/subject" """A.1.1 Identification of the patient/subject"""	
* identification.givenName 1..* string "A.1.1.1 Given name" """The given name/first name of the patient (also known as forename or first name). This field can contain more than one element. """		 					
* identification.familyName 1..* string "A.1.1.2 Familyname/surname" """The family name/surname/last name of the patient. This field can contain more than one element or multiple fields could be present."""				
* identification.dateOfBirth 1..1 dateTime "A.1.1.3 Date of birth" """The date  if applicable, time of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of the test result values, complete date of birth should be provided. 
- Preferred system(s): Complete date following the ISO 8601 """				
* identification.identifier 1..* Identifier "A.1.1.4 Patient identifier" """An identifier of the patient that is unique within a defined scope. At least one national or international identifier is mandatory (birth number, passport number, etc.). Multiple identifiers could be provided. """				
* identification.citizenship 0..* CodeableConcept "A.1.1.5 Citizenship" """Citizenship according to Act No. 186/2013. Citizenship as stated on official documents for identity verification.
- Preferred system(s): eHDSICountry (ISO 3166)"""
* identification.gender 1..1 CodeableConcept "A.1.1.6 Gender" """This field must contain a recognised valid value for 'administrative gender'. 
If different, 'physiological gender' should be communicated elsewhere
- Preferred system(s): HL7 Administrative Gender """	
* identification.languageOfCommunication 0..* CodeableConcept  "A.1.1.7 Language of communication" """Language(s) in which the patient communicates
- Preferred system(s): NCLP EJAZYK"""

* contactInfo 0..1 Base "A.1.2 Patient/subject related contact information" """A.1.2 Patient/subject related contact information"""				
* contactInfo.address 0..* Address "A.1.2.1 Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose. - Preferred system(s):  eHDSICountry (ISO 3166)"""				
* contactInfo.telecom 0..* ContactPoint "A.1.2.2 Telecom" """Telecommunication contact information (e-mail, phone number, etc.) associated to a person. Multiple telecommunication addresses might be provided. - Preferred system(s): """				

* contactInfo.preferedPhysician 0..* Base "A.1.2.3 Prefered physician" """The registering general practitioner or another physician who can provide information about the patient. Particularly important for patients with rare diseases."""
* contactInfo.preferedPhysician.Identifier 1..1 Identifier "A.1.2.3.1 Identification of the prefered physician" """Identification number of the health care professional according to the National Register of Health Care Professionals (NRZP)."""
* contactInfo.preferedPhysician.Name 1..1 HumanName "A.1.2.3.2 Name of the prefered physician" """The name of the physician with whom the patient is under the care of or who is registering the patient."""
* contactInfo.preferedPhysician.Specialization 0..* CodeableConcept "A.1.2.3.3 Specialization of the prefered physician" """Specialization of the doctor (Practical medicine for children and adolescents, General medicine for adults, internal medicine, gynaecology and obstetrics, etc.)
- Preferred system(s): NR-ZP Specializace lékařů"""
* contactInfo.preferedPhysician.providerIdentifierName 0..1 string "A.1.2.3.4 Identification and name of the provider the doctor represents" """Identifier (IČO, NRPZS) and name of the provider the doctor represents"""
* contactInfo.preferedPhysician.providerAddress 0..1 Address "A.1.2.3.5 Provider address" """Mailing, home and/or office address. Addresses are always a sequence of parts of an address (e.g. address line, country, zip code, city), although the format of the postal address may vary depending on the country. The address may contain information about the type of address; if this attribute is not present, it is assumed to be a default address usable for any purpose."""
* contactInfo.preferedPhysician.telecom 0..* ContactPoint "A.1.2.3.6 Telecom" """Telecommunication contact (e-mail, phone, etc.)."""

* contactInfo.legalRepresent 0..* Base "A.1.2.4 Legal representatives and other contact persons" """"""
* contactInfo.legalRepresent.type 0..1 CodeableConcept "A.1.2.4.1 Contact type" """Type of contact person distinguishing emergent contacts, legal guardians and other persons with a relationship to the patient.
- Preferred system(s): HL7 Role"""
* contactInfo.legalRepresent.relationToSubject 0..1 CodeableConcept "A.1.2.4.2 Relationship to the patient" """Relationship of the person to the patient (father, son, daughter, etc.).
- Preferred system(s): eHDSIPersonalRelationship"""
* contactInfo.legalRepresent.identifier 0..* Identifier  "A.1.2.4.3 Person identifier" """An identifier of the patient that is unique within a defined scope (birth number, passport number, etc.). Multiple identifiers could be provided. """
* contactInfo.legalRepresent.givenName 1..* string "A.1.2.4.4 Given name" """The given name/first name of the person (also known as forename or first name)."""
* contactInfo.legalRepresent.familyName 1..* string "A.1.2.4.5 Family name/surname" """The family name/surname/last name of the person."""
* contactInfo.legalRepresent.address 0..1 Address "A.1.2.4.6 Contact person address" """Mailing, home and/or office address. Addresses are always a sequence of parts of an address (e.g. address line, country, zip code, city), although the format of the postal address may vary depending on the country. The address may contain information about the type of address; if this attribute is not present, it is assumed to be a default address usable for any purpose."""
* contactInfo.legalRepresent.telecom 0..* ContactPoint "A.1.2.4.7 Telecom" """Telecommunication contact (e-mail, phone, etc.)."""
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
