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
    AsPractitionerNationalityExtension named as-ext-practitioner-nationality 0..1 MS and
    AsPractitionerAuthorizationExtension named as-ext-practitioner-authorization 0..* MS and
    AsPractitionerBirthPlaceExtension named as-ext-practitioner-birth-place 0..1 MS and
    AsPractitionerDeceasedDateTimeExtension named as-ext-practitioner-deceased-date-time 0..* MS
/* Practitioner.identifier */
* identifier MS
* identifier ^short = "Une instance par identifiant (RPPS, ADELI, idNat_PS…)"
// Practitioner.identifier.type
* identifier.type ^short = "Type d’identifiant national de la personne physique."
* identifier.type ^comment = "Synonymes MOS : typeIdNat_PP,\r\nLes codes ADELI, RPPS et IDNPS proviennent du system  http://interopsante.org/fhir/CodeSystem/fr-v2-0203 ; Les codes 1, 3, 4, 5, 6 proviennent du system : https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"
* identifier.type from $fr-practioner-identifier-type (extensible)
* identifier.type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* identifier.type ^binding.extension[=].valueString = "IdentifierType"
* identifier.type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier.type ^binding.extension[=].valueBoolean = true
* identifier.type ^binding.description = "ValueSet défini par Interop’Santé « fr-practioner-identifier-type"
// Practitioner.identifier.system
* identifier.system ^short = "le système de l'identifiant dépend de la source d'où provient l'identifiant."
* identifier.system ^comment = "« http://rpps.fr» si l’instance correspond à un identifiant RPPS ; « http://adeli.fr» si l’instance correspond à un identifiant ADELI ; « urn:oid:1.2.250.1.71.4.2.1 » si l’instance correspond à l’identification nationale PP (idNat_PS) ; « urn:oid:1.2.250.1.213.1.6.4.2 » si l’instance correspond à une identification locale : Id Cabinet ADELI/N° de registre, FINESS/N° de registre, SIREN/N° de registre, SIRET/N° de registre ou Id Cabinet RPPS/N° de registre"
// Practitioner.identifier.value
* identifier.value ^comment = "Synonyme MOS : idPP"
* identifier.value ^short = "Identifiant national de la personne physique."
// Practitioner.active
* active MS
* active ^short = "Le professionnel est-il actif? active | inactive"
* active ^comment = "true  par défaut; false pour les professionnels supprimés"
/* Practitioner.name */
* name MS
* name only $FrHumanName
* name ^short = "Une instance pour le nom d’usage et une instance pour le nom issu de l’état-civil"
* name.use ^comment = "« usual » pour nom et prénom d’usage (Personne) ; « official » pour nom de famille et prénoms (Etat-civil)"
// nomFamille/nomUsage
* name.family ^short = "[Donnée restreinte] : Le nom de famille (également nommé nom de naissance) ou le nom d'usage de la personne."
// prenom/prenomUsuel
* name.given ^short = "[Donnée restreinte] : Prénom(s) déclarés à sa naissance de la personne."
// HumanName.prefix
* name.prefix ^binding.strength = #required
* name.prefix ^comment = "Synonyme MOS : civilite"
* name.prefix ^short = "Civilité de la personne physique."
// Practitioner.gender
* gender MS
* gender ^comment = "Synonyme MOS : sexeAdministratif"
* gender ^short = "[Donnée restreinte] : Sexe administratif de la personne physique, au sens de l'état civil, masculin ou féminin."
* gender from $TRE-R249-Sexe (required)
// Practitioner.birthDate
* birthDate MS
* birthDate ^comment = "Synonyme MOS : dateNaissance"
* birthDate ^short = "[Donnée restreinte] : Date de naissance de la personne, modifiée selon les règles du RNIV dans le cas des dates exceptionnelles."
// lieuNaissance
* extension[as-ext-practitioner-birth-place] ^isModifier = false
* extension[as-ext-practitioner-birth-place] ^short = "[Donnée restreinte] : Code officiel géographique (COG) de la commune (France) ou du pays"
* extension[as-ext-practitioner-birth-place] ^comment = "Synonyme MOS : lieuNaissance"
// nationalite
* extension[as-ext-practitioner-nationality] ^isModifier = false
* extension[as-ext-practitioner-nationality] ^short = "[Donnée restreinte] : Nationalité de la personne."
* extension[as-ext-practitioner-nationality] ^comment = "Synonyme MOS : nationalite"
// dateDeces
* extension[as-ext-practitioner-deceased-date-time] ^isModifier = false
* extension[as-ext-practitioner-deceased-date-time] ^short = "[Donnée restreinte] : Date de décès de la personne."
* extension[as-ext-practitioner-deceased-date-time] ^comment = "Synonyme MOS : dateDeces"
// telecommunication 
* telecom MS
* telecom ^short = "[DR] : telecommunication"
* telecom only $FrContactPoint
* telecom ^short = "Différentes instances pour les téléphones, la télécopie et l’adresse mail."
* telecom.system ^comment = "« phone » pour Téléphone et Téléphone 2 ; « fax » pour Télécopie ; « email » pour adresse e-mail"
* telecom.use ^comment = "« old » si les coordonnées de correspondance ont une date de fin"
// adresseCorrespondance
* address MS
* address ^comment = "Synonyme MOS : adresseCorrespondance"
* address ^short = "[Donnée restreinte] : Adresse(s) de correspondance permettant de contacter le professionnel."
* address only AsAddressExtendedProfile
// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "code"
* telecom contains mailbox-mss 0..*
* telecom[mailbox-mss] only as-mailbox-mss
* telecom[mailbox-mss] ^short = "Les BALs MSS de type PER rattachées seulement à l'identifiant du professionnel de Santé."
* telecom[mailbox-mss] ^comment = "Synonyme MOS : boiteLettreMSS"

