Profile: PractitionerRoleProfessionalRoleRASS
Parent: PractitionerRole
Id: rass-practitioner-role-professional-role
Description: """Informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel et le cadre de son exercice (civil, militaire, etc.).
Il peut exister plusieurs exercices professionnels pour une personne à un instant donné."""
* ^url = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-professionalRole-rass"

* meta.source = "https://annuaire.sante.fr" (exactly)
* meta.profile = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-professionalRole-rass" (exactly)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    PractitionerRoleName named name 0..* and
    PractitionerRoleRegistration named registration 0..* and
    PractitionerRoleEducationLevel named educationLevel 0..* and
    PractitionerRoleSmartCard named smartCard 0..* and
    DigitalCertificate named digitalCertificate 0..* and
    MailboxMSS named mailboxMSS 0..*

* extension[name] ^min = 0
* extension[registration] ^min = 0
* extension[educationLevel] ^min = 0
* extension[smartCard] ^min = 0
* extension[digitalCertificate] ^min = 0

* extension[digitalCertificate].extension ^slicing.discriminator.type = #value
* extension[digitalCertificate].extension ^slicing.discriminator.path = "url"
* extension[digitalCertificate].extension ^slicing.rules = #open
* extension[digitalCertificate].extension ^min = 0
* extension[digitalCertificate].extension[domain] 0..0

* extension[mailboxMSS] ^min = 0

* practitioner 1..

* organization ..0

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.description = "Slicing permettant de coder la profession et la catégorie professionnelle sous le même élément."
* code.coding ^slicing.rules = #open

* code.coding contains
    CategorieProfession 0..1 and
    professionG15 0..1 and
    professionR94 0..1 and
    professionR95 0..1 and
    professionR291 0..1

* code.coding[CategorieProfession] from $JDV-J89-CategorieProfessionnelle-RASS (required)
* code.coding[CategorieProfession] ^binding.description = "Catégories professionnelles dans le RASS, https://mos.esante.gouv.fr/NOS/JDV_J89-CategorieProfessionnelle-RASS/FHIR/JDV-J89-CategorieProfessionnelle-RASS"
* code.coding[CategorieProfession].system = "urn:oid:1.2.250.1.213.1.6.1.10" (exactly)

* code.coding[professionG15] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionG15] ^binding.description = "Ensemble des professions du RASS, https://mos.esante.gouv.fr/NOS/JDV_J106-EnsembleProfession-RASS/FHIR/JDV-J106-EnsembleProfession-RASS"
* code.coding[professionG15].system = "urn:oid:1.2.250.1.71.1.2.7" (exactly)

* code.coding[professionR94] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR94] ^binding.description = "Ensemble des professions du RASS, https://mos.esante.gouv.fr/NOS/JDV_J106-EnsembleProfession-RASS/FHIR/JDV-J106-EnsembleProfession-RASS"
* code.coding[professionR94].system = "urn:oid:1.2.250.1.213.1.6.1.4" (exactly)

* code.coding[professionR95] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR95] ^binding.description = "Ensemble des professions du RASS, https://mos.esante.gouv.fr/NOS/JDV_J106-EnsembleProfession-RASS/FHIR/JDV-J106-EnsembleProfession-RASS"
* code.coding[professionR95].system = "urn:oid:1.2.250.1.213.1.6.1.109" (exactly)

* code.coding[professionR291] from $JDV-J106-EnsembleProfession-RASS (required)
* code.coding[professionR291] ^binding.description = "Ensemble des professions du RASS, https://mos.esante.gouv.fr/NOS/JDV_J106-EnsembleProfession-RASS/FHIR/JDV-J106-EnsembleProfession-RASS"
* code.coding[professionR291].system = "urn:oid:1.2.250.1.213.1.6.1.140" (exactly)

* specialty only CodeableConceptTimed
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.description = "Slicing pour séparer savoir-faire et attribution particulière"
* specialty ^slicing.rules = #open
* specialty contains
    AttributionParticuliere 0..* and
    savoirFaireR38 0..* and
    savoirFaireR39 0..* and
    savoirFaireR40 0..* and
    savoirFaireR42 0..* and
    savoirFaireR43 0..* and
    savoirFaireR44 0..* and
    savoirFaireR45 0..* and
    savoirFaireR97 0..* and
    savoirFaireG13 0..*

* specialty[AttributionParticuliere] only CodeableConceptTimed
* specialty[AttributionParticuliere] from $JDV-J90-AttributionParticuliere-RASS (required)
* specialty[AttributionParticuliere] ^binding.description = "Attributions particulières obtenues par certains professionnels du RASS, https://mos.esante.gouv.fr/NOS/JDV_J90-AttributionParticuliere-RASS/FHIR/JDV-J90-AttributionParticuliere-RASS"
* specialty[AttributionParticuliere].coding.system = "urn:oid:1.2.250.1.71.1.2.27" (exactly)

