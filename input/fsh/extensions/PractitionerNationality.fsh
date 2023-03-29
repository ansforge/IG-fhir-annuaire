Extension: 		PractitionerNationality
Id: 			Practitioner-Nationality
Title:			"EAS Practitioner Nationality"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la nationalité du professionnel (Practitioner)."

* ^context.type = #element
* ^context.expression = "Practitioner"
* . ^short = "Nationalité du professionnel"
* . ^definition = "Nationalité du professionnel"
* . ^isModifier = false
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    code 0..1 and
    period 0..1
* extension[code] ^short = "Code nationalité professionnel"
* extension[code] ^definition = "Code nationalité professionnel"
* extension[code] ^isModifier = false
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] N
* extension[code].value[x] from $JDV-J74-Pays-RASS (required)
* extension[code].value[x] ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* extension[code].value[x] ^extension[=].valueCode = #4.0.0
* extension[code].value[x] ^binding.description = "Pays (codes INSEE) du RASS;https://mos.esante.gouv.fr/NOS/JDV_J74-Pays-RASS/FHIR/JDV-J74-Pays-RASS"
* extension[code].value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R20-Pays" (exactly)
* extension[period] ^short = "date d’acquisition de la nationalité française"
* extension[period].value[x] only Period
* extension[period].value[x] N
* extension[period].value[x] ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* extension[period].value[x] ^extension[=].valueCode = #4.0.0
