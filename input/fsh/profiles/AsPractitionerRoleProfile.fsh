Profile: 		ASPractitionerRoleProfile
Parent: 		PractitionerRole
Id: 			as-practitionerrole
Title:			"AS PractitionerRole Profile"
Description: 	"Profil créé à partir de la ressource PractitionerRole dans le contexte de l'Annuaire Santé pour décrire l'exercice professionel et la situation d'exercice | contient les informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel, le cadre de son exercice (civil, militaire, etc.) ainsi que les caractéristiques de l'exercice d’un professionnel pendant une période déterminée et dans une structure déterminée."

* meta.lastUpdated 1..1

* contained only AsLocationProfile
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    AsPractitionerRoleNameExtension named practitionerRole-name 0..1 MS and
    $practitionerRole-registration named PractitionerRoleRegistration 0..* and
    $practitionerRole-educationLevel named practitionerRole-educationLevel 0..1 MS and
    $practitionerRole-smartCard named practitionerRole-smartCard 0..1 MS and
    AsMailboxMSSExtension named as-mailbox-mss 0..*

* extension[practitionerRole-name] ^isModifier = false
* extension[practitionerRole-name] ^short = "civiliteExercie + nomExercice + prenomExercice (ExerciceProfessionnel)"

* extension[PractitionerRoleRegistration] ^isModifier = false
* extension[practitionerRole-name] ^short = "AutoriteEnregistrement""

* extension[practitionerRole-educationLevel] ^isModifier = false
* extension[practitionerRole-educationLevel] ^short = "SavoirFaire"

* extension[practitionerRole-smartCard] ^isModifier = false
* extension[practitionerRole-smartCard] ^short = "CarteProfessionnel"

* extension[as-mailbox-mss] ^definition = "BALs MSS de type PER rattachés à l'identifiant du professionnel de santé  ainsi qu'au lieu de sa situation d'exercice"
* extension[as-mailbox-mss] ^isModifier = false
* extension[as-mailbox-mss] ^short = ""BoiteLettreMSS"

* identifier MS
* period MS
* practitioner 1..
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
	
* code.coding[CategorieProfession] from $JDV-J89-CategorieProfessionnelle-RASS (required)
* code.coding[CategorieProfession] ^binding.description = "Ensemble des catégories professionnelles de l'Annuaire Santé (RASS)"
* code.coding[CategorieProfession].system ^short = "categorieProfessionnelle"


* code.coding[professionG15] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionG15] ^sliceName = "professionG15"
* code.coding[professionG15] ^binding.description = "Ensemble des professions de santé  définies par le code de la santé publique"
* code.coding[professionG15].system ^short = "professionSante"

* code.coding[professionR94] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR94] ^sliceName = "professionR94"
* code.coding[professionR94] ^binding.description = "Ensemble des professions du social"
* code.coding[professionR94].system ^short = "professionSocial"

* code.coding[professionR95] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR95] ^sliceName = "professionR95"
* code.coding[professionR95] ^binding.description = "Ensemble des professions à usage de titre professionnel"
* code.coding[professionR95].system ^short = "usagerTitre"

* code.coding[professionR291] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR291] ^sliceName = "professionR291"
* code.coding[professionR291] ^binding.description = "Liste de professionnels non membres d'une profession réglementée"
* code.coding[professionR291].system ^short = "autreProfession"

* code.coding[genreActivite] from $JDV-J94-GenreActivite-RASS (required)
* code.coding[genreActivite] ^binding.description = "Le genre d'activité identifie les activités qui nécessitent l’application de règles de gestion spécifiques"
* code.coding[genreActivite].system ^short = "genreActivite"

* code.coding[modeExercice] from $JDV-J95-ModeExercice-RASS (required)
* code.coding[modeExercice] ^binding.description = "Le mode d'exercice décrit selon quelle modalité une activité est exercée au regard de l'organisation de la rétribution du professionnel"
* code.coding[modeExercice].system ^short = "modeExercice"

* code.coding[typeActiviteLiberale] from $JDV-J96-TypeActiviteLiberale-RASS (required)
* code.coding[typeActiviteLiberale] ^binding.description = "Type d’activité libérale, par exemple: Cabinet; Secteur privé à l'hôpital"
* code.coding[typeActiviteLiberale].system ^short = "typeActiviteLiberale"

* code.coding[statutProfessionnelSSA] from $JDV-J97-StatutProfessionnelSSA-RASS (required)
* code.coding[statutProfessionnelSSA] ^binding.description = "Statut du professionnel du Service de santé des armées"
* code.coding[statutProfessionnelSSA].system ^short = "statutProfessionnelSSA"

* code.coding[statutHospitalier] from $JDV-J98-StatutHospitalier-RASS (required)
* code.coding[statutHospitalier] ^binding.description = "Statut hospitalier dans le cas d’une activité exercée en établissement public de santé"
* code.coding[statutHospitalier].system ^short = "statutHospitalier"

* code.coding[fonctionR21] from $JDV-J108-EnsembleFonction-RASS (required)
* code.coding[fonctionR21] ^binding.description = "Ensemble des fonctions et rôles du professionel au sein de la stucture d'exercice"
* code.coding[fonctionR21].system ^short = "fonction"

