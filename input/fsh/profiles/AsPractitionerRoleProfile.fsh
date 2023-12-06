Profile: 		AsPractitionerRoleProfile
Parent: 		FrPractitionerRoleExercice
Id: 			as-practitionerrole
Title:			"AS PractitionerRole Profile"
Description: 	"Profil créé à partir de FrPractitionerRoleExercice dans le contexte de l'Annuaire Santé pour décrire l'exercice professionel et la situation d'exercice | contient les informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel, le cadre de son exercice (civil, militaire, etc.) ainsi que les caractéristiques de l'exercice d’un professionnel pendant une période déterminée et dans une structure déterminée."

// Data trace
* meta.extension ^slicing.discriminator.type = #value
* meta.extension ^slicing.discriminator.path = "url"
* meta.extension ^slicing.rules = #open
* meta.extension contains as-ext-data-trace named as-ext-data-trace 0..1 MS


/* profils references */
* practitioner MS 
* organization MS
* location MS
* healthcareService MS

/* extensions */
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AsPractitionerRoleNameExtension named as-ext-practitionerrole-name 0..* MS and  // nom d'exercice + prénom d'exercice
    AsPractitionerRoleRegistrationExtension named as-ext-practitionerrole-registration 0..* MS and // inscription ordre
    AsPractitionerRoleEducationLevelExtension named as-ext-practitionerrole-education-level 0..* MS and // under discussion
    AsPractitionerRoleSmartCardExtension named as-ext-practitionerrole-smartcard 0..* MS and // carte cpx
    AsDigitalCertificateExtension named as-ext-digital-certificate 0..* MS and //  certificat
	AsPractitionerRoleEndCauseExtension named as-ext-practitionerrole-end-cause 0..1 MS and // motif de fin d’activité, renseigné si period.end not null
	AsPractitionerRoleContracted named as-ext-practitionerrole-contracted 0..1 MS and // secteur de conventionnement
	AsPractitionerRoleHasCas named as-ext-practitionerrole-hascas 0..1 MS and // Option pratique tarifaire maîtrisée
	AsPractitionerRoleVitaleAccepted named as-ext-practitionerrole-vitale-accepted 0..1 MS // Indicateur carte Vitale acceptée
	
/* PractitionerRole.identifier */
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system pattern"

// Contains rule
* identifier contains idSituationExercice 0..* and numeroAm 0..*

// PractitionerRole.identifier.system
* identifier[idSituationExercice] ^short = "Identifiant d'activité propre au RPPS"
* identifier[idSituationExercice].system = "http://rpps.fr"

* identifier[numeroAm] ^short = "[Donnée restreinte] : Identifiant d’activité propre à l’Assurance Maladie. format: 9 digits. synonyme: numeroAM"
* identifier[numeroAm].system = "http://ameli.fr"

// PractitionerRole.active
* active MS
* active ^short = "La situation d'exercice est-elle active? (active | inactive)\r\ntrue par défaut; false pour les situations d’exercices supprimées"

/* PractitionerRole.period */ 
* period MS
* period ^short = "Période d'activité de la situation d'exercice."

// dateDebutActivite
* period.start ^short = "[Donnée restreinte] : Date de début de l’activité correspondant à la date d’installation en cabinet ou à la date d’embauche du salarié (dateDebutActivite)."

// dateFinActivite
* period.end ^short = "[Donnée restreinte] : Date de fin de l’activité (dateFinActivite)."

// PractitionerRole.practitioner
* practitioner ^short = "Référence permettant de lier l’exercice professionnel et la situation d'exercice à un professionnel (Practitioner)."

// PractitionerRole.organization
* organization ^short = "Référence vers l’EG ou EJ de rattachement de la situation d’exercice (Organization)"

// PractitionerRole.location
* location ^short = "Adresse(s) géopostale(s) rattachée(s) à la situation d'exercice (adresseSE)."

// Slicing au niveau de PractitionerRole.code.coding
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
	CategorieProfession 0..1 MS and
	professionG15 0..1 MS  and
	professionR94 0..1 MS  and
	professionR95 0..1 MS  and
	professionR291 0..1 MS and
    genreActivite 0..1 MS  and
    modeExercice 0..1 MS  and
    typeActiviteLiberale 0..1 MS and
    statutProfessionnelSSA 0..1 MS and
    statutHospitalier 0..1 MS and
    fonctionR21 0..1 MS and
    fonctionR96 0..1 MS and
    fonctionR85 0..1 MS and
    metierPharmacienR06 0..1 MS and
    metierPharmacienG05 0..1 MS

// Slice 1 : categorie profession
* code.coding[CategorieProfession] ^short = "Catégorie professionnelle indiqant si le professionnel exerce sa profession en tant que Militaire, Civil, Fonctionnaire ou Etudiant (Synonyme : categorieProfessionnelle)."
* code.coding[CategorieProfession] from $JDV-J89-CategorieProfessionnelle-RASS (required)
* code.coding[CategorieProfession] ^binding.description = "Liste des catégories professionnelles"

