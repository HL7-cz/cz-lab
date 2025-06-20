// -------------------------------------------------------------------------------				
//  Logical Model				lab-author-cz.fsh
// -------------------------------------------------------------------------------				
Logical: AuthorLabEhnCz				
Id: Author				
Title: "A.1.5 - Author"				
Description:  """Author (by whom the Laboratory result report or a subset of its results was authored). Section A1.5 of the eHN guideline."""				
* insert SetFmmandStatusRule (2, informative)				
* identifier 1..* Identifier "A.1.5.1 Author identifier" """The health professional or authoring device identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number.  """				
* name 1..1 HumanName "A.1.5.2 Author name" """Person or device name. """		
* organizationIdentifier 1..1 Identifier "A.1.5.3 Author organization identifier" """Identifier of the organization the author represents."""		
* organization 1..1 CZ_OrganizationCore "A.1.5.4 Author organization" """The healthcare provider organization the author represents. """		 	
* dateOfSaving 1..1 dateTime "A.1.5.5 Date and time of saving." """The date and time the document was last modified."""	
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
