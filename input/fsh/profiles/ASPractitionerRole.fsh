Profile: 		ASPractitionerRole
Parent: 		PractitionerRole
Id: 			AS-PractitionerRole
Title:			"AS PractitionerRole"
Description: 	"Profil créé à partir de la ressource PractitionerRole dans le contexte de l'Annuaire Santé pour décrire l'exercice professionel et la situation d'exercice | contient les informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel, le cadre de son exercice (civil, militaire, etc.) ainsi que les caractéristiques de l'exercice d’un professionnel pendant une période déterminée et dans une structure déterminée."

* meta.security ..0
* meta.tag ..0
* implicitRules ..0
* text ..0
* contained ..0
* contained only ASLocation
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    PractitionerRoleName named name 0..* and
    PractitionerRoleRegistration named registration 0..* and
    PractitionerRoleEducationLevel named educationLevel 0..1 and
    PractitionerRoleSmartCard named smartCard 0..1 and
    $mailboxMSS named mailboxMSS 0..1

* extension[name] ^isModifier = false
* extension[name].value[x].id ..0
* extension[name].value[x].use ..0
* extension[name].value[x].text ..0
* extension[name].value[x].prefix ..0
* extension[name].value[x].period ..0

* extension[registration] ^min = 0
* extension[registration] ^isModifier = false
* extension[registration].extension ^slicing.discriminator.type = #value
* extension[registration].extension ^slicing.discriminator.path = "url"
* extension[registration].extension ^slicing.rules = #open
* extension[registration].extension ^min = 0
* extension[registration].extension[registeringOrganizationDetail] 0..0
* extension[registration].extension[period] 0..0
* extension[registration].extension[status] 0..0
* extension[registration].extension[hostingDepartment] 0..0
* extension[registration].extension[isFirst] 0..0

* extension[educationLevel] ^isModifier = false
* extension[educationLevel].id ..0
* extension[educationLevel].extension ^slicing.discriminator.type = #value
* extension[educationLevel].extension ^slicing.discriminator.path = "url"
* extension[educationLevel].extension ^slicing.rules = #open
* extension[educationLevel].extension ^min = 0
* extension[educationLevel].extension[academicDegree] 0..0
* extension[educationLevel].extension[achievedLevel] 0..0
* extension[educationLevel].extension[academicYear] 0..0
* extension[educationLevel].extension[period] 0..0
* extension[educationLevel].extension[issuer] 0..0

* extension[smartCard] ^isModifier = false

* extension[mailboxMSS] ^definition = "BALs MSS de type PER rattaché à l'identifiant du professionnel de santé  ainsi qu'au lieu de sa situation d'exercice"
* extension[mailboxMSS] ^isModifier = false
* extension[mailboxMSS].id ..0
* extension[mailboxMSS].extension ^slicing.discriminator.type = #value
* extension[mailboxMSS].extension ^slicing.discriminator.path = "url"
* extension[mailboxMSS].extension ^slicing.rules = #open
* extension[mailboxMSS].extension ^min = 0
* extension[mailboxMSS].extension[responsible] 0..0
* extension[mailboxMSS].extension[phone] 0..0
* extension[mailboxMSS].extension[date] 0..0

* identifier ..0
* period ..0
* practitioner 1..
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains
    CategorieProfession 0..1 and
    professionG15 0..1 and
	professionR94 0..1 and
	professionR95 0..1 and
	professionR291 0..1 and
    genreActivite 0..1 and
    modeExercice 0..1 and
    typeActiviteLiberale 0..0 and
    statutProfessionnelSSA 0..0 and
    statutHospitalier 0..0 and
    fonctionR21 0..1 and
    fonctionR96 0..1 and
    fonctionR85 0..1 and
    metierPharmacienR06 0..1 and
    metierPharmacienG05 0..1
	
* code.coding[CategorieProfession] from $JDV-J89-CategorieProfessionnelle-RASS (required)
* code.coding[CategorieProfession] ^binding.description = "Catégories professionnelles dans le RASS"
* code.coding[CategorieProfession].system = "https://mos.esante.gouv.fr/NOS/TRE_R09-CategorieProfessionnelle/FHIR/TRE-R09-CategorieProfessionnelle" (exactly)

* code.coding[professionG15] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionG15] ^binding.description = "Ensemble des professions du RASS"
* code.coding[professionG15].system = "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante/TRE_G15-ProfessionSante-FHIR.json" (exactly)
* code.coding[professionG15].system ^short = "Professions de santé définies par le code de la santé publique"

* code.coding[professionR94] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR94] ^sliceName = "professionR94"
* code.coding[professionR94] ^binding.description = "Ensemble des professions du RASS"
* code.coding[professionR94].system = "https://mos.esante.gouv.fr/NOS/TRE_R94-ProfessionSocial/FHIR/TRE-R94-ProfessionSocial" (exactly)
* code.coding[professionR94].system ^short = "Profession du social"

* code.coding[professionR95] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR95] ^sliceName = "professionR95"
* code.coding[professionR95] ^binding.description = "Ensemble des professions du RASS"
* code.coding[professionR95].system = "https://mos.esante.gouv.fr/NOS/TRE_R95-UsagerTitre/FHIR/TRE-R95-UsagerTitre" (exactly)
* code.coding[professionR95].system ^short = "Usager de titre professionnel"

* code.coding[professionR291] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR291] ^sliceName = "professionR291"
* code.coding[professionR291] ^binding.description = "Ensemble des professions du RASS"
* code.coding[professionR291].system = "https://mos.esante.gouv.fr/NOS/TRE_R291-AutreProfession/FHIR/TRE-R291-AutreProfession" (exactly)
* code.coding[professionR291].system ^short = "Liste de professionnels non membres d'une profession réglementée"

* code.coding[genreActivite] from $JDV-J94-GenreActivite-RASS (required)
* code.coding[genreActivite] ^binding.description = "Le genre d'activité identifie les activités qui nécessitent l’application de règles de gestion spécifiques"
* code.coding[genreActivite].system = "https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite" (exactly)

* code.coding[modeExercice] from $JDV-J95-ModeExercice-RASS (required)
* code.coding[modeExercice] ^binding.description = "Le mode d'exercice décrit selon quelle modalité une activité est exercée au regard de l'organisation de la rétribution du professionnel"
* code.coding[modeExercice].system = "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice" (exactly)

* code.coding[typeActiviteLiberale].system = "https://mos.esante.gouv.fr/NOS/TRE_R24-TypeActiviteLiberale/FHIR/TRE-R24-TypeActiviteLiberale" (exactly)

* code.coding[statutProfessionnelSSA].system = "https:mos//.esante.gouv.fr/NOS/TRE_R34-StatutProfessionnelSSA/FHIR/TRE-R34-StatutProfessionnelSSA" (exactly)

* code.coding[statutHospitalier].system = "https://mos.esante.gouv.fr/NOS/TRE_R32-StatutHospitalier/FHIR/TRE-R32-StatutHospitalier" (exactly)

* code.coding[fonctionR21] from $JDV-J108-EnsembleFonction-RASS (required)
* code.coding[fonctionR21] ^binding.description = "Ensemble des fonctions et rôles du professionel au sein de la stucture d'exercice"
* code.coding[fonctionR21].system = "https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction" (exactly)
* code.coding[fonctionR21].system ^short = "Fonction"

* code.coding[fonctionR96] from $JDV-J108-EnsembleFonction-RASS (required)
* code.coding[fonctionR96] ^binding.description = "Ensemble des fonctions et rôles du professionel au sein de la stucture d'exercice"
* code.coding[fonctionR96].system = "https://mos.esante.gouv.fr/NOS/TRE_R96-AutreFonctionSanitaire/FHIR/TRE-R96-AutreFonctionSanitaire" (exactly)
* code.coding[fonctionR96].system ^short = "Autres fonctions du domaine sanitaire"

* code.coding[fonctionR85] from $JDV-J108-EnsembleFonction-RASS (required)
* code.coding[fonctionR85] ^binding.description = "Ensemble des fonctions et rôles du RASS, https://mos.esante.gouv.fr/NOS/JDV_J108-EnsembleFonction-RASS/FHIR/JDV-J108-EnsembleFonction-RASS"
* code.coding[fonctionR85].system = "https://mos.esante.gouv.fr/NOS/TRE_R85-RolePriseCharge/FHIR/TRE-R85-RolePriseCharge" (exactly)
* code.coding[fonctionR85].system ^short = "Rôle dans la prise en charge des patients ou des usagers"

* code.coding[metierPharmacienR06] from $JDV-J73-MetierPharmacien-RASS (required)
* code.coding[metierPharmacienR06] ^binding.description = "Ensemble des sections et sous-sections du tableau du CNOP dans le RASS, https://mos.esante.gouv.fr/NOS/JDV_J73-MetierPharmacien-RASS/FHIR/JDV-J73-MetierPharmacien-RASS"
* code.coding[metierPharmacienR06].system = "https://mos.esante.gouv.fr/NOS/TRE_R06-SectionTableauCNOP/FHIR/TRE-R06-SectionTableauCNOP" (exactly)

* code.coding[metierPharmacienG05] from $JDV-J73-MetierPharmacien-RASS (required)
* code.coding[metierPharmacienG05] ^binding.description = "Ensemble des sections et sous-sections du tableau du CNOP dans le RASS, https://mos.esante.gouv.fr/NOS/JDV_J73-MetierPharmacien-RASS/FHIR/JDV-J73-MetierPharmacien-RASS"
* code.coding[metierPharmacienG05].system = "https://mos.esante.gouv.fr/NOS/TRE_G05-SousSectionTableauCNOP/FHIR/TRE-G05-SousSectionTableauCNOP" (exactly)
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
* specialty[savoirFaireR38] ^binding.description = "Ensemble des savoir-faire et compétences du RASS,"
* specialty[savoirFaireR38].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale" (exactly)
* specialty[savoirFaireR38].coding.system ^short = "Spécialité ordinale."

* specialty[savoirFaireR39] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR39] ^sliceName = "savoirFaireR39"
* specialty[savoirFaireR39] ^binding.description = "Ensemble des savoir-faire et compétences du RASS,"
* specialty[savoirFaireR39].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R39-Competence/FHIR/TRE-R39-Competence" (exactly)
* specialty[savoirFaireR39].coding.system ^short = "Compétence acquise par le professionnel"

* specialty[savoirFaireR40] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR40] ^sliceName = "savoirFaireR40"
* specialty[savoirFaireR40] ^binding.description = "Ensemble des savoir-faire et compétences du RASS,"
* specialty[savoirFaireR40].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R40-CompetenceExclusive/FHIR/TRE-R40-CompetenceExclusive" (exactly)
* specialty[savoirFaireR40].coding.system ^short = "Compétence exclusive."

* specialty[savoirFaireR42] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR42] ^sliceName = "savoirFaireR42"
* specialty[savoirFaireR42] ^binding.description = "Ensemble des savoir-faire et compétences du RASS,"
* specialty[savoirFaireR42].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R42-DESCnonQualifiant/FHIR/TRE-R42-DESCnonQualifiant" (exactly)
* specialty[savoirFaireR42].coding.system ^short = "Diplôme d'études spécialisées complémentaires (DESC)"

* specialty[savoirFaireR43] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR43] ^sliceName = "savoirFaireR43"
* specialty[savoirFaireR43] ^binding.description = "Ensemble des savoir-faire et compétences du RASS,"
* specialty[savoirFaireR43].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R43-CapaciteSavoirFaire/FHIR/TRE-R43-CapaciteSavoirFaire" (exactly)
* specialty[savoirFaireR43].coding.system ^short = "Capacité (savoir-faire)"

* specialty[savoirFaireR44] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR44] ^sliceName = "savoirFaireR44"
* specialty[savoirFaireR44] ^binding.description = "Ensemble des savoir-faire et compétences du RASS,"
* specialty[savoirFaireR44].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R44-QualificationPAC/FHIR/TRE-R44-QualificationPAC" (exactly)
* specialty[savoirFaireR44].coding.system ^short = "Qualification de praticien adjoint contractuel"

* specialty[savoirFaireR45] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR45] ^sliceName = "savoirFaireR45"
* specialty[savoirFaireR45] ^binding.description = "Ensemble des savoir-faire et compétences du RASS,"
* specialty[savoirFaireR45].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R45-FonctionQualifiee/FHIR/TRE-R45-FonctionQualifiee" (exactly)
* specialty[savoirFaireR45].coding.system ^short = "Fonction qualifiée."

* specialty[savoirFaireR97] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR97] ^sliceName = "savoirFaireR97"
* specialty[savoirFaireR97] ^binding.description = "Ensemble des savoir-faire et compétences du RASS,"
* specialty[savoirFaireR97].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R97-DroitExerciceCompl/FHIR/TRE-R97-DroitExerciceCompl" (exactly)
* specialty[savoirFaireR97].coding.system ^short = "Droit d'exercice complémentaire."

* specialty[savoirFaireG13] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireG13] ^sliceName = "savoirFaireG13"
* specialty[savoirFaireG13] ^binding.description = "Ensemble des savoir-faire et compétences du RASS,"
* specialty[savoirFaireG13].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_G13-OrientationParticuliere/FHIR/TRE-G13-OrientationParticuliere" (exactly)
* specialty[savoirFaireG13].coding.system ^short = "Orientation particulière"

* specialty[typeSavoirFaire] from $JDV-J91-TypeSavoirFaire-RASS (required)
* specialty[typeSavoirFaire] ^sliceName = "typeSavoirFaire"
* specialty[typeSavoirFaire] ^binding.description = "Le type de savoir-faire (qualifications/autres attributions)"
* specialty[typeSavoirFaire].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire" (exactly)
* specialty[typeSavoirFaire].coding.system ^short = "Type savoir faire"


* specialty[attributionParticuliere].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R03-AttributionParticuliere/FHIR/TRE-R03-AttributionParticuliere" (exactly)

* location ..0
* location only Reference(AS-Location)
* location ^type.aggregation = #contained
* healthcareService ..0
* telecom ..0
* telecom only $FrContactPoint
* availableTime ..0
* notAvailable ..0
* availabilityExceptions ..0
* endpoint ..0