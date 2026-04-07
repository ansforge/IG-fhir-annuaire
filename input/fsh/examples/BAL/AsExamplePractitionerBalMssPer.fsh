// ============================================================
// Praticiens de démonstration — BAL MSS PER
// Données fictives, à usage illustratif uniquement
// ============================================================

// -----------------------------------------------
// Practitioner 1 — Jean-Marie DUPONT (version complète)
// -----------------------------------------------
Instance: as-practitioner-bal-per-dupont
InstanceOf: AsPractitionerProfile
Usage: #example
Title: "Practitioner — BAL PER (exemple complet)"
Description: "Exemple fictif de Practitioner portant une BAL MSSanté personnelle (PER) avec dématérialisation acceptée."

* id = "as-practitioner-bal-per-dupont"

* meta
  * lastUpdated = "2025-11-04T09:12:00.000+01:00"

* active = true

* identifier[idNatPs][+]
  * system = "urn:oid:1.2.250.1.71.4.2.1"
  * use = #official
  * value = "810003456789"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #IDNPS

* identifier[rpps][+]
  * system = "https://rpps.esante.gouv.fr"
  * use = #official
  * value = "10003456789"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #RPPS

* name[+]
  * use = #official
  * family = "DUPONT"
  * given[+] = "Jean-Marie"

* language = #fr

* telecom[mailbox-mss][+]
  * system = #email
  * value = "jean-marie.dupont@infirmier.mssante.fr"
  * extension[emailType].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie#MSSANTE
  * extension[as-mailbox-mss-metadata].extension[type].valueCodeableConcept = https://mos.esante.gouv.fr/NOS/TRE_R257-TypeBAL/FHIR/TRE-R257-TypeBAL#PER
  * extension[as-mailbox-mss-metadata].extension[digitization].valueBoolean = true
  * extension[as-mailbox-mss-metadata].extension[listeRouge].valueBoolean = false

* qualification[degree][0]
  * code
    * coding[+][degree]
      * system = "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais"
      * code = #DE01
    * coding[+][degreeType]
      * system = "https://mos.esante.gouv.fr/NOS/TRE_R14-TypeDiplome/FHIR/TRE-R14-TypeDiplome"
      * code = #DE

* qualification[exercicePro]
  * code
    * coding[profession] = https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante#21
    * coding[categorieProfession] = https://mos.esante.gouv.fr/NOS/TRE_R09-CategorieProfessionnelle/FHIR/TRE-R09-CategorieProfessionnelle#C


// -----------------------------------------------
// Practitioner 2 — Sophie MARTIN (version complète)
// -----------------------------------------------
Instance: as-practitioner-bal-per-martin
InstanceOf: AsPractitionerProfile
Usage: #example
Title: "Practitioner — BAL PER (exemple complet, 2e praticien)"
Description: "Exemple fictif de Practitioner portant une BAL MSSanté personnelle (PER) avec dématérialisation refusée."

* id = "as-practitioner-bal-per-martin"

* meta
  * lastUpdated = "2025-10-17T14:30:00.000+02:00"

* active = true

* identifier[idNatPs][+]
  * system = "urn:oid:1.2.250.1.71.4.2.1"
  * use = #official
  * value = "810007654321"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #IDNPS

* identifier[rpps][+]
  * system = "https://rpps.esante.gouv.fr"
  * use = #official
  * value = "10007654321"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #RPPS

* name[+]
  * use = #official
  * family = "MARTIN"
  * given[+] = "Sophie"

* language = #fr

* telecom[mailbox-mss][+]
  * system = #email
  * value = "sophie.martin@medecin.mssante.fr"
  * extension[emailType].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie#MSSANTE
  * extension[as-mailbox-mss-metadata].extension[type].valueCodeableConcept = https://mos.esante.gouv.fr/NOS/TRE_R257-TypeBAL/FHIR/TRE-R257-TypeBAL#PER
  * extension[as-mailbox-mss-metadata].extension[digitization].valueBoolean = false
  * extension[as-mailbox-mss-metadata].extension[listeRouge].valueBoolean = false

