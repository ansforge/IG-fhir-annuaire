Profile: 		ASPractitionerProfile
Parent: 		FrPractitioner
Id: 			as-practitioner
Title:			"AS Practitioner Profile"
Description: 	"Profil créé à partir de la ressource Practitioner dans le contexte de l'Annuaire Santé pour décrire les données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social."
/* extensions */
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $practitioner-nationality named practitioner-nationality 0..1 MS and
    $practitioner-authorization named practitioner-authorization 0..* MS and
    $practitioner-birthPlace named practitioner-birthPlace 0..1 MS and
    $practitioner-deceasedDateTime named practitioner-deceasedDateTime 0..* MS
/* Practitioner.identifier */
* identifier MS
* identifier ^short = "Une instance par identifiant (RPPS, ADELI, idNat_PS…)"
// Practitioner.identifier.type
* identifier.type ^short = "typeIdNat_PP"
* identifier.type from $fr-practioner-identifier-type (extensible)
* identifier.type ^comment = "Les code ADELI, RPPS et IDNPS proviennent du system  http://interopsante.org/fhir/CodeSystem/fr-v2-0203 ; Les code 1, 3, 4, 5, 6 proviennent du system : https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"
* identifier.type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* identifier.type ^binding.extension[=].valueString = "IdentifierType"
* identifier.type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier.type ^binding.extension[=].valueBoolean = true
* identifier.type ^binding.description = "ValueSet défini par Interop’Santé « fr-practioner-identifier-type"
// Practitioner.identifier.system
* identifier.system ^short = "le système de l'identifiant dépend de la source d'où provient l'identifiant"
* identifier.system ^comment = "« http://rpps.fr» si l’instance correspond à un identifiant RPPS ; « http://adeli.fr» si l’instance correspond à un identifiant ADELI ; « urn:oid:1.2.250.1.71.4.2.1 » si l’instance correspond à l’identification nationale PP (idNat_PS) ; « urn:oid:1.2.250.1.213.1.6.4.2 » si l’instance correspond à une identification locale : Id Cabinet ADELI/N° de registre, FINESS/N° de registre, SIREN/N° de registre, SIRET/N° de registre ou Id Cabinet RPPS/N° de registre"
// Practitioner.identifier.value
* identifier.value ^short = "idPP"
* identifier.value ^comment = "la valeur de l'identifiant du PS"
// Practitioner.active
* active MS
* active ^short = "isActive"
* active ^comment = "true  par défaut; false pour les professionnels supprimés"
/* Practitioner.name */
* name MS
* name only $FrHumanName
* name ^short = "Une instance pour le nom d’usage et une instance pour le nom issu de l’état-civil"
* name.use ^comment = "« usual » pour nom et prénom d’usage (Personne) ; « official » pour nom de famille et prénoms (Etat-civil)"
// nomFamille/nomUsage
* name.family ^short = "[DR] : nomFamille/nomUsage"
// prenom/prenomUsuel
* name.given ^short = "[DR] : prenom/prenomUsuel"
// HumanName.prefix
* name.prefix ^binding.strength = #required
* name.prefix ^short = "civilite"
// Practitioner.gender
* gender MS
* gender ^short = "[DR] : sexeAdministratif"
* gender from $TRE-R249-Sexe (required)
// Practitioner.birthDate
* birthDate MS
* birthDate ^short = "[DR] - dateNaissance"
// lieuNaissance
* extension[practitioner-birthPlace] ^isModifier = false
* extension[practitioner-birthPlace] ^definition = "Code officiel géographique (COG) de la commune (France) ou du pays"
* extension[practitioner-birthPlace] ^short = "[DR] : lieuNaissance"
// nationalite
* extension[practitioner-nationality] ^isModifier = false
* extension[practitioner-nationality] ^definition = "Nationalité de la personne"
* extension[practitioner-nationality] ^short = "[DR] : nationalite"
// dateDeces
* extension[practitioner-deceasedDateTime] ^isModifier = false
* extension[practitioner-deceasedDateTime] ^definition = "Date de décès de la personne"
* extension[practitioner-deceasedDateTime] ^short = "[DR] : dateDeces"
// telecommunication 
* telecom MS
* telecom ^short = "[DR] : telecommunication"
* telecom only $FrContactPoint
* telecom ^comment = "Différentes instances pour les téléphones, la télécopie et l’adresse mail"
* telecom.system ^comment = "« phone » pour Téléphone et Téléphone 2 ; « fax » pour Télécopie ; « email » pour adresse e-mail"
* telecom.use ^comment = "« old » si les coordonnées de correspondance ont une date de fin"
// adresseCorrespondance
* address MS
* address ^short = "[DR] : adresseCorrespondance"
* address only AsAddressExtendedProfile
// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "code"
* telecom contains mailbox-mss 0..*
* telecom[mailbox-mss] only as-mailbox-mss
* telecom[mailbox-mss] ^definition = "Les BALs MSS de type PER rattachées seulement à l'identifiant du professionnel de Santé"
* telecom[mailbox-mss] ^short = "boiteLettreMSS"

