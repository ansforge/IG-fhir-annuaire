Profile: 		AsPractitionerProfile
Parent: 		FrPractitioner
Id: 			as-practitioner
Title:			"AS Practitioner Profile"
Description: 	"Profil créé à partir de FrPractitioner dans le contexte de l'Annuaire Santé pour décrire les données relatives à l'exercice professionel. un professionnel peut avoir plusieurs exercices."

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
    AsPractitionerAuthorizationExtension named as-ext-frpractitioner-authorization 0..* MS 

/* Practitioner.identifier */
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system pattern"
// Contains rule

* identifier contains idNatPs 0..* and rpps 0..* and adeli 0..* and localId 0..*

* identifier[idNatPs] ^short = "Identifiant national des PS.\ndépend de la source d'où provient l'identifiant.\nIl est préfixé selon l'Annexe Transverse – Source des données métier pour les professionnels et les structures : https://esante.gouv.fr/sites/default/files/media_entity/documents/ci-sis_anx_sources-donnees-professionnels-structures_v1.5_0.pdf"

// Practitioner.identifier.type
* identifier[idNatPs].type ^short = "Type d’identifiant national du professionnel (ypeIdNat_PP).\nLes codes ADELI, RPPS et IDNPS proviennent du system  http://interopsante.org/fhir/CodeSystem/fr-v2-0203 ; Les codes 1, 3, 4, 5, 6 proviennent du system : https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"
* identifier[idNatPs].type from $fr-practioner-identifier-type (extensible)

// Practitioner.identifier.system
* identifier[idNatPs].system = "urn:oid:1.2.250.1.71.4.2.1"

// Practitioner.identifier.value
* identifier[idNatPs].value ^short = "Identifiant national du professionnel (idPP).\n0 + ADELI ou 8 + RPPS\nPersonne/Identifiant PP si l’instance correspond à un identifiant RPPS ou ADELI, sinon Personne/identification nationale PP."

* identifier[rpps] ^short = "Identifiant RPPS"
* identifier[rpps].system = "http://rpps.fr"

* identifier[adeli] ^short = "Identifiant ADELI"
* identifier[adeli].system = "http://adeli.fr"

* identifier[localId] ^short = "Identifiant local : Id Cabinet ADELI/N° de registre, FINESS/N° de registre, SIREN/N° de registre, SIRET/N° de registre ou Id Cabinet RPPS/N° de registre"
* identifier[localId].system = "urn:oid:1.2.250.1.213.1.6.4.2"


// Practitioner.active
* active MS
* active ^short = "Cette ressource est-elle active?\ntrue  par défaut; false pour  indiquer que la ressource a été supprimés"

/* Practitioner.name */
* name MS
* name only $FrHumanName
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
* telecom ^short = "[DR] : telecommunication"
* telecom only $FrContactPoint
* telecom ^short = "Différentes instances pour les téléphones, la télécopie et l’adresse mail."
* telecom.system ^comment = "« phone » pour Téléphone et Téléphone 2 ; « fax » pour Télécopie ; « email » pour adresse e-mail"
* telecom.use ^comment = "« old » si les coordonnées de correspondance ont une date de fin"

// adresseCorrespondance
* address MS
* address ^short = "[Donnée restreinte] : Adresse(s) de correspondance permettant de contacter le professionnel (MOS : adresseCorrespondance)."
* address only AsAddressExtendedProfile

// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator.type = #profile
* telecom ^slicing.discriminator.path = "$this.resolve()" // Le discriminator de cet élément est la conformité au profil mailbox-mss.
* telecom contains mailbox-mss 0..*
* telecom[mailbox-mss] only as-mailbox-mss
* telecom[mailbox-mss] ^short = "Les BALs MSS de type PER rattachées seulement à l'identifiant du professionnel de Santé."
* telecom[mailbox-mss] ^comment = "Synonyme : boiteLettreMSS"

// langueParlee
* communication MS
* communication ^short = "Langue parlée (Synonyme : langueParlee)."
* communication only AsCodeableConceptTimedProfile
* communication from $JDV_J82-Langue-RASS (required)

// Slicing qualification
// ajout dates de validite de l'exercice prof

* qualification MS
* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "url"
* qualification ^slicing.rules = #open
* qualification contains
	// profession
    categorieProfession 0..1 MS and
	professionG15 0..1 MS  and
	professionR94 0..1 MS  and
	professionR95 0..1 MS  and
	professionR291 0..1 MS and
   // specialty
    attributionParticuliere 0..* MS and
    savoirFaireR38 0..* MS and
    savoirFaireR39 0..* MS and
    savoirFaireR40 0..* MS and
    savoirFaireR42 0..* MS and
    savoirFaireR43 0..* MS and
    savoirFaireR44 0..* MS and
    savoirFaireR45 0..* MS and
    savoirFaireR97 0..* MS and
    savoirFaireG13 0..* MS and
    typeSavoirFaire 0..* MS and
    //
    degreeType 0..* MS

