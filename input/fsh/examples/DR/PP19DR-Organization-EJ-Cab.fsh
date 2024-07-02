Instance: pp19dr-organization-ej-cab
InstanceOf: AsDrOrganizationProfile
Usage: #example
// Basé sur le fichier tests-Platines-rass\Services_delta_donnees_actives\lot_complet\detail_jdd\2-Full_jour1\PM\PM7\PM7.json

// Identifiant technique
* id = "548812"

// Métadonnées
* meta
  * versionId = "0.1"
  * source = "https://annuaire.sante.fr"
  * lastUpdated = "2019-09-01T01:00:00.000+01:00"
  * profile[+] = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-organization"

// Actif
* active = true

// Identifiant fonctionnel
* identifier[idNatSt][+]
  * system = "urn:oid:1.2.250.1.71.4.2.2"
  * use = #official
  * value = "410005531586003"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #IDNST
* identifier[rppsRang][+]
  * system = "https://rppsrang.esante.gouv.fr"
  * use = #official
  * value = "REJ10000000800887"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #INTRN

// Nom
* name = "CABINET SAINT ANTOINE"

// Alias 
* alias[+] = "CABINET DE GROUPE"

// Langage
* language = #fr

// Type
* type[organizationType][+]
  * coding
    * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307"
    * code = #LEGAL-ENTITY
* type[secteurActiviteRASS][+]
  * coding
    * system = "https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite"
    * code = #SA08

// Période
* extension[usePeriod]
  * valuePeriod
    * start = "2019-04-01"