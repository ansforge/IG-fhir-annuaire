Profile: 		AsPractitionerProfile
Parent: 		fr-core-practitioner
Id: 			as-practitioner
Title:			"AS Practitioner Profile"
Description: 	"Profil générique créé à partir de FrPractitioner dans le contexte de l'Annuaire Santé pour décrire les données liées à l'exercice professionnel d'un professionnel (professions à ordre, professions sans ordre, professionnels à rôle)."

/* extensions */
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AsRegistrationExtension named as-ext-registration 0..* and // inscription ordre
    AsPractitionerAuthorizationExtension named as-ext-frpractitioner-authorization 0..* and
    AsSmartCardExtension named as-ext-smartcard 0..* and // carte cpx
    AsDigitalCertificateExtension named as-ext-digital-certificate 0..* // certificat


/* Practitioner.identifier */
// Defined in FrCore

* identifier.type ^short = "Type d’identifiant national de la personne physique (typeIdNat_PP),\r\nLes codes RPPS et IDNPS proviennent du system  https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203 ; Les codes 1, 3, 4, 5, 6 proviennent du system : https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"

* identifier[idNatPs].type 1..1 // Contrainte ajoutée dans FrCore, ligne à supprimer à la prochaine release de FrCore 

* identifier[rpps].type 1..1 // Contrainte ajoutée dans FrCore, ligne à supprimer à la prochaine release de FrCore 

* identifier[adeli] 0..0 // Adeli décommissionné, ligne à supprimer au prochain héritage FrCore 


// Practitioner.active
* active ^short = "Cette ressource est-elle active ?\ntrue  par défaut; false pour indiquer que la ressource a été supprimée"

/* Practitioner.name */
* name ^short = "Nom sous lequel exerce le professionnel."

// nomExercice
* name.family ^short = "Nom sous lequel exerce le professionnel (nomExercice)."


* active MS
* name MS
* name.family MS
* name.given MS
* name.suffix MS
* telecom MS
* address MS
* communication MS
* qualification[degree].code.coding[degree] MS
* qualification[degree].code.coding[degreeType] MS

* name.given ^short = "Prénom sous lequel exerce le professionnel (prenom)."

// civiliteExercice
* name.suffix ^short = "Civilité d’exercice du professionnel (civilite)."

// telecommunication 
* telecom ^short = "[Donnée restreinte] : telecommunication. Différentes instances pour les téléphones, la télécopie et l’adresse mail."
* telecom only $FrContactPoint
* telecom.system ^short = "« phone » pour Téléphone et Téléphone 2 ; « fax » pour Télécopie ; « email » pour adresse e-mail"
* telecom.use ^comment = "« old » si les coordonnées de correspondance ont une date de fin"

// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator[0].type = #value
* telecom ^slicing.discriminator[0].path = "system" 
* telecom ^slicing.discriminator[1].type = #exists
* telecom ^slicing.discriminator[1].path = "extension('https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type')"

* telecom contains mailbox-mss 0..*
* telecom[mailbox-mss] only as-mailbox-mss


// adresseCorrespondance
* address ^short = "[Donnée restreinte] : Adresse(s) de correspondance permettant de contacter le professionnel (adresseCorrespondance)."
* address only AsAddressExtendedProfile

// langueParlee
* communication ^short = "Langue parlée (langueParlee)."
* communication only AsCodeableConceptTimedProfile
* communication from $JDV_J82-Langue-RASS (required)



// Qualifications


// ###########
// # DIPLOME #
// ###########

// Slice typeDiplome

// periodValidite
* qualification[degree].period ^short = "[Donnée restreinte] : Période durant laquelle le niveau de formation est actif."
* qualification[degree].period.start ^short = "dateDebut : Date d’obtention du diplôme (dateDiplome)\ncette date est renseignée par l’ordre à la clôture de l’exercice professionnel."
* qualification[degree].period.end ^short = "dateFin : Date à laquelle le niveau de formation n’est plus actif (non visible hormis dans les données historisées)."

// lieuFormation
* qualification[degree].issuer ^short = "[Donnée restreinte] : Lieu de formation pour l'obtention du diplôme (lieuFormation)."
* qualification[degree].issuer only Reference(AsOrganizationProfile or fr-core-organization)

//
* qualification[degree].extension contains AsEducationLevelExtension named as-ext-education-level 0..* MS

// ##############
// # PROFESSION #
// ##############


// Slice 1 : Catégorie professionnelle
* qualification[exercicePro].code.coding[categorieProfession] MS

// Slice 2 : profession de sante
* qualification[exercicePro].code.coding[profession] MS

* qualification[exercicePro].period MS
* qualification[exercicePro].period.start ^short = "[Donnée restreinte] : Date à partir de laquelle le professionnel exerce cette profession (dateEffetExercice)."
* qualification[exercicePro].period.end ^short = "[Donnée restreinte] : Date à partir de laquelle le professionnel n’exerce plus cette profession (dateFinEffetExercice)."

// ################
// # SAVOIR FAIRE #
// ################


// Slice : typeSavoirFaire
* qualification[savoirFaire].code.coding[typeSavoirFaire] MS

// Slice : savoirFaire
* qualification[savoirFaire].code.coding[savoirFaire] MS


