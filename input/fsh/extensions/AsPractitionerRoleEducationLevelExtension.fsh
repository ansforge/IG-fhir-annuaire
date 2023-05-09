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
* extension[qualification] ^comment = "Synonyme MOS : diplome"
* extension[qualification] ^short = "Diplôme acquis."
* extension[qualification].value[x] only CodeableConcept
* extension[qualification].valueCodeableConcept from $JDV-J105-EnsembleDiplome-RASS (required)
* extension[qualification].valueCodeableConcept ^binding.description = "Liste des diplômes et qualifications."
// typeDiplome
* extension[qualificationType] ^comment = "Synonyme MOS : typeDiplome"
* extension[qualificationType] ^short = "Type de diplôme."
* extension[qualificationType].value[x] only CodeableConcept
* extension[qualificationType].valueCodeableConcept from $JDV-J81-TypeDiplome-RASS (required)
* extension[qualificationType].valueCodeableConcept ^binding.description = "Liste des types de diplômes."
// natureCycleFormation
* extension[academicDegree] ^comment = "Synonyme MOS : natureCycleFormation"
* extension[academicDegree] ^short = "Nature du cycle de formation."
* extension[academicDegree].value[x] only CodeableConcept
* extension[academicDegree].valueCodeableConcept from $JDV-J86-NatCycleForm-RASS (required)
* extension[academicDegree].valueCodeableConcept ^binding.description = "Natures du cycle de formation des professionnels du RASS,"
// niveauFormationAcquis
* extension[achievedLevel] ^comment = "Synonyme MOS : niveauFormationAcquis"
* extension[achievedLevel] ^short = "Niveau de formation acquis dans le cycle de formation du professionnel."
* extension[achievedLevel].value[x] only CodeableConcept
* extension[achievedLevel].valueCodeableConcept from $JDV-J87-NiveauFormAcquis-RASS (required)
* extension[achievedLevel].valueCodeableConcept ^binding.description = "Liste des niveaux de formation"
// anneeUniversitaire
* extension[academicYear] ^comment = "Synonyme MOS : anneeUniversitaire"
* extension[academicYear] ^short = "Année universitaire du professionnel (exemple : 2015-2016)."
* extension[academicYear].value[x] only CodeableConcept
* extension[academicYear].valueCodeableConcept from $JDV-J88-AnneeUniversitaire-RASS (required)
* extension[academicYear].valueCodeableConcept ^binding.description = "Listes des années universitaires."
// periodValidite
* extension[period] ^short = "Période durant laquelle le niveau de formation est actif."
* extension[period].value[x] only Period
* extension[period].valuePeriod.start ^comment = "Synonyme MOS : dateDiplome ; cette date est renseignée par l’ordre à la clôture de l’exercice professionnel."
* extension[period].valuePeriod.start ^short = "Date d’obtention du diplôme."
* extension[period].valuePeriod.end ^short = "Date à laquelle le niveau de formation n’est plus actif (non visible hormis dans les données historisées)."
* extension[period].valuePeriod.end ^comment = "Synonyme MOS : dateFin"
// lieuFormation
* extension[issuer] ^comment = "Synonyme MOS : lieuFormation"
* extension[issuer] ^short = "Lieu de formation pour l'obtention du diplôme."
* extension[issuer].value[x] only Reference(AsOrganizationProfile or FrOrganization)
* extension[issuer].value[x].identifier.system = "urn:oid:1.2.250.1.213.1.6.4.1" (exactly)