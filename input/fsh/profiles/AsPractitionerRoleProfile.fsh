Profile: 		ASPractitionerRoleProfile
Parent: 		PractitionerRole
Id: 			as-practitionerrole
Title:			"AS PractitionerRole Profile"
Description: 	"Profil créé à partir de la ressource PractitionerRole dans le contexte de l'Annuaire Santé pour décrire l'exercice professionel et la situation d'exercice | contient les informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel, le cadre de son exercice (civil, militaire, etc.) ainsi que les caractéristiques de l'exercice d’un professionnel pendant une période déterminée et dans une structure déterminée."


* contained only AsLocationProfile
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    $practitionerRole-name named practitionerRole-name 0..* and
    $practitionerRole-registration named PractitionerRoleRegistration 0..* and
    $practitionerRole-educationLevel named practitionerRole-educationLevel 0..1 MS and
    $practitionerRole-smartCard named practitionerRole-smartCard 0..1 MS and
    AsMailboxMSSExtension named as-mailbox-mss 0..1 MS

* extension[practitionerRole-name] ^isModifier = false
* extension[practitionerRole-name].value[x].id ..0
* extension[practitionerRole-name].value[x].use ..0
* extension[practitionerRole-name].value[x].text ..0
* extension[practitionerRole-name].value[x].prefix ..0
* extension[practitionerRole-name].value[x].period ..0

* extension[PractitionerRoleRegistration] ^isModifier = false
* extension[PractitionerRoleRegistration].extension ^slicing.discriminator.type = #value
* extension[PractitionerRoleRegistration].extension ^slicing.discriminator.path = "url"
* extension[PractitionerRoleRegistration].extension ^slicing.rules = #open
* extension[PractitionerRoleRegistration].extension[registeringOrganizationDetail] 0..0
* extension[PractitionerRoleRegistration].extension[period] 0..0
* extension[PractitionerRoleRegistration].extension[status] 0..0
* extension[PractitionerRoleRegistration].extension[hostingDepartment] 0..0
* extension[PractitionerRoleRegistration].extension[isFirst] 0..0

* extension[practitionerRole-educationLevel] ^isModifier = false
* extension[practitionerRole-educationLevel].id ..0
* extension[practitionerRole-educationLevel].extension ^slicing.discriminator.type = #value
* extension[practitionerRole-educationLevel].extension ^slicing.discriminator.path = "url"
* extension[practitionerRole-educationLevel].extension ^slicing.rules = #open
* extension[practitionerRole-educationLevel].extension[academicDegree] 0..0
* extension[practitionerRole-educationLevel].extension[achievedLevel] 0..0
* extension[practitionerRole-educationLevel].extension[academicYear] 0..0
* extension[practitionerRole-educationLevel].extension[period] 0..0
* extension[practitionerRole-educationLevel].extension[issuer] 0..0

* extension[practitionerRole-smartCard] ^isModifier = false

* extension[as-mailbox-mss] ^definition = "BALs MSS de type PER rattaché à l'identifiant du professionnel de santé  ainsi qu'au lieu de sa situation d'exercice"
* extension[as-mailbox-mss] ^isModifier = false
* extension[as-mailbox-mss].id 0..0
* extension[as-mailbox-mss].extension ^slicing.discriminator.type = #value
* extension[as-mailbox-mss].extension ^slicing.discriminator.path = "url"
* extension[as-mailbox-mss].extension ^slicing.rules = #open
* extension[as-mailbox-mss].extension[responsible] 0..0
* extension[as-mailbox-mss].extension[phone] 0..0
* extension[as-mailbox-mss].extension[date] 0..0

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
	professionR291 0..1 MS  and
    genreActivite 0..1 MS  and
    modeExercice 0..1 MS  and
    typeActiviteLiberale 0..0 and
    statutProfessionnelSSA 0..0 and
    statutHospitalier 0..0 and
    fonctionR21 0..1 MS and
    fonctionR96 0..1 MS and
    fonctionR85 0..1 MS and
    metierPharmacienR06 0..1 MS and
    metierPharmacienG05 0..1 MS
	