* code.coding[fonctionR96] from $JDV-J108-EnsembleFonction-RASS (required)
* code.coding[fonctionR96] ^binding.description = "Ensemble des fonctions et rôles du professionel au sein de la stucture d'exercice"
* code.coding[fonctionR96].system ^short = "autreFonctionSanitaire"

* code.coding[fonctionR85] from $JDV-J108-EnsembleFonction-RASS (required)
* code.coding[fonctionR85] ^binding.description = "Liste des rôles dans la prise en charge des patients ou des usagers"
* code.coding[fonctionR85].system ^short = "rolePriseCharge"

* code.coding[metierPharmacienR06] from $JDV-J73-MetierPharmacien-RASS (required)
* code.coding[metierPharmacienR06] ^binding.description = "Liste des sections du tableau de l'Ordre des Pharmaciens"
* code.coding[metierPharmacienR06].system ^short = "sectionTableauCNOP"

* code.coding[metierPharmacienG05] from $JDV-J73-MetierPharmacien-RASS (required)
* code.coding[metierPharmacienG05] ^binding.description = "Liste des sous-sections du tableau de l'Ordre des Pharmaciens"
* code.coding[metierPharmacienG05].system ^short = "sousSectionTableauCNOP"

* specialty only $codeableConcept-timed
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.description = "Slicing pour séparer savoir-faire et attribution particulière"
* specialty ^slicing.rules = #open

* specialty contains
    attributionParticuliere 0..* and
    savoirFaireR38 0..* and
    savoirFaireR39 0..* and
    savoirFaireR40 0..* and
    savoirFaireR42 0..* and
    savoirFaireR43 0..* and
    savoirFaireR44 0..* and
    savoirFaireR45 0..* and
    savoirFaireR97 0..* and
    savoirFaireG13 0..* and
	typeSavoirFaire 0..*

* specialty[savoirFaireR38] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR38] ^sliceName = "savoirFaireR38"
* specialty[savoirFaireR38] ^binding.description = "Liste des spécialités ordinales"
* specialty[savoirFaireR38].coding.system ^short = "specialiteOrdinal"

* specialty[savoirFaireR39] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR39] ^sliceName = "savoirFaireR39"
* specialty[savoirFaireR39] ^binding.description = "Liste des compétences acquises par le professionnel"
* specialty[savoirFaireR39].coding.system ^short = "competence"

* specialty[savoirFaireR40] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR40] ^sliceName = "savoirFaireR40"
* specialty[savoirFaireR40] ^binding.description = "Liste des compétences exclusives"
* specialty[savoirFaireR40].coding.system ^short = "competenceExclusive"

* specialty[savoirFaireR42] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR42] ^sliceName = "savoirFaireR42"
* specialty[savoirFaireR42] ^binding.description = "Liste des diplômes d'études spécialisées complémentaires"
* specialty[savoirFaireR42].coding.system ^short = "DESCnonQualifian"

* specialty[savoirFaireR43] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR43] ^sliceName = "savoirFaireR43"
* specialty[savoirFaireR43] ^binding.description = "Liste des capacités (savoir-faire) de médecine"
* specialty[savoirFaireR43].coding.system ^short = "capaciteSavoirFaire"

* specialty[savoirFaireR44] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR44] ^sliceName = "savoirFaireR44"
* specialty[savoirFaireR44] ^binding.description = "Liste des qualifications de praticien adjoint contractuel"
* specialty[savoirFaireR44].coding.system ^short = "qualificationPAC"

* specialty[savoirFaireR45] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR45] ^sliceName = "savoirFaireR45"
* specialty[savoirFaireR45] ^binding.description = "Liste des fonctions qualifiées"
* specialty[savoirFaireR45].coding.system ^short = "fonctionQualifiee"

* specialty[savoirFaireR97] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR97] ^sliceName = "savoirFaireR97"
* specialty[savoirFaireR97] ^binding.description = "Liste des droitd d'exercice complémentaires"
* specialty[savoirFaireR97].coding.system ^short = "droitExerciceComplementaire"

* specialty[savoirFaireG13] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireG13] ^sliceName = "savoirFaireG13"
* specialty[savoirFaireG13] ^binding.description = "Liste des orientations particulières"
* specialty[savoirFaireG13].coding.system ^short = "orientationParticuliere"

* specialty[typeSavoirFaire] from $JDV-J91-TypeSavoirFaire-RASS (required)
* specialty[typeSavoirFaire] ^sliceName = "typeSavoirFaire"
* specialty[typeSavoirFaire] ^binding.description = "Le type de savoir-faire (qualifications/autres attributions)"
* specialty[typeSavoirFaire].coding.system ^short = "typeSavoirFaire"

* specialty[attributionParticuliere] from $JDV-J90-AttributionParticuliere-RASS (required)
* specialty[attributionParticuliere] ^sliceName = "attributionParticuliere"
* specialty[attributionParticuliere] ^binding.description = "Activités ponctuelles du professionnel de type expertise"
* specialty[attributionParticuliere].coding.system ^short = "attributionParticuliere"


* location MS
* location only Reference(AsLocationProfile)
* location ^type.aggregation = #contained
* healthcareService MS
* telecom MS
* telecom only $FrContactPoint
* availableTime MS
* notAvailable MS
* availabilityExceptions MS
* endpoint MS
