Instance: pp16dr-practitioner
InstanceOf: AsDrPractitionerProfile
Usage: #example
// Basé sur le fichier tests-Platines-rass\Services_delta_donnees_actives\lot_complet\detail_jdd\1-Full_jour0\PP\PP16\Practitioner_PP16.json

// Identifiant technique
* id = "3719500"

// Métadonnées 
* meta
  * versionId = "0.1"
  * source = "https://annuaire.sante.fr"
  * lastUpdated = "2019-08-31T01:00:00.000+01:00"
  * profile[+] = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitioner"


* extension[as-ext-registration]
  * extension[isFirst]
    * valueBoolean = true
  * extension[registeringOrganization]
    * valueCodeableConcept
      * coding[+]
        * system = "https://mos.esante.gouv.fr/NOS/TRE_R60-AutoriteEnregistrement/FHIR/TRE-R60-AutoriteEnregistrement"
        * code = #CNOP
  * extension[period]
    * valuePeriod
      * start = "2019-01-15"
* extension[as-ext-registration]
  * extension[isFirst]
    * valueBoolean = false
  * extension[status]
    * valueCodeableConcept
      * coding[+]
        * system = "https://mos.esante.gouv.fr/NOS/TRE_R33-StatutInscription/FHIR/TRE-R33-StatutInscription"
        * code = #D
  * extension[period]
    * valuePeriod
      * start = "2019-01-15"
      


// Actif
* active = true

// Identifiant fonctionnel 
* identifier[idNatPs][+]
  * system = "urn:oid:1.2.250.1.71.4.2.1"
  * use = #official
  * value = "810102727017"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #IDNPS
* identifier[rpps][+]
  * system = "https://rpps.esante.gouv.fr"
  * use = #official
  * value = "10102727017"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #RPPS

// Nom d'usage (exercice pro)
* name[+]
  * prefix = "M"
  * use = #usual 
  * family = "CHATELIER"
  * given[+] = "David"
// Genre
* gender = #male

// Date de naissance
* birthDate = "1976-07-17"

// Langage
* language = #fr

// Communication 
* communication[+]
  * coding[+]
    * system = "https://mos.esante.gouv.fr/NOS/TRE_G00-Langue/FHIR/TRE-G00-Langue"
    * code = #fr

// Adresse de correspondance
* address[+]
  * city = "58400 LA-CHARITE-SUR-LOIRE"
  * postalCode = "58400"
  * country = "99100"
  * extension[inseeCode]
    * valueCoding
      * system = "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune"
      * code = #58059
  * line[+]
    * extension[houseNumber]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
      * valueString = "10"
    * extension[streetNameType]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
      * valueString = "PL"
    * extension[streetNameBase]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase"
      * valueString = "DES PECHEURS"

// Télécommunication
* telecom[+]
  * system = #phone
  * value = "0612122216"
  * rank = 1
* telecom[+]
  * system = #email
  * value = "davidchatelier@orange.fr"
  // TODO : Ajouter telecom[maiboxmss]

// Qualification
* qualification[degree][0]
  * code
    * coding[+][degree]
      * system = "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais"
      * code = #DE01
    * coding[+][degreeType]
      * system = "https://mos.esante.gouv.fr/NOS/TRE_R14-TypeDiplome/FHIR/TRE-R14-TypeDiplome"
      * code = #DE
  * period
    * start = "2019-01-08"
  * issuer = Reference(Organization/u63)



* qualification[exercicePro]
  * coding[profession] = https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante#21
  * coding[categorieProfession] = https://mos.esante.gouv.fr/NOS/TRE_R09-CategorieProfessionnelle/FHIR/TRE-R09-CategorieProfessionnelle#C