// Practitioner.photo
* photo MS
// Slice deja défini dans FrPractitioner
* qualification MS
* qualification.code.coding contains degreeType 0..* // slicing type de diplome
// typeDiplome
* qualification.code.coding[degreeType] from $JDV-J81-TypeDiplome-RASS (required)
* qualification.code.coding[degreeType] ^binding.description = "Liste des types de diplôme"
* qualification.code.coding[degreeType] ^comment = "Synonyme MOS : typeDiplome"
* qualification.code.coding[degreeType] ^short = "Type de diplôme."
// AutreDiplomeObtenu
* qualification.code.coding[degreeR36] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR36] ^binding.description = "Liste des diplômes"
* qualification.code.coding[degreeR36] ^comment = "Synonyme MOS : tautreDiplomeObtenu"
* qualification.code.coding[degreeR36] ^short = "Autre diplôme obtenu."
// qualification
* qualification.code.coding[degreeR47] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR47] ^binding.description = "Liste des qualifications"
* qualification.code.coding[degreeR47] ^comment = "Synonyme MOS : qualification"
* qualification.code.coding[degreeR47] ^short = "Qualification attribuée par une commission."
// DiplomeEtat
* qualification.code.coding[degreeR48] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR48] ^binding.description = "Liste des diplômes et qualifications"
* qualification.code.coding[degreeR48] ^comment = "Synonyme MOS : DiplomeEtat"
* qualification.code.coding[degreeR48] ^short = "Diplôme d'Etat français."
// DiplomeEtudeSpecialisee
* qualification.code.coding[degreeR49] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR49] ^binding.description = "Liste des DES"
* qualification.code.coding[degreeR49] ^comment = "Synonyme MOS : DiplomeEtudeSpecialisee"
* qualification.code.coding[degreeR49] ^short = "Diplôme d'études spécialisées (DES)."
// DESC1
* qualification.code.coding[degreeR50] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR50] ^binding.description = "Liste des DES I"
* qualification.code.coding[degreeR50] ^comment = "Synonyme MOS : DESC1"
* qualification.code.coding[degreeR50] ^short = "Diplôme d'études spécialisées complémentaires non qualifiants (DESC I)."
// DESC2
* qualification.code.coding[degreeR51] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR51] ^binding.description = "Liste des DESC II"
* qualification.code.coding[degreeR51] ^comment = "Synonyme MOS : DESC2"
* qualification.code.coding[degreeR51] ^short = "Diplôme d'études spécialisées complémentaires qualifiants (DESC II)."
// capaciteDiplome
* qualification.code.coding[degreeR52] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR52] ^binding.description = "Liste des diplômes"
* qualification.code.coding[degreeR52] ^comment = "Synonyme MOS : capaciteDiplome"
* qualification.code.coding[degreeR52] ^short = "Diplôme de capacité de médecine."
// DiplomeEEE
* qualification.code.coding[degreeR53] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR53] ^binding.description = "Liste des diplômes EEE"
* qualification.code.coding[degreeR53] ^comment = "Synonyme MOS : DiplomeEEE"
* qualification.code.coding[degreeR53] ^short = "Synonyme MOS : DiplomeEEE"
// DiplomeUniversitaire
* qualification.code.coding[degreeR54] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR54] ^binding.description = "Liste des diplômes"
* qualification.code.coding[degreeR54] ^comment = "Synonyme MOS : DiplomeUniversitaire"
* qualification.code.coding[degreeR54] ^short = "Diplôme universitaire ou interuniversitaire."
// certificatEtudeSpeciale
* qualification.code.coding[degreeR55] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR55] ^binding.description = "Liste des CES"
* qualification.code.coding[degreeR55] ^comment = "Synonyme MOS : certificatEtudeSpeciale"
* qualification.code.coding[degreeR55] ^short = "Certificat d'études spéciales (CES)."
// attestation
* qualification.code.coding[degreeR56] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR56] ^binding.description = "Liste des attestations"
* qualification.code.coding[degreeR56] ^comment = "Synonyme MOS : attestation"
* qualification.code.coding[degreeR56] ^short = "Attestation de formation."
// DiplomeEES
* qualification.code.coding[degreeR57] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR57] ^binding.description = "Liste des diplômes EES"
* qualification.code.coding[degreeR57] ^comment = "Synonyme MOS : DiplomeEES"
* qualification.code.coding[degreeR57] ^short = "Diplôme européen d'études spécialisées."
// DiplomeDivers
* qualification.code.coding[degreeR58] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR58] ^binding.description = "Liste des diplômes"
* qualification.code.coding[degreeR58] ^comment = "Synonyme MOS : DiplomeDivers"
* qualification.code.coding[degreeR58] ^short = "Autre type de diplôme obtenu"
// diplomeDeuxiemeCycleNonQualifiant
* qualification.code.coding[degreeR226] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR226] ^binding.description = "Liste des diplômes"
* qualification.code.coding[degreeR226] ^comment = "Synonyme MOS : diplomeDeuxiemeCycleNonQualifiant"
* qualification.code.coding[degreeR226] ^short = "Diplôme de deuxième cycle non qualifiant."
* qualification.issuer.identifier ^short = "Code du lieu d'obtention du diplôme"
* qualification.issuer.identifier.system = "urn:oid:1.2.250.1.213.1.6.4.1" (exactly)
// AutorisationExercice
* extension[as-ext-practitioner-authorization] ^isModifier = false
* extension[as-ext-practitioner-authorization] ^binding.description = "Liste des autorisations"
* extension[as-ext-practitioner-authorization] ^short = "L'autorisation d'exercice pour les personnes diposant de diplômes étrangers non reconnus en France."
* extension[as-ext-practitioner-authorization] ^comment = "Synonyme MOS : autorisationExercice"
// langueParlee
* communication MS
* communication ^comment = "Synonyme MOS : langueParlee"
* communication ^short = "Langue parlée."
* communication only AsCodeableConceptTimedProfile
* communication from $JDV_J82-Langue-RASS (required)
