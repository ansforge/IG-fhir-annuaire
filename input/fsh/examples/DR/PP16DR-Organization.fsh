Instance: pp16dr-organization
InstanceOf: AsDrOrganizationProfile
Usage: #example
// Basé sur le fichier tests-Platines-rass\Services_delta_donnees_actives\lot_complet\detail_jdd\4-Delta_jour2\PM\PM2PM2.json

// Identifiant technique
* id = "481677"

// Métadonnées
* meta
  * versionId = "0.1"
  * source = "https://annuaire.sante.fr"
  * lastUpdated = "2019-09-02T01:00:00.000+01:00"
// Actif
* active = true

// Identifiant fonctionnel 
* identifier[idNatSt]
  * system = "urn:oid:1.2.250.1.71.4.2.2"
  * use = #official
  * value = "1580008803"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #IDNST
* identifier[finess]
  * system = "https://finess.esante.gouv.fr"
  * use = #official
  * value = "580008803"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #FINEJ
* identifier[rppsRang]
  * system = "https://rppsrang.esante.gouv.fr"
  * use = #official
  * value = "F58000880311022013"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #INTRN


* telecom[mailbox-mss]
  * system = #email
  * value = "xxxx@xxxxx.mssante.fr"
  * extension[emailType].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie#MSSANTE
  * extension[as-mailbox-mss-metadata].extension[type].valueCodeableConcept =  https://mos.esante.gouv.fr/NOS/TRE_R257-TypeBAL/FHIR/TRE-R257-TypeBAL#ORG


// Nom
* name = "PHARMACIE NOLOT"

// Langage
* language = #fr

// Type
* type[organizationType][+]
  * extension[as-ext-organization-types].valueCode = #organizationType
  * coding
    * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307"
    * code = #LEGAL-ENTITY
* type[secteurActiviteRASS][+]
  * extension[as-ext-organization-types].valueCode = #secteurActiviteRASS
  * coding
    * system = "https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite"
    * code = #SA33

// Période
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/organization-period"
  * valuePeriod
    * start = "2019-09-02"