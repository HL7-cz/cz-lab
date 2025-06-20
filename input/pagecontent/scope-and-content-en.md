### Scope of Application
This implementation guide defines the representation of a laboratory result report (laboratory finding) using the HL7 FHIR standard.

#### Included Scope
Laboratory results within the main areas of in vitro diagnostics such as clinical biochemistry, hematology, transfusion medicine, microbiology, and immunology, performed on:
•	human specimens (collected from human subjects);  
•	non-human specimens, which may be either materials or living subjects;  
•	non-human specimens related to a human subject (e.g., food or environmental samples to which the patient was exposed);

#### Excluded Scope
Specialized laboratory areas requiring specific report structures such as histopathology or medical genetics. Also excluded are tests (analyses) performed by the patients themselves.

### Laboratory Report Content

#### Administrative Information

*This section is mandatory*

This section includes the basic formal aspects of the laboratory report as specified by law and related regulations, as well as additional information important for the administrative context of the report. This includes:
- Identification and contact information of the patient who is the subject of the laboratory report  
- Additional information related to the patient  
- Identification and contact information of the person who created the laboratory report (report author)  
- Identification and contact information of the laboratory that provided the healthcare services  
- Identification and contact information of the person who verified the content of the laboratory report and the identification of the provider they represent  
- Identification and contact information of the person who authorized and is responsible for the laboratory report content, including the provider they represent  
- Recipients (addressees) of the laboratory report  
- Document metadata

<br/>

#### Body of the Document

##### Order Information

*This section is mandatory*

This section contains information on one or more laboratory test orders included in the laboratory report/finding. This section may therefore repeat in the document.

Order information includes:
- Order identifier(s)  
- Date and time the order was created  
- Ordering provider information  
- Reason(s) for the order  
- Information on the specimen(s) examined  
  - Specimen identifier  
  - Biological species of the organism examined  
  - Type of collected material (specimen material)  
  - Time of collection or collection period  
  - Anatomical site of specimen collection  
  - Collection procedure (method)  
  - Date and time the specimen was received by the laboratory  
- Additional clinical data necessary for correct execution or interpretation of laboratory tests

<br/>

##### Examination Results

*This section is mandatory*

This section contains the laboratory finding itself, including:
- Narrative text blocks of the laboratory report  
  - Complete result report  
  - Comments and recommendations  
- Structured results of individual tests  
  - Date and time of the test  
  - Test code  
  - Test name  
  - Test method  
  - Information on the measurement system (analyzer), test kit, and calibrator used  
  - Reference to the order  
  - Information on the laboratory staff member who performed the test  
  - Information on the laboratory staff member who verified and issued the result  
  - Test result (value, measurement uncertainty, measurement unit)  
  - Result interpretation (scale and evaluation)  
  - Result description – comments and textual representation  
  - Accreditation status of the laboratory for performing the test
