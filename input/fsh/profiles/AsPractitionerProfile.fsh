Profile: 		AsPractitionerProfile
Parent: 		fr-core-practitioner
Id: 			as-practitioner
Title:			"AS Practitioner Profile"
Description: 	"Profil générique créé à partir de FrPractitioner dans le contexte de l'Annuaire Santé pour décrire les données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social."

// Data trace
* meta.extension ^slicing.discriminator.type = #value
* meta.extension ^slicing.discriminator.path = "url"
* meta.extension ^slicing.rules = #open
* meta.extension contains as-ext-data-trace named as-ext-data-trace 0..1 MS

/* extensions */
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AsRegistrationExtension named as-ext-registration 0..* MS and // inscription ordre
    AsPractitionerAuthorizationExtension named as-ext-frpractitioner-authorization 0..* MS and
    AsSmartCardExtension named as-ext-smartcard 0..* MS and // carte cpx
    AsDigitalCertificateExtension named as-ext-digital-certificate 0..* MS //  certificat

/* Practitioner.identifier */
// Defined in FrCore

* identifier.type ^short = "Type d’identifiant national de la personne physique (typeIdNat_PP),\r\nLes codes ADELI, RPPS et IDNPS proviennent du system  https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203 ; Les codes 1, 3, 4, 5, 6 proviennent du system : https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"

* identifier[idNatPs] MS

// // Identifiant interne à portée nationale. Celui-ci peut aussi être inclus dans l'idNatPs.
// * identifier[identifiantInterne] ^short = "Identifiant interne à partée nationale du practicien. L'identifiant interne est composé d'un identifiant local propre à une structure et d'un identifiant national."
// * identifier[identifiantInterne].system 1..1
// * identifier[identifiantInterne].system from as-vs-intern-id-systems (required)
// * identifier[identifiantInterne].system ^short = "Système de l'identifiant parmi les valeurs : finess.local.esante.gouv.fr | siren.local.esante.gouv.fr | siret.local.esante.gouv.fr | rpps.local.esante.gouv.fr | adeli.local.esante.gouv.fr"
// * identifier[identifiantInterne].value ^short = "Valeur de l'identifiant au format xxxxx/yyyyy où xxxxx est l'identifiant finess/siren/siret/rpps/adeli et yyyyy l'identifiant local."

// Practitioner.active
* active MS
* active ^short = "Cette ressource est-elle active?\ntrue  par défaut; false pour  indiquer que la ressource a été supprimés"

/* Practitioner.name */
* name MS
* name ^short = "Nom sous lequel exerce le professionnel."

// nomExercice
* name.family MS
* name.family ^short = "Nom sous lequel exerce le professionnel (nomExercice)."

//
* name.given MS
* name.given ^short = "Prénom sous lequel exerce le professionnel (prenom)."

// civiliteExercice
* name.suffix MS
* name.suffix ^short = "Civilité d’exercice du professionnel (civilite)."

// telecommunication 
* telecom MS
* telecom ^short = "[Donnée restreinte] : telecommunication. Différentes instances pour les téléphones, la télécopie et l’adresse mail."
* telecom only $FrContactPoint
* telecom.system ^short = "« phone » pour Téléphone et Téléphone 2 ; « fax » pour Télécopie ; « email » pour adresse e-mail"
* telecom.use ^comment = "« old » si les coordonnées de correspondance ont une date de fin"

// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator.type = #profile
* telecom ^slicing.discriminator.path = "$this.resolve()" // Le discriminator de cet élément est la conformité au profil mailbox-mss.
* telecom contains mailbox-mss 0..*
* telecom[mailbox-mss] only as-mailbox-mss

// adresseCorrespondance
* address MS
* address ^short = "[Donnée restreinte] : Adresse(s) de correspondance permettant de contacter le professionnel (adresseCorrespondance)."
* address only AsAddressExtendedProfile

// langueParlee
* communication MS
* communication ^short = "Langue parlée (langueParlee)."
* communication only AsCodeableConceptTimedProfile
* communication from $JDV_J82-Langue-RASS (required)





// ###########
// # DIPLOME #
// ###########

* qualification MS

* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code"
* qualification ^slicing.rules = #open
* qualification contains degree 0..*


* qualification[degree] MS
* qualification[degree] ^short = "Diplôme et type de diplôme, par exemple : DE, DES, CES, etc. (typeDiplome)"

* qualification[degree].code.coding ^slicing.discriminator.type = #value
* qualification[degree].code.coding ^slicing.discriminator.path = "system"
* qualification[degree].code.coding ^slicing.rules = #closed

* qualification[degree].code.coding contains degreeType 0..1 and degree 0..1 

// Slice typeDiplome
* qualification[degree].code.coding[degree] MS
* qualification[degree].code.coding[degree] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification[degree].code.coding[degreeType] MS
* qualification[degree].code.coding[degreeType] from $JDV-J81-TypeDiplome-RASS (required)

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

* qualification contains exercicePro 0..1