// Slice 2 : profession de sante
* code.coding[professionG15] ^short = "Profession exercée ou future profession de l'étudiant (Synonyme: professionSante)."
* code.coding[professionG15] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionG15] ^binding.description = "Liste des professions de santé  définies par le code de la santé publique"

// Slice 3 : profession sociale
* code.coding[professionR94] ^short = "Profession du social (Synonyme: professionSocial)."
* code.coding[professionR94] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR94] ^binding.description = "Liste des professions du social"

// Slice 4 : usage de titre professionnel
* code.coding[professionR95] ^short = "Profession à usage de titre professionnel (Synonyme: usagerTitre)."
* code.coding[professionR95] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR95] ^binding.description = "Liste des professions à usage de titre professionnel"

// Slice 5 : autre profession
* code.coding[professionR291] ^short = "professionnel non membre d'une profession réglementée (Synonyme: autreProfession)."
* code.coding[professionR291] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR291] ^binding.description = "Liste de professionnels non membres d'une profession réglementée"

// Slice 6 : genre activite
* code.coding[genreActivite] ^short = "Le genre identifiant une activité qui nécessite l’application de règles de gestion spécifiques (Synonyme: genreActivite)."
* code.coding[genreActivite] from $JDV-J94-GenreActivite-RASS (required)
* code.coding[genreActivite] ^binding.description = "Liste des genres d'activité"

// Slice 7 : mode exercice  
* code.coding[modeExercice] ^short = "Le mode d'exercice décrit selon quelle modalité une activité est exercée au regard de l'organisation de la rétribution du professionnel (Synonyme: modeExercice)."
* code.coding[modeExercice] from $JDV-J95-ModeExercice-RASS (required)
* code.coding[modeExercice] ^binding.description = "Liste des modes d'exercice"

// Slice 8 : type activite liberale
* code.coding[typeActiviteLiberale] from $JDV-J96-TypeActiviteLiberale-RASS (required)
* code.coding[typeActiviteLiberale] ^binding.description = "Liste des types d’activité"
* code.coding[typeActiviteLiberale] ^short = "Type d’activité libérale, par exemple: Cabinet; Secteur privé à l'hôpital (Synonyme: typeActiviteLiberale)."

// Slice 9 : statut des PS du SSA  
* code.coding[statutProfessionnelSSA] ^short = "Statut du professionnel du Service de santé des armées (Synonyme: statutProfessionnelSSA)."
* code.coding[statutProfessionnelSSA] from $JDV-J97-StatutProfessionnelSSA-RASS (required)
* code.coding[statutProfessionnelSSA] ^binding.description = "Liste des statuts SSA"

// Slice 10 : statut hospitalier 
* code.coding[statutHospitalier] ^short = "Statut hospitalier dans le cas d’une activité exercée en établissement public de santé (Synonyme: statutHospitalier)."
* code.coding[statutHospitalier] from $JDV-J98-StatutHospitalier-RASS (required)
* code.coding[statutHospitalier] ^binding.description = "Liste des statuts hospitaliers"

// Slice 11 : fonction
* code.coding[fonctionR21] ^short = "Fonction du professionnel au sein de la structure d’exercice (Synonyme: role)."
* code.coding[fonctionR21] from $JDV-J108-EnsembleFonction-RASS (required)
* code.coding[fonctionR21] ^binding.description = "Liste des fonctions et rôles"

// Slice 12 : autreFonctionSanitaire
* code.coding[fonctionR96] ^short = "Autre fonction du domaine sanitaire exercée par le professionnel au sein de la structure d’exercice (Synonyme: role)."
* code.coding[fonctionR96] from $JDV-J108-EnsembleFonction-RASS (required)
* code.coding[fonctionR96] ^binding.description = "Liste des fonctions et rôles"

// Slice 13 : role prise en charge
* code.coding[fonctionR85] ^short = "Rôle du professionnel dans la prise en charge des patients ou des usagers (Synonyme: role)."
* code.coding[fonctionR85] from $JDV-J108-EnsembleFonction-RASS (required)
* code.coding[fonctionR85] ^binding.description = "Liste des rôles"

// Slice 14 : section tableau pharmaciens 
* code.coding[metierPharmacienR06] ^short = "Section du tableau de l’Ordre des pharmaciens (CNOP) (Synonyme: sectionOrdrePharmacien)." 
* code.coding[metierPharmacienR06] from $JDV-J73-MetierPharmacien-RASS (required)
* code.coding[metierPharmacienR06] ^binding.description = "Liste des sections du tableau CNOP"

// Slice 15 : sous section tableau pharmaciens  
* code.coding[metierPharmacienG05] ^short = "Sous-section ou à défaut section du tableau de l’Ordre des pharmaciens (CNOP). (Synonyme: sousSectionOrdrePharmacien)"
* code.coding[metierPharmacienG05] from $JDV-J73-MetierPharmacien-RASS (required)
* code.coding[metierPharmacienG05] ^binding.description = "Liste des sous-sections du tableau CNOP"

/* Slicing pour separer savoir-faire et attribution particuliere */
* specialty only as-codeableconcept-timed
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.description = "Slicing pour séparer savoir-faire et attribution particulière"
* specialty ^slicing.rules = #open
* specialty contains
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
    typeSavoirFaire 0..* MS

/* Slice A : attribution particuliere */
* specialty[attributionParticuliere] ^short = "Activité ponctuelle du professionnel de type expertise (Synonyme: attributionParticuliere)."
* specialty[attributionParticuliere] from $JDV-J90-AttributionParticuliere-RASS (required)

/* Slice B : savoir-faire */

// Slice B1 : specialiteOrdinal
* specialty[savoirFaireR38] ^short = "Spécialité ordinale  reconnue par une autorité d'enregistrement (Ordre ou SSA) (Synonyme: specialite)."
* specialty[savoirFaireR38] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR38] ^binding.description = "Liste des spécialités ordinales"

// Slice B2 : competence
* specialty[savoirFaireR39] ^short = "Compétence acquise par le professionnel (Synonyme: competence)."
* specialty[savoirFaireR39] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR39] ^binding.description = "Liste des compétences"

// Slice B3 : competenceExclusive
* specialty[savoirFaireR40] ^short = "Compétence exclusive exercée par le professionnel à titre exclusif (Synonyme: competenceExclusive)."
* specialty[savoirFaireR40] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR40] ^binding.description = "Liste des compétences exclusives"

// Slice B4 : DESCnonQualifian
* specialty[savoirFaireR42] ^short = "Diplôme d'études spécialisées complémentaires (DESC). Synonyme: DESCnonQualifian"
* specialty[savoirFaireR42] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR42] ^binding.description = "Liste des DESC"

// Slice B5 : capaciteSavoirFaire
* specialty[savoirFaireR43] ^short = "Capacité (savoir-faire)de médecine (Synonyme: capaciteSavoirFaire)"
* specialty[savoirFaireR43] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR43] ^binding.description = "Liste des capacités"

// Slice B6 : qualificationPAC
* specialty[savoirFaireR44] ^short = "Qualification de praticien adjoint contractuel (Synonyme: qualificationPAC)."
* specialty[savoirFaireR44] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR44] ^binding.description = "Liste des qualifications"

// Slice B7 : fonctionQualifiee
* specialty[savoirFaireR45] ^short = "Fonction qualifiée (Synonyme: fonctionQualifiee)."
* specialty[savoirFaireR45] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR45] ^binding.description = "Liste des fonctions qualifiées"

// Slice B8 : droitExerciceComplementaire
* specialty[savoirFaireR97] ^short = "Droit d'exercice complémentaire (Synonyme: droitExerciceComplementaire)."
* specialty[savoirFaireR97] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR97] ^binding.description = "Liste des droits d'exercice complémentaires"

// Slice B9 : orientationParticuliere
* specialty[savoirFaireG13] ^short = "Orientation particulière (Synonyme: orientationParticuliere)."
* specialty[savoirFaireG13] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireG13] ^binding.description = "Liste des orientations particulières"

// Slice B10 : typeSavoirFaire
* specialty[typeSavoirFaire] ^short = "Le type de savoir-faire (qualifications/autres attributions). (Synonyme: typeSavoirFaire)"
* specialty[typeSavoirFaire] from $JDV-J91-TypeSavoirFaire-RASS (required)
* specialty[typeSavoirFaire] ^binding.description = "Liste des types de savoir-faire"

// PractitionerRole.location
* location MS
* location ^short = "Référence vers la location dans PractitionerRole.contained représentant les coordonnées de l'activité (idLocation)."

// telecom - PractitionerRole.telecom
* telecom MS
* telecom only $FrContactPoint

/// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator.type = #profile
* telecom ^slicing.discriminator.path = "$this.resolve()" // Le discriminator de cet élément est la conformité au profil mailbox-mss.
* telecom contains mailbox-mss 0..*
* telecom[mailbox-mss] only as-mailbox-mss
* telecom[mailbox-mss].extension contains as-ext-mailbox-mss-metadata named as-mailbox-mss-metadata 0..1 MS
* telecom[mailbox-mss] ^short = "BALs MSS de type PER rattachés à l'identifiant du professionnel de santé  ainsi qu'au lieu de sa situation d'exercice (BoiteLettreMSS)."
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata] ^short = "Les attributs 'responsible' et 'phone' ne sont pas disponibles en accès libre."


// PractitionerRole.availableTime
* availableTime MS

// PractitionerRole.notAvailable
* notAvailable MS

// PractitionerRole.availabilityExceptions
* availabilityExceptions MS

// PractitionerRole.endpoint
* endpoint MS