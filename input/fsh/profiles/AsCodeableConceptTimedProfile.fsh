Profile: 		AsCodeableConceptTimedProfile
Parent: 		CodeableConcept
Id: 			as-codeableconcept-timed
Title:			"AS CodeableConceptTimed Datatype Profile"
Description:	"Profil du type de données CodeableConcept créé dans le cadre de l'Annuaire Santé pour ?"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains as-ext-codeableconcept-timed-metadata named as-codeableconcept-timed-metadata 0..*

* extension[as-codeableconcept-timed-metadata] ^short = "Additional content defined by implementations"
* extension[as-codeableconcept-timed-metadata] ^definition = "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension."