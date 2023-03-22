Profile: PractitionerRoleOrganizationalRoleRASS
Parent: PractitionerRole
Id: rass-practitioner-role-organizational-role
Description: "Caractéristiques de l'exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l'exception des remplaçants)"
* ^url = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-organizationalRole-rass"

* meta.source = "https://annuaire.sante.fr" (exactly)
* meta.profile = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-organizationalRole-rass" (exactly)
* contained only LocationRASS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    PractitionerRolePartOf named partOf 1..1 and
    PractitionerRoleEndCause named endCause 0..* and
    PractitionerRolePracticeRegion named practiceRegion 0..* and
    PractitionerRoleRegistration named registration 0..* and
    MailboxMSS named mailboxMSS 0..*
* extension[endCause] ^min = 0
* extension[practiceRegion] ^min = 0
* extension[registration] ^min = 0
* extension[mailboxMSS] ^min = 0
* practitioner ..0
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "coding.system"
* code ^slicing.rules = #open
* code contains
    genreActivite 0..1 and
    modeExercice 0..1 and
    typeActiviteLiberale 0..1 and
    statutProfessionnelSSA 0..1 and
    statutHospitalier 0..1 and
    fonctionR21 0..1 and
    fonctionR96 0..1 and
    fonctionR85 0..1 and
    metierPharmacienR06 0..1 and
    metierPharmacienG05 0..1
* code[genreActivite] from $JDV-J94-GenreActivite-RASS (required)
* code[genreActivite] ^binding.description = "Activités des professionnels RASS nécessitant des règles de gestion spécifiques;https://mos.esante.gouv.fr/NOS/JDV_J94-GenreActivite-RASS/FHIR/JDV-J94-GenreActivite-RASS"
* code[genreActivite].coding.system = "urn:oid:1.2.250.1.213.1.6.1.19" (exactly)
* code[modeExercice] from $JDV-J95-ModeExercice-RASS (required)
* code[modeExercice] ^binding.description = "Modes d'exercice du professionnel du RASS, https://mos.esante.gouv.fr/NOS/JDV_J95-ModeExercice-RASS/FHIR/JDV-J95-ModeExercice-RASS"
* code[modeExercice].coding.system = "urn:oid:1.2.250.1.213.1.6.1.18" (exactly)
* code[typeActiviteLiberale] from $JDV-J96-TypeActiviteLiberale-RASS (required)
* code[typeActiviteLiberale] ^binding.description = "Types d'activité libérale des professionnels du RASS, https://mos.esante.gouv.fr/NOS/JDV_J96-TypeActiviteLiberale-RASS/FHIR/JDV-J96-TypeActiviteLiberale-RASS"
* code[typeActiviteLiberale].coding.system = "urn:oid:1.2.250.1.213.1.6.1.22" (exactly)
* code[statutProfessionnelSSA] from $JDV-J97-StatutProfessionnelSSA-RASS (required)
* code[statutProfessionnelSSA] ^binding.description = "Statuts des professionnels du Service de Santé des Armées dans le RASS, https://mos.esante.gouv.fr/NOS/JDV_J97-StatutProfessionnelSSA-RASS/FHIR/JDV-J97-StatutProfessionnelSSA-RASS"
* code[statutProfessionnelSSA].coding.system = "urn:oid:1.2.250.1.213.1.6.1.23" (exactly)
* code[statutHospitalier] from $JDV-J98-StatutHospitalier-RASS (required)
* code[statutHospitalier] ^binding.description = "Statut des professionnels intervenant dans un hôpital dans le RASS, https://mos.esante.gouv.fr/NOS/JDV_J98-StatutHospitalier-RASS/FHIR/JDV-J98-StatutHospitalier-RASS"
* code[statutHospitalier].coding.system = "urn:oid:1.2.250.1.213.1.6.1.21" (exactly)
* code[fonctionR21] from $JDV-J108-EnsembleFonction-RASS (required)
* code[fonctionR21] ^binding.description = "Ensemble des fonctions et rôles du RASS, https://mos.esante.gouv.fr/NOS/JDV_J108-EnsembleFonction-RASS/FHIR/JDV-J108-EnsembleFonction-RASS"
* code[fonctionR21].coding.system = "urn:oid:1.2.250.1.213.1.6.1.17" (exactly)
* code[fonctionR96] from $JDV-J108-EnsembleFonction-RASS (required)
* code[fonctionR96] ^binding.description = "Ensemble des fonctions et rôles du RASS, https://mos.esante.gouv.fr/NOS/JDV_J108-EnsembleFonction-RASS/FHIR/JDV-J108-EnsembleFonction-RASS"
* code[fonctionR96].coding.system = "urn:oid:1.2.250.1.213.1.6.1.110" (exactly)
* code[fonctionR85] from $JDV-J108-EnsembleFonction-RASS (required)
* code[fonctionR85] ^binding.description = "Ensemble des fonctions et rôles du RASS, https://mos.esante.gouv.fr/NOS/JDV_J108-EnsembleFonction-RASS/FHIR/JDV-J108-EnsembleFonction-RASS"
* code[fonctionR85].coding.system = "urn:oid:1.2.250.1.213.1.6.1.107" (exactly)
* code[metierPharmacienR06] from $JDV-J73-MetierPharmacien-RASS (required)
* code[metierPharmacienR06] ^binding.description = "Ensemble des sections et sous-sections du tableau du CNOP dans le RASS, https://mos.esante.gouv.fr/NOS/JDV_J73-MetierPharmacien-RASS/FHIR/JDV-J73-MetierPharmacien-RASS"
* code[metierPharmacienR06].coding.system = "urn:oid:1.2.250.1.213.2.37" (exactly)
* code[metierPharmacienG05] from $JDV-J73-MetierPharmacien-RASS (required)
* code[metierPharmacienG05] ^binding.description = "Ensemble des sections et sous-sections du tableau du CNOP dans le RASS, https://mos.esante.gouv.fr/NOS/JDV_J73-MetierPharmacien-RASS/FHIR/JDV-J73-MetierPharmacien-RASS"
* code[metierPharmacienG05].coding.system = "urn:oid:1.2.250.1.71.4.2.6" (exactly)
* specialty ..0
* location only Reference(LocationRASS)
* location ^type.aggregation = #contained
* healthcareService ..0
* telecom only FrContactPoint
* availableTime ..0
* notAvailable ..0
* availabilityExceptions ..0
* endpoint ..0