* qualification[exercicePro] ^short = "exercicePro : exercice professionnel décrivant la profession exercée, l'identité d'exercice d'un professionnel et le cadre de son exercice (civil, militaire, etc.)." 
* qualification[exercicePro].code.coding ^slicing.discriminator.type = #value
* qualification[exercicePro].code.coding ^slicing.discriminator.path = "system"
* qualification[exercicePro].code.coding ^slicing.rules = #closed

* qualification[exercicePro].code.coding contains 
    categorieProfession 0..1 MS and
	profession 0..1 MS

// Slice 1 : Catégorie professionnelle
* qualification[exercicePro].code.coding[categorieProfession] ^short = "Catégorie professionnelle indiquant si le professionnel exerce sa profession en tant que Militaire, Civil, Fonctionnaire ou Etudiant (categorieProfessionnelle)."
* qualification[exercicePro].code.coding[categorieProfession] from $JDV-J89-CategorieProfessionnelle-RASS (required)

// Slice 2 : profession de sante
* qualification[exercicePro].code.coding[profession] ^short = "Profession exercée : de santé (professionSante) TRE G15, du social (professionSocial) TRE R94, à usage de titre professionnel (usagerTitre) TRE R95, ou autre profession (autreProfession) TRE R291"
* qualification[exercicePro].code.coding[profession] from $JDV-J106-EnsembleProfession-RASS (required)

* qualification[exercicePro].period MS
* qualification[exercicePro].period.start ^short = "[Donnée restreinte] : Date à partir de laquelle le professionnel exerce cette profession (dateEffetExercice)."
* qualification[exercicePro].period.end ^short = "[Donnée restreinte] : Date à partir de laquelle le professionnel n’exerce plus cette profession (dateFinEffetExercice)."

// ################
// # SAVOIR FAIRE #
// ################

* qualification contains savoirFaire 0..*


* qualification[savoirFaire] ^short = "savoirFAire : Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc."

* qualification[savoirFaire].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire].code.coding ^slicing.discriminator.path = "system"
* qualification[savoirFaire].code.coding ^slicing.rules = #open

* qualification[savoirFaire].code.coding contains
    typeSavoirFaire 0..1 MS and
    savoirFaire 0..1 MS 

// Slice : typeSavoirFaire
* qualification[savoirFaire].code.coding[typeSavoirFaire] ^short = "Le type de savoir-faire (qualifications/autres attributions).\ntypeSavoirFaire"
* qualification[savoirFaire].code.coding[typeSavoirFaire] from $JDV-J91-TypeSavoirFaire-RASS (required)

// Slice : savoirFaire
* qualification[savoirFaire].code.coding[savoirFaire] ^short = "Compétence acquise par le professionnel (competence) R39 ou Compétence exclusive exercée par le professionnel à titre exclusif (competenceExclusive) R40 ou Diplôme d'études spécialisées complémentaires (DESC)DESCnonQualifian R42 ou Capacité (savoir-faire)de médecine (capaciteSavoirFaire) R43 ou Qualification de praticien adjoint contractuel (qualificationPAC) R44 ou Fonction qualifiée (Synonyme: fonctionQualifiee) R45 ou Droit d'exercice complémentaire (Synonyme: droitExerciceComplementaire) R97 ou Orientation particulière (Synonyme: orientationParticuliere) G13 ou Activité ponctuelle du professionnel de type expertise (attributionParticuliere) G13."
* qualification[savoirFaire].code.coding[savoirFaire] from $JDV-J107-EnsembleSavoirFaire-RASS (required)

// ValueSet: AsVSInterneIdSystems
// Id: as-vs-intern-id-systems
// Title: "Internal Id Systems VS"
// Description: "Systèmes des identifiants internes"
// * include codes from system https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-intern-id-systems


// CodeSystem: AsCSInterneIdSystems
// Id: as-cs-intern-id-systems
// Title: "Internal Id Systems"
// Description: "Systèmes des identifiants locaux"
// * #finess.interne.esante.gouv.fr "Système de l'identifiant interne FINESS"
// * #siren.interne.esante.gouv.fr "Système de l'identifiant interne SIREN"
// * #siret.interne.esante.gouv.fr "Système de l'identifiant interne SIRET"
// * #rpps.interne.esante.gouv.fr "Système de l'identifiant interne du cabinet RPPS"
// * #adeli.interne.esante.gouv.fr "Système de l'identifiant interne du cabinet ADELI"

Mapping:  AsPractitionerProfileToMOSSavoirFaire
Source:   AsPractitionerProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-practitioner-role-to-mos-savoir-faire
Title:    "AsPractitionerProfile to MOS - SavoirFaire"
* -> "SavoirFaire"
* qualification[savoirFaire].code -> "SavoirFaire.typeSavoirFaire"
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
* qualification.identifier -> "Diplome.numeroDiplome"
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
* identifier[idNatPs] -> "IdNat_PS"
* address -> "adresseCorrespondance"
* telecom -> "telecommunication"

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