* code.coding[CategorieProfession] from $JDV-J89-CategorieProfessionnelle-RASS (required)
* code.coding[CategorieProfession] ^binding.description = "Catégories professionnelles dans le RASS"


* code.coding[professionG15] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionG15] ^binding.description = "Ensemble des professions du RASS"
* code.coding[professionG15].system ^short = "Professions de santé définies par le code de la santé publique"

* code.coding[professionR94] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR94] ^sliceName = "professionR94"
* code.coding[professionR94] ^binding.description = "Ensemble des professions du RASS"
* code.coding[professionR94].system ^short = "Profession du social"

* code.coding[professionR95] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR95] ^sliceName = "professionR95"
* code.coding[professionR95] ^binding.description = "Ensemble des professions du RASS"
* code.coding[professionR95].system ^short = "Usager de titre professionnel"

* code.coding[professionR291] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR291] ^sliceName = "professionR291"
* code.coding[professionR291] ^binding.description = "Ensemble des professions du RASS"
* code.coding[professionR291].system ^short = "Liste de professionnels non membres d'une profession réglementée"

* code.coding[genreActivite] from $JDV-J94-GenreActivite-RASS (required)
* code.coding[genreActivite] ^binding.description = "Le genre d'activité identifie les activités qui nécessitent l’application de règles de gestion spécifiques"

* code.coding[modeExercice] from $JDV-J95-ModeExercice-RASS (required)
* code.coding[modeExercice] ^binding.description = "Le mode d'exercice décrit selon quelle modalité une activité est exercée au regard de l'organisation de la rétribution du professionnel"

* code.coding[typeActiviteLiberale] from $JDV-J96-TypeActiviteLiberale-RASS (required)
* code.coding[typeActiviteLiberale] ^binding.description = "Type d’activité libérale, par exemple: Cabinet; Secteur privé à l'hôpital"

* code.coding[statutProfessionnelSSA] from $JDV-J97-StatutProfessionnelSSA-RASS (required)
* code.coding[statutProfessionnelSSA] ^binding.description = "Statut du professionnel du Service de santé des armées"

* code.coding[statutHospitalier] from $JDV-J98-StatutHospitalier-RASS (required)
* code.coding[statutHospitalier] ^binding.description = "Statut hospitalier dans le cas d’une activité exercée en établissement public de santé"

* code.coding[fonctionR21] from $JDV-J108-EnsembleFonction-RASS (required)
* code.coding[fonctionR21] ^binding.description = "Ensemble des fonctions et rôles du professionel au sein de la stucture d'exercice"
* code.coding[fonctionR21].system ^short = "Fonction"

* code.coding[fonctionR96] from $JDV-J108-EnsembleFonction-RASS (required)
* code.coding[fonctionR96] ^binding.description = "Ensemble des fonctions et rôles du professionel au sein de la stucture d'exercice"
* code.coding[fonctionR96].system ^short = "Autres fonctions du domaine sanitaire"

* code.coding[fonctionR85] from $JDV-J108-EnsembleFonction-RASS (required)
* code.coding[fonctionR85] ^binding.description = "Ensemble des fonctions et rôles du RASS, https://mos.esante.gouv.fr/NOS/JDV_J108-EnsembleFonction-RASS/FHIR/JDV-J108-EnsembleFonction-RASS"
* code.coding[fonctionR85].system ^short = "Rôle dans la prise en charge des patients ou des usagers"

* code.coding[metierPharmacienR06] from $JDV-J73-MetierPharmacien-RASS (required)
* code.coding[metierPharmacienR06] ^binding.description = "Ensemble des sections et sous-sections du tableau du CNOP dans le RASS, https://mos.esante.gouv.fr/NOS/JDV_J73-MetierPharmacien-RASS/FHIR/JDV-J73-MetierPharmacien-RASS"

