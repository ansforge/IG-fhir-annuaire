Extension: 		AsEducationLevelExtension
Id: 			as-ext-education-level
Title:			"AS Education Level Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour décrire le niveau de formation acquis d'un étudiant."

* ^context.type = #element
* ^context.expression = "Practitioner.qualification"

* . ^short = "niveauFormation"
* . ^definition = "Le niveau de formation."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    academicDegree 0..1 and
    achievedLevel 0..1 and
    academicYear 0..1 
    
// natureCycleFormation
* extension[academicDegree] ^short = "[Donnée restreinte] : Nature du cycle de formation (natureCycleFormation)."
* extension[academicDegree].value[x] only CodeableConcept
* extension[academicDegree].valueCodeableConcept from $JDV-J86-NatCycleForm-RASS (required)

// niveauFormationAcquis
* extension[achievedLevel] ^short = "[Donnée restreinte] : Niveau de formation acquis dans le cycle de formation du professionnel (niveauFormationAcquis)."
* extension[achievedLevel].value[x] only CodeableConcept
* extension[achievedLevel].valueCodeableConcept from $JDV-J87-NiveauFormAcquis-RASS (required)

// anneeUniversitaire
* extension[academicYear] ^short = "[Donnée restreinte] : Année universitaire du professionnel (anneeUniversitaire).\nExemple : 2015-2016."
* extension[academicYear].value[x] only CodeableConcept
* extension[academicYear].valueCodeableConcept from $JDV-J88-AnneeUniversitaire-RASS (required)