Mapping:  AsPractitionerProfileToMOSSavoirFaire
Source:   AsPractitionerProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-practitioner-role-to-mos-savoir-faire
Title:    "AsPractitionerProfile to MOS - SavoirFaire"
* -> "SavoirFaire"
* qualification[savoirFaire].code.coding[typeSavoirFaire] -> "SavoirFaire.typeSavoirFaire"
* qualification[savoirFaire].code -> "specialite"
* qualification[savoirFaire].period.start -> "SavoirFaire.dateReconnaissance"
* qualification[savoirFaire].period.end -> "SavoirFaire.dateAbandon"

Mapping:  AsPractitionerProfileToMOSExerciceProfessionnel
Source:   AsPractitionerProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-practitioner-role-to-mos-exercice-professionnel
Title:    "AsPractitionerProfile to MOS - ExerciceProfessionnel"
* -> "ExerciceProfessionnel"
* name.suffix -> "ExerciceProfessionnel.civiliteExercice"
* name.family -> "ExerciceProfessionnel.nomExercice"
* name.given -> "ExerciceProfessionnel.prenomExercice"

* qualification[exercicePro].code.coding[profession] -> "ExerciceProfessionnel.profession"
* qualification[exercicePro].code.coding[categorieProfession] -> "ExerciceProfessionnel.categorieProfession"
* qualification[exercicePro].period.start -> "ExerciceProfessionnel.dateEffetExercice"
* qualification[exercicePro].period.end -> "ExerciceProfessionnel.dateFinEffetExercice"

* telecom[mailbox-mss] -> "ExerciceProfessionnel.boiteLettresMSS"

Mapping:  AsPractitionerProfileToMOSInscriptionOrdre
Source:   AsPractitionerProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-practitioner-role-to-mos-inscription-ordre
Title:    "AsPractitionerProfile to MOS - InscriptionOrdre"
* -> "InscriptionOrdre"
* extension[as-ext-registration].extension[registeringOrganization] -> "InscriptionOrdre.ordre"
* extension[as-ext-registration].extension[period].valuePeriod.start -> "InscriptionOrdre.dateDebutInscription"
* extension[as-ext-registration].extension[period].valuePeriod.end -> "InscriptionOrdre.dateRadiation"
* extension[as-ext-registration].extension[status] -> "InscriptionOrdre.statutInscription"
* extension[as-ext-registration].extension[hostingDepartment] -> "InscriptionOrdre.conseilDepartemental"

Mapping:  AsPractitionerProfileToMOSDiplome
Source:   AsPractitionerProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-practitioner-role-to-mos-diplome
Title:    "AsPractitionerProfile to MOS - Diplome"
* -> "Diplome"
* qualification.code -> "Diplome.codeDiplome"
* qualification[degree] -> "Diplome.typeDiplome"
* qualification[degree].issuer -> "Diplome.lieuFormation"
* qualification[degree].period.start -> "Diplome.dateDebut"
* qualification[degree].period.end -> "Diplome.dateFin"
* qualification[degree].extension[as-ext-education-level].extension[academicDegree] -> "Diplome.natureCycleFormation"
* qualification[degree].extension[as-ext-education-level].extension[achievedLevel] -> "Diplome.anneeUniversitaire"
* qualification[degree].extension[as-ext-education-level].extension[academicYear] -> "Diplome.niveauFormationAcquis"

Mapping:  AsPractitionerProfileToMOSProfessionnel
Source:   AsPractitionerProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-practitioner-role-to-mos-professionnel
Title:    "AsPractitionerProfile to MOS - Professionnel"
* -> "Professionnel"
* identifier[idNatPs] -> "Professionnel.idNat_PS"
* identifier[rpps] -> "Professionnel.idPP"
* address -> "Professionnel.adresseCorrespondance"
* telecom -> "Professionnel.telecommunication"

Mapping:  AsPractitionerProfileToMOSAutorisationExercice
Source:   AsPractitionerProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-practitioner-role-to-mos-autorisation-exercice
Title:    "AsPractitionerProfile to MOS - AutorisationExercice"
* -> "AutorisationExercice"
* extension[as-ext-frpractitioner-authorization].extension[type] -> "AutorisationExercice.typeAutorisation"
* extension[as-ext-frpractitioner-authorization].extension[field] -> "AutorisationExercice.disciplineAutorisee"
* extension[as-ext-frpractitioner-authorization].extension[period].valuePeriod.start -> "AutorisationExercice.dateDebutAutorisation"
* extension[as-ext-frpractitioner-authorization].extension[period].valuePeriod.end -> "AutorisationExercice.dateFinAutorisation"
* extension[as-ext-frpractitioner-authorization].extension[profession] -> "AutorisationExercice.profession"

Mapping:  AsPractitionerProfileToMOSCarteProfessionnel
Source:   AsPractitionerProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-practitioner-role-to-mos-carte-professionnel
Title:    "AsPractitionerProfile to MOS - CarteProfessionnel"
* -> "CarteProfessionnel"
* extension[as-ext-smartcard].extension[type] -> "CarteProfessionnel.typeCarte"
* extension[as-ext-smartcard].extension[number] -> "CarteProfessionnel.numeroCarte"
* extension[as-ext-smartcard].extension[period].valuePeriod.start -> "CarteProfessionnel.dateDebutValidite"
* extension[as-ext-smartcard].extension[period].valuePeriod.end -> "CarteProfessionnel.dateFinValidite"
* extension[as-ext-smartcard].extension[oppositionDate] -> "CarteProfessionnel.dateOpposition"