* specialty[savoirFaireR38] only CodeableConceptTimed
* specialty[savoirFaireR38] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR38] ^binding.description = "Ensemble des savoir-faire et compétences du RASS, https://mos.esante.gouv.fr/NOS/JDV_J107-EnsembleSavoirFaire-RASS/FHIR/JDV-J107-EnsembleSavoirFaire-RASS"
* specialty[savoirFaireR38].coding.system = "urn:oid:1.2.250.1.213.2.28" (exactly)

* specialty[savoirFaireR39] only CodeableConceptTimed
* specialty[savoirFaireR39] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR39] ^binding.description = "Ensemble des savoir-faire et compétences du RASS, https://mos.esante.gouv.fr/NOS/JDV_J107-EnsembleSavoirFaire-RASS/FHIR/JDV-J107-EnsembleSavoirFaire-RASS"
* specialty[savoirFaireR39].coding.system = "urn:oid:1.2.250.1.213.2.29" (exactly)

* specialty[savoirFaireR40] only CodeableConceptTimed
* specialty[savoirFaireR40] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR40] ^binding.description = "Ensemble des savoir-faire et compétences du RASS, https://mos.esante.gouv.fr/NOS/JDV_J107-EnsembleSavoirFaire-RASS/FHIR/JDV-J107-EnsembleSavoirFaire-RASS"
* specialty[savoirFaireR40].coding.system = "urn:oid:1.2.250.1.213.2.30" (exactly)

* specialty[savoirFaireR42] only CodeableConceptTimed
* specialty[savoirFaireR42] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR42] ^binding.description = "Ensemble des savoir-faire et compétences du RASS, https://mos.esante.gouv.fr/NOS/JDV_J107-EnsembleSavoirFaire-RASS/FHIR/JDV-J107-EnsembleSavoirFaire-RASS"
* specialty[savoirFaireR42].coding.system = "urn:oid:1.2.250.1.213.2.32" (exactly)

* specialty[savoirFaireR43] only CodeableConceptTimed
* specialty[savoirFaireR43] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR43] ^binding.description = "Ensemble des savoir-faire et compétences du RASS, https://mos.esante.gouv.fr/NOS/JDV_J107-EnsembleSavoirFaire-RASS/FHIR/JDV-J107-EnsembleSavoirFaire-RASS"
* specialty[savoirFaireR43].coding.system = "urn:oid:1.2.250.1.213.2.33" (exactly)

* specialty[savoirFaireR44] only CodeableConceptTimed
* specialty[savoirFaireR44] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR44] ^binding.description = "Ensemble des savoir-faire et compétences du RASS, https://mos.esante.gouv.fr/NOS/JDV_J107-EnsembleSavoirFaire-RASS/FHIR/JDV-J107-EnsembleSavoirFaire-RASS"
* specialty[savoirFaireR44].coding.system = "urn:oid:1.2.250.1.213.2.34" (exactly)

* specialty[savoirFaireR45] only CodeableConceptTimed
* specialty[savoirFaireR45] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR45] ^binding.description = "Ensemble des savoir-faire et compétences du RASS, https://mos.esante.gouv.fr/NOS/JDV_J107-EnsembleSavoirFaire-RASS/FHIR/JDV-J107-EnsembleSavoirFaire-RASS"
* specialty[savoirFaireR45].coding.system = "urn:oid:1.2.250.1.213.2.35" (exactly)

* specialty[savoirFaireR97] only CodeableConceptTimed
* specialty[savoirFaireR97] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireR97] ^binding.description = "Ensemble des savoir-faire et compétences du RASS, https://mos.esante.gouv.fr/NOS/JDV_J107-EnsembleSavoirFaire-RASS/FHIR/JDV-J107-EnsembleSavoirFaire-RASS"
* specialty[savoirFaireR97].coding.system = "urn:oid:1.2.250.1.213.1.6.1.111" (exactly)

* specialty[savoirFaireG13] only CodeableConceptTimed
* specialty[savoirFaireG13] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
* specialty[savoirFaireG13] ^binding.description = "Ensemble des savoir-faire et compétences du RASS, https://mos.esante.gouv.fr/NOS/JDV_J107-EnsembleSavoirFaire-RASS/FHIR/JDV-J107-EnsembleSavoirFaire-RASS"
* specialty[savoirFaireG13].coding.system = "urn:oid:1.2.250.1.213.2.31" (exactly)

* location ..0
* healthcareService ..0
* telecom ..0
* availableTime ..0
* notAvailable ..0
* availabilityExceptions ..0
* endpoint ..0