// Practitioner.photo
* photo MS
// Slice deja défini dans FrPractitioner
* qualification MS
* qualification.code.coding contains degreeType 0..* // slicing type de diplome
// typeDiplome
* qualification.code.coding[degreeType] from $JDV-J81-TypeDiplome-RASS (required)
* qualification.code.coding[degreeType] ^binding.description = "Liste des types de diplôme"
* qualification.code.coding[degreeType] ^short = "typeDiplome"
// AutreDiplomeObtenu
* qualification.code.coding[degreeR36] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR36] ^binding.description = "Autre diplôme obtenu"
* qualification.code.coding[degreeR36] ^short = "autreDiplomeObtenu"
// qualification
* qualification.code.coding[degreeR47] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR47] ^binding.description = "Qualification attribuée par une commission"
* qualification.code.coding[degreeR47] ^short = "qualification"
// DiplomeEtat
* qualification.code.coding[degreeR48] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR48] ^binding.description = "Ensemble des diplômes et qualifications"
* qualification.code.coding[degreeR48] ^short = "DiplomeEtat"
// DiplomeEtudeSpecialisee
* qualification.code.coding[degreeR49] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR49] ^binding.description = "Ensemble des diplômes et qualifications"
* qualification.code.coding[degreeR49] ^short = "DiplomeEtudeSpecialisee"
// DESC1
* qualification.code.coding[degreeR50] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR50] ^binding.description = "Ensemble des diplômes et qualifications"
* qualification.code.coding[degreeR50] ^short = "DESC1"
// DESC2
* qualification.code.coding[degreeR51] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR51] ^binding.description = "Ensemble des diplômes et qualifications"
* qualification.code.coding[degreeR51] ^short = "DESC2"
// capaciteDiplome
* qualification.code.coding[degreeR52] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR52] ^binding.description = "Diplôme de capacité de médecine"
* qualification.code.coding[degreeR52] ^short = "capaciteDiplome"
// DiplomeEEE
* qualification.code.coding[degreeR53] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR53] ^binding.description = "Diplôme d'un pays de l'espace économique européen"
* qualification.code.coding[degreeR53] ^short = "DiplomeEEE"
// DiplomeUniversitaire
* qualification.code.coding[degreeR54] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR54] ^binding.description = "Diplôme universitaire ou interuniversitaire"
* qualification.code.coding[degreeR54] ^short = "DiplomeUniversitaire"
// certificatEtudeSpeciale
* qualification.code.coding[degreeR55] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR55] ^binding.description = "Certificat d'études spéciales (CES)"
* qualification.code.coding[degreeR55] ^short = "certificatEtudeSpeciale"
// attestation
* qualification.code.coding[degreeR56] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR56] ^binding.description = "Attestation de formation"
* qualification.code.coding[degreeR56] ^short = "attestation"
// DiplomeEES
* qualification.code.coding[degreeR57] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR57] ^binding.description = "Diplôme européen d'études spécialisées"
* qualification.code.coding[degreeR57] ^short = "DiplomeEES"
// DiplomeDivers
* qualification.code.coding[degreeR58] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR58] ^binding.description = "Autre type de diplôme obtenu"
* qualification.code.coding[degreeR58] ^short = "DiplomeDivers"
// diplomeDeuxiemeCycleNonQualifiant
* qualification.code.coding[degreeR226] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR226] ^binding.description = "Diplôme de deuxième cycle non qualifiant"
* qualification.code.coding[degreeR226] ^short = "diplomeDeuxiemeCycleNonQualifiant"
* qualification.issuer.identifier ^short = "Code du lieu d'obtention du diplôme"
* qualification.issuer.identifier.system = "urn:oid:1.2.250.1.213.1.6.4.1" (exactly)
// AutorisationExercice
* extension[practitioner-authorization] ^isModifier = false
* extension[practitioner-authorization] ^definition = "L'autorisation d'exercice pour les personnes diposant de diplômes étrangers non reconnus en France"
* extension[practitioner-authorization] ^short = "[DR] : autorisationExercice"
// langueParlee
* communication MS
* communication ^short = "langueParlee"
* communication only $codeableConcept-timed
* communication from $JDV_J82-Langue-RASS (required)
