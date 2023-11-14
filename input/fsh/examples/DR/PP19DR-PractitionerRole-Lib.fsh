Instance: pp19dr-practitioner-role-lib
InstanceOf: AsDrPractitionerRoleProfile
Usage: #example
// Basé sur les fichiers :
// tests-Platines-rass\Services_delta_donnees_actives\lot_complet\detail_jdd\7-Full_jour5\PP\PP19\professionalRole_ExePro_PP19.json
// tests-Platines-rass\Services_delta_donnees_actives\lot_complet\detail_jdd\7-Full_jour5\PP\PP19\organizationalRole_SituExe_PP19.json  --> modif : organization.identifier.value

// Identifiant technique
* id = "1738459"

// Métadonnées
* meta
  * versionId = "0.1"
  * source = "https://annuaire.sante.fr"
  * lastUpdated = "2019-09-05T01:00:00.000+01:00"
  * profile[+] = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitionerrole"

// Actif
* active = true

// Identifiant fonctionnel 
* identifier[+]
  * system = "https://annuaire.sante.fr"
  * value = "1010399870"

// Lien professionnel
* practitioner = Reference(Practitioner/334081)

// Lien EJ
* organization = Reference(Organization/548812)

// Période
* period
  * start = "2019-09-03"

// Code
* code[+]
  * coding[+]
    * system = "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante"
    * code = #10
  * coding[+]
    * system = "https://mos.esante.gouv.fr/NOS/TRE_R09-CategorieProfessionnelle/FHIR/TRE-R09-CategorieProfessionnelle"
    * code = #C
  * coding[+]
    * system = "https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite"
    * code = #GENR01
  * coding[+]
    * system = "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice"
    * code = #L
  * coding[+]
    * system = "https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction"
    * code = #FON-AU

// Langage
* language = #fr

// Nom
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-name"
  * valueHumanName
    * family = "BONNET"
    * given[+] = "Jerome"

// Enregistrement
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-registration"
  * extension[+]
    * url = "isFirst"
    * valueBoolean = true
  * extension[+]
    * url = "registeringOrganization"
    * valueCodeableConcept
      * coding[+]
        * system = "https://mos.esante.gouv.fr/NOS/TRE_R60-AutoriteEnregistrement/FHIR/TRE-R60-AutoriteEnregistrement"
        * code = #CNOM
  * extension[+]
    * url = "period"
    * valuePeriod
      * start = "2019-03-10"
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-registration"
  * extension[+]
    * url = "isFirst"
    * valueBoolean = false
  * extension[+]
    * url = "status"
    * valueCodeableConcept
      * coding[+]
        * system = "https://mos.esante.gouv.fr/NOS/TRE_R33-StatutInscription/FHIR/TRE-R33-StatutInscription/"
        * code = #D
  * extension[+]
    * url = "period"
    * valuePeriod
      * start = "2019-03-30"