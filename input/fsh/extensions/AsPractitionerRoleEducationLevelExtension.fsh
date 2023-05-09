Extension: 		AsPractitionerRoleEducationLevelExtension
Id: 			as-ext-practitionerrole-education-level
Title:			"AS PractitionerRole Education Level Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour décrire le niveau de formation acquis d'un étudiant."

* ^context.type = #element
* ^context.expression = "PractitionerRole"

* . ^short = "niveauFormation"
* . ^definition = "Le niveau de formation."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    qualification 0..1 and
    qualificationType 0..1 and
    academicDegree 0..1 and
    achievedLevel 0..1 and
    academicYear 0..1 and
    period 0..1 and
    issuer 0..1  
// diplome
* extension[qualification] ^short = "diplome"
* extension[qualification] ^definition = "Diplôme acquis"
* extension[qualification].value[x] only CodeableConcept
* extension[qualification].valueCodeableConcept from $JDV-J105-EnsembleDiplome-RASS (required)
* extension[qualification].valueCodeableConcept ^binding.description = "Liste des diplômes et qualifications."
// typeDiplome
* extension[qualificationType] ^short = "typeDiplome"
* extension[qualificationType] ^definition = "Type de diplôme"
* extension[qualificationType].value[x] only CodeableConcept
* extension[qualificationType].valueCodeableConcept from $JDV-J81-TypeDiplome-RASS (required)
* extension[qualificationType].valueCodeableConcept ^binding.description = "Liste des types de diplômes."
// natureCycleFormation
* extension[academicDegree] ^short = "natureCycleFormation"
* extension[academicDegree] ^definition = "Nature du cycle de formation"
* extension[academicDegree].value[x] only CodeableConcept
* extension[academicDegree].valueCodeableConcept from $JDV-J86-NatCycleForm-RASS (required)
* extension[academicDegree].valueCodeableConcept ^binding.description = "Natures du cycle de formation des professionnels du RASS,"
// niveauFormationAcquis
* extension[achievedLevel] ^short = "niveauFormationAcquis"
* extension[achievedLevel] ^definition = "Niveau de validité dans le cycle de formation"
* extension[achievedLevel].value[x] only CodeableConcept
* extension[achievedLevel].valueCodeableConcept from $JDV-J87-NiveauFormAcquis-RASS (required)
* extension[achievedLevel].valueCodeableConcept ^binding.description = "Niveau de formation acquis dans le cycle de formation des professionnels."
// anneeUniversitaire
* extension[academicYear] ^short = "anneeUniversitaire"
* extension[academicYear] ^definition = "Année universitaire, exemple : 2015-2016"
* extension[academicYear].value[x] only CodeableConcept
* extension[academicYear].valueCodeableConcept from $JDV-J88-AnneeUniversitaire-RASS (required)
* extension[academicYear].valueCodeableConcept ^binding.description = "Années universitaires des professionnels."
// periodValidite
* extension[period] ^short = "periodValidite"
* extension[period] ^definition = "Période durant laquelle le niveau de formation est actif."
* extension[period].value[x] only Period
* extension[period].valuePeriod.start ^short = "dateDiplome"
* extension[period].valuePeriod.start ^definition = "Date d’obtention du diplôme."
* extension[period].valuePeriod.end ^short = "dateFin"
* extension[period].valuePeriod.end ^definition = "Date à laquelle le niveau de formation n’est plus actif (non visible hormis dans les données historisées)."
* extension[period].valuePeriod.end ^comment = "Cette date est renseignée par l’ordre à la clôture de l’exercice professionnel."
// lieuFormation
* extension[issuer] ^short = "lieuFormation"
* extension[issuer] ^definition = "Lieu de formation pour l'obtention du diplôme."
* extension[issuer].value[x] only Reference(AsOrganizationProfile or FrOrganization)
* extension[issuer].value[x].identifier.system = "urn:oid:1.2.250.1.213.1.6.4.1" (exactly)