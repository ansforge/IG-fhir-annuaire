Instance: pp19dp-practitioner
InstanceOf: AsDpPractitionerProfile
Usage: #example
// Basé sur le fichier tests-Platines-rass\Services_delta_donnees_actives\lot_complet\detail_jdd\7-Full_jour5\PP\PP19\Practitioner_PP19.json

// Identifiant technique
* id = "334081DP"

// Métadonnées
* meta
  * versionId = "0.1"
  * source = "https://annuaire.sante.fr"
  * lastUpdated = "2019-09-05T01:00:00.000+01:00"

// Actif
* active = true

// Identifiant fonctionnel 
* identifier[idNatPs]
  * system = "urn:oid:1.2.250.1.71.4.2.1"
  * use = #official
  * value = "810003461033"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #IDNPS
* identifier[rpps]
  * system = "https://rpps.esante.gouv.fr"
  * use = #official
  * value = "10003461033"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #RPPS

// Nom 
* name[+]
  * prefix = "M"
  * use = #usual 
  * family = "Saucier"
  * given[+] = "Arthur"

// Langage
* language = #fr

// Télécommunication
* telecom[mailbox-mss]
  * system = #email
  * value = "jeromebonnet@pro.mssante.fr"
  * extension[emailType].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie#MSSANTE


// Qualification
* qualification[degree][+]
  * code
    * coding[degree]
      * system = "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais"
      * code = #DE05
    * coding[degreeType]
      * system = "https://mos.esante.gouv.fr/NOS/TRE_R14-TypeDiplome/FHIR/TRE-R14-TypeDiplome"
      * code = #DE


* qualification[exercicePro]
  * code
    * coding[profession] = https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante#10
    * coding[categorieProfession] = https://mos.esante.gouv.fr/NOS/TRE_R09-CategorieProfessionnelle/FHIR/TRE-R09-CategorieProfessionnelle#C