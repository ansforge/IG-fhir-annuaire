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
* code[genreActivite] = https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite#GENR01
* code[modeExercice] = https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice#L
* code[fonction] = https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction#FON-AU

// Langage
* language = #fr