* qualification[degree][0]
  * code
    * coding[+][degree]
      * system = "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais"
      * code = #DE01
    * coding[+][degreeType]
      * system = "https://mos.esante.gouv.fr/NOS/TRE_R14-TypeDiplome/FHIR/TRE-R14-TypeDiplome"
      * code = #DE

* qualification[exercicePro]
  * code
    * coding[profession] = https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante#21
    * coding[categorieProfession] = https://mos.esante.gouv.fr/NOS/TRE_R09-CategorieProfessionnelle/FHIR/TRE-R09-CategorieProfessionnelle#C


// -----------------------------------------------
// Practitioner 1 — Jean-Marie DUPONT (version _elements)
// Seuls identifier et telecom sont présents (+ meta.tag SUBSETTED)
// -----------------------------------------------
Instance: as-practitioner-bal-per-dupont-elements
InstanceOf: AsPractitionerProfile
Usage: #example
Title: "Practitioner — BAL PER (éléments restreints)"
Description: "Exemple fictif illustrant la réponse d'un Practitioner avec _elements=identifier,telecom. Seuls ces deux champs sont retournés (meta.tag SUBSETTED requis par la spec FHIR)."

* id = "as-practitioner-bal-per-dupont-elements"

* meta
  * lastUpdated = "2025-11-04T09:12:00.000+01:00"
  * tag[+]
    * system = "http://terminology.hl7.org/CodeSystem/v3-ObservationValue"
    * code = #SUBSETTED

* identifier[idNatPs][+]
  * system = "urn:oid:1.2.250.1.71.4.2.1"
  * use = #official
  * value = "810003456789"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #IDNPS

* identifier[rpps][+]
  * system = "https://rpps.esante.gouv.fr"
  * use = #official
  * value = "10003456789"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #RPPS

* telecom[mailbox-mss][+]
  * system = #email
  * value = "jean-marie.dupont@infirmier.mssante.fr"
  * extension[emailType].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie#MSSANTE
  * extension[as-mailbox-mss-metadata].extension[type].valueCodeableConcept = https://mos.esante.gouv.fr/NOS/TRE_R257-TypeBAL/FHIR/TRE-R257-TypeBAL#PER
  * extension[as-mailbox-mss-metadata].extension[digitization].valueBoolean = true
  * extension[as-mailbox-mss-metadata].extension[listeRouge].valueBoolean = false


// -----------------------------------------------
// Practitioner 2 — Sophie MARTIN (version _elements)
// -----------------------------------------------
Instance: as-practitioner-bal-per-martin-elements
InstanceOf: AsPractitionerProfile
Usage: #example
Title: "Practitioner — BAL PER (éléments restreints, 2e praticien)"
Description: "Exemple fictif illustrant la réponse d'un Practitioner avec _elements=identifier,telecom."

* id = "as-practitioner-bal-per-martin-elements"

* meta
  * lastUpdated = "2025-10-17T14:30:00.000+02:00"
  * tag[+]
    * system = "http://terminology.hl7.org/CodeSystem/v3-ObservationValue"
    * code = #SUBSETTED

* identifier[idNatPs][+]
  * system = "urn:oid:1.2.250.1.71.4.2.1"
  * use = #official
  * value = "810007654321"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #IDNPS

* identifier[rpps][+]
  * system = "https://rpps.esante.gouv.fr"
  * use = #official
  * value = "10007654321"
  * type
    * coding[+]
      * system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      * code = #RPPS

* telecom[mailbox-mss][+]
  * system = #email
  * value = "sophie.martin@medecin.mssante.fr"
  * extension[emailType].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie#MSSANTE
  * extension[as-mailbox-mss-metadata].extension[type].valueCodeableConcept = https://mos.esante.gouv.fr/NOS/TRE_R257-TypeBAL/FHIR/TRE-R257-TypeBAL#PER
  * extension[as-mailbox-mss-metadata].extension[digitization].valueBoolean = false
  * extension[as-mailbox-mss-metadata].extension[listeRouge].valueBoolean = false
