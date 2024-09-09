Instance: pp19dr-organization-eg-cab
InstanceOf: AsDrOrganizationProfile
Usage: #example
// Basé sur le fichier tests-Platines-rass\Services_delta_donnees_actives\lot_complet\detail_jdd\2-Full_jour1\PM\PM1\PM1.json

// Identifiant technique
* id = "158480"

// Métadonnées
* meta
  * versionId = "0.1"
  * source = "https://annuaire.sante.fr"
  * lastUpdated = "2019-09-01T01:00:00.000+01:00"

// Actif
* active = true

// Identifiant fonctionnel 
* identifier[idNatSt][+]
  * system = "urn:oid:1.2.250.1.71.4.2.2"
  * use = #official
  * value = "1754567860"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #IDNST
* identifier[+][finess]
  * system = "https://finess.esante.gouv.fr"
  * use = #official
  * value = "754567860"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #FINEG
* identifier[rppsRang][+]
  * system = "https://rppsrang.esante.gouv.fr"
  * use = #official
  * value = "F754567860"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #INTRN

// Nom
* name = "CH EURE-SEINE"

// Langage
* language = #fr

// Type
* type[organizationType][+]
  * extension[as-ext-organization-types].valueCode = #organizationType
  * coding
    * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307"
    * code = #GEOGRAPHICAL-ENTITY
* type[secteurActiviteRASS][+]
  * extension[as-ext-organization-types].valueCode = #secteurActiviteRASS
  * coding
    * system = "https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite"
    * code = #SA01
* type[activiteINSEE][+]
  * extension[as-ext-organization-types].valueCode = #activiteINSEE
  * coding
    * system = "https://mos.esante.gouv.fr/NOS/TRE_R75-InseeNAFrev2Niveau5/FHIR/TRE-R75-InseeNAFrev2Niveau5/"
    * code = #86.10Z

// Télécommunication
* telecom[+]
  * system = #phone
  * value = "0450636363"
  * rank = 1
* telecom[+]
  * system = #fax
  * value = "0450455933"

// Adresse
* address
  * city = "75014 PARIS"
  * postalCode = "75014"
  * extension[inseeCode]
    * valueCoding
      * system = "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune"
      * code = #75114
  * line
    * extension[houseNumber]
      * valueString = "96"
    * extension[streetNameType]
      * valueString = "R"
    * extension[streetNameBase]
      * valueString = "DIDOT"

// Période
* extension[usePeriod]
  * valuePeriod
    * start = "2019-06-01"