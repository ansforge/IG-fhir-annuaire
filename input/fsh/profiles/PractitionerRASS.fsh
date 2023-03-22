Profile: PractitionerRASS
Parent: Practitioner // Why not use FrPractitioner ?
Id: rass-practitioner
Description: "Profil RASS de la ressource Practitioner."
* ^url = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitioner-rass"

* meta.source = "https://annuaire.sante.fr" (exactly)
* meta.profile = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitioner-rass" (exactly)
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    PractitionerNationality named nationality 0..* and
    PractitionerAuthorization named authorization 0..* and
    PractitionerDeceasedDateTime named deceasedDateTime 0..* and
    PractitionerBirthPlace named birthPlace 0..* and
    MailboxMSS named mailboxMSS 0..*
* extension[nationality] ^min = 0
* extension[authorization] ^min = 0
* extension[deceasedDateTime] ^min = 0
* extension[birthPlace] ^min = 0
* extension[mailboxMSS] ^min = 0
* identifier.type 1..
* identifier.type from $fr-practioner-identifier-type (extensible)
* identifier.system 1..
* identifier.value 1..
* name only FrHumanName
* name.extension ^slicing.discriminator.type = #value
* name.extension ^slicing.discriminator.path = "url"
* name.extension ^slicing.rules = #open
* name.extension ^min = 0
* name.extension[assemblyOrder] ^sliceName = "assemblyOrder"
* name.extension[assemblyOrder] ^min = 0
* name.extension[assemblyOrder].value[x] ^slicing.discriminator.type = #type
* name.extension[assemblyOrder].value[x] ^slicing.discriminator.path = "$this"
* name.extension[assemblyOrder].value[x] ^slicing.rules = #closed
* name.prefix from $JDV-J78-Civilite-RASS (required)
* name.prefix ^binding.description = "Civilités des personnes physiques du RASS;https://mos.esante.gouv.fr/NOS/JDV_J78-Civilite-RASS/FHIR/JDV-J78-Civilite-RASS"
* name.suffix from $JDV-J79-CiviliteExercice-RASS (extensible)
* name.suffix ^binding.description = "Civilités d'exercice d'un professionnel du RASS;https://mos.esante.gouv.fr/NOS/JDV_J79-CiviliteExercice-RASS/FHIR/JDV-J79-CiviliteExercice-RASS"
* telecom only FrContactPoint
* address only FrAddressExtended
* qualification.code.coding ^slicing.discriminator.type = #value
* qualification.code.coding ^slicing.discriminator.path = "system"
* qualification.code.coding ^slicing.description = "Two slices: one slice for the degree (diplôme obtenu) and one for its type (type diplôme obtenu)"
* qualification.code.coding ^slicing.ordered = false
* qualification.code.coding ^slicing.rules = #open
* qualification.code.coding contains
    degreeType 0..1 and
    degreeR48 0..1 and
    degreeR49 0..1 and
    degreeR50 0..1 and
    degreeR51 0..1 and
    degreeR52 0..1 and
    degreeR53 0..1 and
    degreeR54 0..1 and
    degreeR55 0..1 and
    degreeR56 0..1 and
    degreeR57 0..1 and
    degreeR58 0..1 and
    deegreeR36 0..1 and
    degreeR47 0..1 and
    degreeR226 0..1
* qualification.code.coding[degreeType] from $JDV-J81-TypeDiplome-RASS (required)
* qualification.code.coding[degreeType] ^binding.description = "Types de diplôme du RASS; https://mos.esante.gouv.fr/NOS/JDV_J81-TypeDiplome-RASS/FHIR/JDV-J81-TypeDiplome-RASS"
* qualification.code.coding[degreeType].system = "urn:oid:1.2.250.1.213.1.6.1.36" (exactly)
* qualification.code.coding[degreeR48] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR48] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR48].system = "urn:oid:1.2.250.1.213.1.6.1.31" (exactly)
* qualification.code.coding[degreeR49] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR49] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR49].system = "urn:oid:1.2.250.1.213.1.6.1.32" (exactly)
* qualification.code.coding[degreeR50] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR50] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR50].system = "urn:oid:1.2.250.1.213.1.6.1.48" (exactly)
* qualification.code.coding[degreeR51] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR51] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR51].system = "urn:oid:1.2.250.1.213.1.6.1.49" (exactly)
* qualification.code.coding[degreeR52] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR52] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR52].system = "urn:oid:1.2.250.1.213.1.6.1.50" (exactly)
* qualification.code.coding[degreeR53] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR53] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR53].system = "urn:oid:1.2.250.1.213.1.6.1.51" (exactly)
* qualification.code.coding[degreeR54] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR54] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR54].system = "urn:oid:1.2.250.1.213.1.6.1.34" (exactly)
* qualification.code.coding[degreeR55] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR55] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR55].system = "urn:oid:1.2.250.1.213.1.6.1.52" (exactly)
* qualification.code.coding[degreeR56] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR56] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR56].system = "urn:oid:1.2.250.1.213.1.6.1.27" (exactly)
* qualification.code.coding[degreeR57] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR57] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR57].system = "urn:oid:1.2.250.1.213.1.6.1.33" (exactly)
* qualification.code.coding[degreeR58] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR58] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR58].system = "urn:oid:1.2.250.1.213.1.6.1.53" (exactly)
* qualification.code.coding[deegreeR36] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[deegreeR36] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[deegreeR36].system = "urn:oid:1.2.250.1.213.1.6.1.54" (exactly)
* qualification.code.coding[degreeR47] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR47] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR47].system = "urn:oid:1.2.250.1.213.1.6.1.30" (exactly)
* qualification.code.coding[degreeR226] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR226] ^binding.description = "Ensemble des diplômes et qualifications du RASS; https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
* qualification.code.coding[degreeR226].system = "urn:oid:1.2.250.1.213.1.6.1.118" (exactly)
* qualification.issuer.identifier.system = "urn:oid:1.2.250.1.213.1.6.4.1" (exactly)
* communication only CodeableConceptTimed
* communication from $JDV-J82-Langue-RASS (required)
* communication ^binding.description = "Langues (codes ISO-639) des professionnels du RASS; https://mos.esante.gouv.fr/NOS/JDV_J82-Langue-RASS/FHIR/JDV-J82-Langue-RASS"