Profile: OrganizationRASS
Parent: FrOrganization
Id: rass-organization
* ^url = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/organization-rass"

* meta.source = "https://annuaire.sante.fr" (exactly)
* meta.profile = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/organization-rass" (exactly)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0

* extension[shortName] 0..0
* extension[description] 0..0
* extension contains
    PharmacyLicence named pharmacyLicence 0..* and
    DigitalCertificate named digitalCertificate 0..* and
    MailboxMSS named mailboxMSS 0..*

* extension[pharmacyLicence] ^min = 0
* extension[digitalCertificate] ^min = 0
* extension[mailboxMSS] ^min = 0
* identifier.use = #official (exactly)

* type contains
    organizationActivityField 0..* and
    activiteINSEE 0..* and
    statutJuridiqueINSEE 0..* and
    CategorieEtablissement 0..* and
    SPH 0..*

* type[organizationActivityField] from $JDV-J101-SecteurActivite-RASS (required)
* type[organizationActivityField] ^binding.description = "Secteur d'Activite du RASS ;  https://mos.esante.gouv.fr/NOS/JDV_J101-SecteurActivite-RASS/FHIR/JDV-J101-SecteurActivite-RASS"

* type[activiteINSEE] from $JDV-J99-InseeNAFrav2Niveau5-RASS (required)
* type[activiteINSEE] ^binding.description = "Sous-classes de la Nomenclature Activités Française (INSEE) des prof du RASS;https://mos.esante.gouv.fr/NOS/JDV_J99-InseeNAFrav2Niveau5-RASS/FHIR/JDV-J99-InseeNAFrav2Niveau5-RASS"

* type[statutJuridiqueINSEE] from $JDV-J100-FinessStatutJuridique-RASS (required)
* type[statutJuridiqueINSEE] ^binding.description = "Statut juridique FINESS dans le RASS, https://mos.esante.gouv.fr/NOS/JDV_J100-FinessStatutJuridique-RASS/FHIR/JDV-J100-FinessStatutJuridique-RASS"


* type[CategorieEtablissement] from $JDV-J129-CategorieEtablissement-RASS (required)
* type[CategorieEtablissement] ^binding.description = "Binding JDV_J129- CategorieEtablissement-RASS (dérivé de la TRE_R66-CategorieEtablissement : « urn:oid: 1.2.250.1.213.1.6.1.8»)"
* type[CategorieEtablissement].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement" (exactly)
* type[SPH] from $JDV-J162-ESPIC-RASS (required)
* type[SPH] ^binding.description = "Binding JDV_J162- ESPIC-RASS (dérivé de la TRE_R73-ESPIC: « urn:oid: 1.2.250.1.213.1.6.1.45»)"
* type[SPH].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R73-ESPIC/FHIR/TRE-R73-ESPIC" (exactly)
* address only FrAddressExtended
* contact ..0
* endpoint ..0