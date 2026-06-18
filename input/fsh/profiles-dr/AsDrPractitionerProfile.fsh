Profile: 		AsDrPractitionerProfile
Parent: 		as-practitioner
Id: 			as-dr-practitioner
Title:			"AS Donnée Restreinte Practitioner Profile"
Description: 	"Profil restreint créé à partir de as-practitioner dans le contexte des données en accès restreint de l’Annuaire Santé."

* meta.profile contains as-dr-canonical 1..1
* meta.profile[as-dr-canonical] = Canonical(as-dr-practitioner)
* meta.profile[fr-canonical] 1..1

* extension[as-ext-registration] MS
* extension[as-ext-frpractitioner-authorization] MS
* extension[as-ext-smartcard] MS
* extension[as-ext-smartcard].extension[oppositionDate] MS
* extension[as-ext-digital-certificate] MS

* identifier[idNatPs] MS
* identifier[rpps] MS


// Slice : attributionParticuliere

* qualification contains attributionParticuliere 0..*

* qualification[attributionParticuliere].code.coding from https://mos.esante.gouv.fr/NOS/JDV_J90-AttributionParticuliere-RASS/FHIR/JDV-J90-AttributionParticuliere-RASS (required)
* qualification[attributionParticuliere].code MS

* qualification[attributionParticuliere].period MS
* qualification[attributionParticuliere].period.start ^short = "[Donnée restreinte] : dateDebutReconnaissance"
* qualification[attributionParticuliere].period.end ^short = "[Donnée restreinte] : dateAbandon"


// periodValidite
* qualification[degree].period ^short = "[Donnée restreinte] : Période durant laquelle le niveau de formation est actif."

* qualification[degree].period.start ^short = "dateDebut : Date d’obtention du diplôme (dateDiplome)\ncette date est renseignée par l’ordre à la clôture de l’exercice professionnel." 
* qualification[degree].period.start MS

* qualification[degree].period.end ^short = "dateFin : Date à laquelle le niveau de formation n’est plus actif (non visible hormis dans les données historisées)." 
* qualification[degree].period.end MS


* insert rs-as-core
* meta.extension[as-ext-data-trace] MS

* identifier[idNatPs] 1..1
* identifier[rpps] 1..1

// name
* name 0..1
// certificat
* extension[as-ext-digital-certificate].extension[domain] ..0 // Cardinalité : 0..0 pour les personnes physiques ; 0..1 pour les structures