// Slice 1 : categorie profession
* qualification[CategorieProfession] ^short = "Catégorie professionnelle indiqant si le professionnel exerce sa profession en tant que Militaire, Civil, Fonctionnaire ou Etudiant (categorieProfessionnelle)."
* qualification.code.coding[CategorieProfession] from $JDV-J89-CategorieProfessionnelle-RASS (required)

// Slice 2 : profession de sante
* qualification[professionG15] ^short = "Profession exercée ou future profession de l'étudiant (professionSante)."
* qualification.code.coding[professionG15] from $JDV-J106-EnsembleProfession-RASS (required)

// Slice 3 : profession sociale
* qualification[professionR94] ^short = "Profession du social (professionSocial)."
* qualification.code.coding[professionR94] from $JDV-J106-EnsembleProfession-RASS (required)

// Slice 4 : usage de titre professionnel
* qualification[professionR95] ^short = "Profession à usage de titre professionnel (usagerTitre)."
* qualification.code.coding[professionR95] from $JDV-J106-EnsembleProfession-RASS (required)

// Slice 5 : autre profession
* qualification[professionR291] ^short = "professionnel non membre d'une profession réglementée (autreProfession)."
* qualification.code.coding[professionR291] from $JDV-J106-EnsembleProfession-RASS (required)


/* Slicing pour separer savoir-faire et attribution particuliere */
/* Slice A : attribution particuliere */
* qualification[attributionParticuliere] ^short = "Activité ponctuelle du professionnel de type expertise (attributionParticuliere)."
* qualification[attributionParticuliere].code.coding from $JDV-J90-AttributionParticuliere-RASS (required)

/* Slice B : savoir-faire */

// Slice B1 : specialiteOrdinal
* qualification[savoirFaireR38] ^short = "Spécialité ordinale  reconnue par une autorité d'enregistrement (Ordre ou SSA).\nspecialite)."
* qualification[savoirFaireR38].code.coding from $JDV-J107-EnsembleSavoirFaire-RASS (required)

// Slice B2 : competence
* qualification[savoirFaireR39] ^short = "Compétence acquise par le professionnel (competence)."
* qualification[savoirFaireR39].code.coding from $JDV-J107-EnsembleSavoirFaire-RASS (required)

// Slice B3 : competenceExclusive
* qualification[savoirFaireR40] ^short = "Compétence exclusive exercée par le professionnel à titre exclusif (competenceExclusive)."
* qualification.code.coding[savoirFaireR40] from $JDV-J107-EnsembleSavoirFaire-RASS (required)

// Slice B4 : DESCnonQualifian
* qualification[savoirFaireR42] ^short = "Diplôme d'études spécialisées complémentaires (DESC).\nDESCnonQualifian"
* qualification.code.coding[savoirFaireR42] from $JDV-J107-EnsembleSavoirFaire-RASS (required)

// Slice B5 : capaciteSavoirFaire
* qualification[savoirFaireR43] ^short = "Capacité (savoir-faire)de médecine (capaciteSavoirFaire)"
* qualification.code.coding[savoirFaireR43] from $JDV-J107-EnsembleSavoirFaire-RASS (required)

// Slice B6 : qualificationPAC
* qualification[savoirFaireR44] ^short = "Qualification de praticien adjoint contractuel (qualificationPAC)."
* qualification.code.coding[savoirFaireR44] from $JDV-J107-EnsembleSavoirFaire-RASS (required)

// Slice B7 : fonctionQualifiee
* qualification[savoirFaireR45] ^short = "Fonction qualifiée (Synonyme: fonctionQualifiee)."
* qualification.code.coding[savoirFaireR45] from $JDV-J107-EnsembleSavoirFaire-RASS (required)

// Slice B8 : droitExerciceComplementaire
* qualification[savoirFaireR97] ^short = "Droit d'exercice complémentaire (Synonyme: droitExerciceComplementaire)."
* qualification.code.coding.code.coding[savoirFaireR97] from $JDV-J107-EnsembleSavoirFaire-RASS (required)

// Slice B9 : orientationParticuliere
* qualification[savoirFaireG13] ^short = "Orientation particulière (Synonyme: orientationParticuliere)."
* qualification.code.coding[savoirFaireG13] from $JDV-J107-EnsembleSavoirFaire-RASS (required)

// Slice B10 : typeSavoirFaire
* qualification[typeSavoirFaire] ^short = "Le type de savoir-faire (qualifications/autres attributions).\ntypeSavoirFaire"
* qualification.code.coding[typeSavoirFaire] from $JDV-J91-TypeSavoirFaire-RASS (required)

// Slice Diplome
* qualification[degreeType] ^short = "Type de diplôme, par exemple : DE, DES, CES, etc. (typeDiplome)"
* qualification.code.coding[degreeType] from $JDV-J81-TypeDiplome-RASS (required)