* code.coding[metierPharmacienG05] from $JDV-J73-MetierPharmacien-RASS (required)
* code.coding[metierPharmacienG05] ^binding.description = "Ensemble des sections et sous-sections du tableau du CNOP dans le RASS, https://mos.esante.gouv.fr/NOS/JDV_J73-MetierPharmacien-RASS/FHIR/JDV-J73-MetierPharmacien-RASS"
* code.coding[metierPharmacienG05].system ^short = "Sous-section ou à défaut section du tableau de l’Ordre des pharmaciens."

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
* specialty[savoirFaireR38] ^binding.description = "Ensemble des savoir-faire et compétences du RASS"
* specialty[savoirFaireR38].coding.system ^short = "Spécialité ordinale."

* specialty[savoirFaireR39] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR39] ^sliceName = "savoirFaireR39"
* specialty[savoirFaireR39] ^binding.description = "Ensemble des savoir-faire et compétences du RASS"
* specialty[savoirFaireR39].coding.system ^short = "Compétence acquise par le professionnel"

* specialty[savoirFaireR40] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR40] ^sliceName = "savoirFaireR40"
* specialty[savoirFaireR40] ^binding.description = "Ensemble des savoir-faire et compétences du RASS"
* specialty[savoirFaireR40].coding.system ^short = "Compétence exclusive."

* specialty[savoirFaireR42] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR42] ^sliceName = "savoirFaireR42"
* specialty[savoirFaireR42] ^binding.description = "Ensemble des savoir-faire et compétences du RASS"
* specialty[savoirFaireR42].coding.system ^short = "Diplôme d'études spécialisées complémentaires (DESC)"

* specialty[savoirFaireR43] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR43] ^sliceName = "savoirFaireR43"
* specialty[savoirFaireR43] ^binding.description = "Ensemble des savoir-faire et compétences du RASS"
* specialty[savoirFaireR43].coding.system ^short = "Capacité (savoir-faire)"

* specialty[savoirFaireR44] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR44] ^sliceName = "savoirFaireR44"
* specialty[savoirFaireR44] ^binding.description = "Ensemble des savoir-faire et compétences du RASS"
* specialty[savoirFaireR44].coding.system ^short = "Qualification de praticien adjoint contractuel"

* specialty[savoirFaireR45] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR45] ^sliceName = "savoirFaireR45"
* specialty[savoirFaireR45] ^binding.description = "Ensemble des savoir-faire et compétences du RASS"
* specialty[savoirFaireR45].coding.system ^short = "Fonction qualifiée."

* specialty[savoirFaireR97] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR97] ^sliceName = "savoirFaireR97"
* specialty[savoirFaireR97] ^binding.description = "Ensemble des savoir-faire et compétences du RASS"
* specialty[savoirFaireR97].coding.system ^short = "Droit d'exercice complémentaire."

* specialty[savoirFaireG13] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireG13] ^sliceName = "savoirFaireG13"
* specialty[savoirFaireG13] ^binding.description = "Ensemble des savoir-faire et compétences du RASS"
* specialty[savoirFaireG13].coding.system ^short = "Orientation particulière"

* specialty[typeSavoirFaire] from $JDV-J91-TypeSavoirFaire-RASS (required)
* specialty[typeSavoirFaire] ^sliceName = "typeSavoirFaire"
* specialty[typeSavoirFaire] ^binding.description = "Le type de savoir-faire (qualifications/autres attributions)"
* specialty[typeSavoirFaire].coding.system ^short = "Type savoir faire"

* specialty[attributionParticuliere] from $JDV-J90-AttributionParticuliere-RASS (required)
* specialty[attributionParticuliere] ^sliceName = "attributionParticuliere"
* specialty[attributionParticuliere] ^binding.description = "Activités ponctuelles du professionnel de type expertise"
* specialty[attributionParticuliere].coding.system ^short = "Attribution Particulère"


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
