Profile: 		ASPractitionerProfile
Parent: 		Practitioner
Id: 			as-practitioner
Title:			"AS Practitioner Profile"
Description: 	"Profil créé à partir de la ressource Practitioner dans le contexte de l'Annuaire Santé pour décrire les données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social."
// metadata
* meta.lastUpdated 1..1
// extensions
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $practitioner-nationality named nationality 0..1 MS and
    $practitioner-authorization named authorization 0..* and
    $practitioner-birthPlace named birthPlace 0..1 MS and
    $practitioner-deceasedDateTime named deceasedDateTime 0..* and
    AsMailboxMSSExtension named mailboxMSS 0..*
// Identifiants de la personne physique
* identifier ^short = "Une instance par identifiant (RPPS, ADELI, idNat_PS…)"
* identifier.type 1..
* identifier.type from $fr-practioner-identifier-type (extensible)
* identifier.type ^comment = "Les code ADELI, RPPS et IDNPS proviennent du system  http://interopsante.org/fhir/CodeSystem/fr-v2-0203 ; Les code 1, 3, 4, 5, 6 proviennent du system : https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"
* identifier.type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* identifier.type ^binding.extension[=].valueString = "IdentifierType"
* identifier.type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier.type ^binding.extension[=].valueBoolean = true
* identifier.type ^binding.description = "ValueSet défini par Interop’Santé « fr-practioner-identifier-type"
* identifier.system 1..
* identifier.system ^short = "le system de l'identifiant dépend de la source d'où provient l'identifiant"
* identifier.system ^comment = "« http://rpps.fr» si l’instance correspond à un identifiant RPPS ; « http://adeli.fr» si l’instance correspond à un identifiant ADELI ; « urn:oid:1.2.250.1.71.4.2.1 » si l’instance correspond à l’identification nationale PP (idNat_PS) ; « urn:oid:1.2.250.1.213.1.6.4.2 » si l’instance correspond à une identification locale : Id Cabinet ADELI/N° de registre, FINESS/N° de registre, SIREN/N° de registre, SIRET/N° de registre ou Id Cabinet RPPS/N° de registre"
* identifier.value 1..
* identifier.value ^short = "la valeur de l'identifiant du PS"
// nomFamille/nomUsage
* name only $FrHumanName
* name ^short = "Une instance pour le nom d’usage et une instance pour le nom issu de l’état-civil"
* name.id MS
* name.extension ^slicing.discriminator.type = #value
* name.extension ^slicing.discriminator.path = "url"
* name.extension ^slicing.rules = #open
* name.extension[assemblyOrder] MS
* name.extension[assemblyOrder].value[x] ^slicing.discriminator.type = #type
* name.extension[assemblyOrder].value[x] ^slicing.discriminator.path = "$this"
* name.extension[assemblyOrder].value[x] ^slicing.rules = #closed
* name.use MS
* name.use ^comment = "« usual » pour nom et prénom d’usage (Personne) ; « official » pour nom de famille et prénoms (Etat-civil)"
* name.text MS
* name.family MS
* name.family ^short = "[DR] : nomFamille/nomUsage"
* name.given MS
* name.given ^short = "[DR] : prenom/prenomUsuel"
* name.prefix ^binding.strength = #required
* name.suffix MS
* name.period MS
// sexeAdministratif
* gender MS
* gender ^short = "[DR] : sexeAdministratif"
// dateNaissance
* birthDate MSdateNaissance
* birthDate ^short = "[DR] - dateNaissance"
// lieuNaissance
* extension[birthPlace] ^isModifier = false
* extension[birthPlace] ^definition = "Code officiel géographique (COG) de la commune (France) ou du pays"
* extension[birthPlace] ^short = "[DR] : lieuNaissance"
// dateDeces
* extension[deceasedDateTime] ^isModifier = false
* extension[deceasedDateTime] ^definition = "Date de décès de la personne"
* extension[deceasedDateTime] ^short = "[DR] : dateDeces"
// telecommunication 
* telecom MS
* telecom ^short = "[DR] : telecommunication"
* telecom only $FrContactPoint
* telecom ^comment = "Différentes instances pour les téléphones, la télécopie et l’adresse mail"
* telecom.system ^comment = "« phone » pour Téléphone et Téléphone 2 ; « fax » pour Télécopie ; « email » pour adresse e-mail"
* telecom.use ^comment = "« old » si les coordonnées de correspondance ont une date de fin"
// adresseCorrespondance
* address MS
* address ^short = "[DR] : adresseCorrespondance"
* address only AsAddressExtendedProfile
// BoiteLettreMSS
* extension[mailboxMSS] ^isModifier = false
* extension[mailboxMSS] ^definition = "Les BALs MSS de type PER rattachées seulement à l'identifiant du professionnel de Santé"
* extension[mailboxMSS] ^short = "BoiteLettreMSS"
// diplomeObtenu
* qualification ^comment = "Une instance pour chaque diplôme ou autre diplôme obtenu"
* qualification.id MS
* qualification.identifier MS
* qualification.identifier ^short = "numeroDiplome"
* qualification.code.id MS
* qualification.code.coding ^slicing.discriminator.type = #value
* qualification.code.coding ^slicing.discriminator.path = "system"
* qualification.code.coding ^slicing.description = "Two slices: one slice for the degree (diplôme obtenu) and one for its type (type diplôme obtenu)"
* qualification.code.coding ^slicing.ordered = false
* qualification.code.coding ^slicing.rules = #open
* qualification.code.coding contains
    degreeType 0..1 MS and
    degreeR48 0..1 MS and
    degreeR49 0..1 MS and
    degreeR50 0..1 MS and
    degreeR51 0..1 MS and
    degreeR52 0..1 MS and
    degreeR53 0..1 MS and
    degreeR54 0..1 MS and
    degreeR55 0..1 MS and
    degreeR56 0..1 MS and
    degreeR57 0..1 MS and
    degreeR58 0..1 MS and
    deegreeR36 0..1 MS and
    degreeR47 0..1 MS and
    degreeR226 0..1 MS
// typeDiplome
* qualification.code.coding[degreeType] from $JDV-J81-TypeDiplome-RASS (required)
* qualification.code.coding[degreeType] ^binding.description = "Liste des types de diplôme"
* qualification.code.coding[degreeType] ^short = "typeDiplome"
// DiplomeEtat
* qualification.code.coding[degreeR48] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR48] ^binding.description = "Ensemble des diplômes et qualifications"
* qualification.code.coding[degreeR48].system ^short = "DiplomeEtat"
// DiplomeEtudeSpecialisee
* qualification.code.coding[degreeR49] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR49] ^binding.description = "Ensemble des diplômes et qualifications"
* qualification.code.coding[degreeR49].system ^short = "DiplomeEtudeSpecialisee"
// DESC1
* qualification.code.coding[degreeR50] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR50] ^binding.description = "Ensemble des diplômes et qualifications"
* qualification.code.coding[degreeR50].system ^short = "DESC1"
// DESC2
* qualification.code.coding[degreeR51] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR51] ^binding.description = "Ensemble des diplômes et qualifications"
* qualification.code.coding[degreeR51].system ^short = "DESC2"
// capaciteDiplome
* qualification.code.coding[degreeR52] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR52] ^binding.description = "Diplôme de capacité de médecine."
* qualification.code.coding[degreeR52].system ^short = "capaciteDiplome"
// DiplomeEEE
* qualification.code.coding[degreeR53] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR53] ^binding.description = "Diplôme d'un pays de l'espace économique européen"
* qualification.code.coding[degreeR53].system ^short = "DiplomeEEE"
// DiplomeUniversitaire
* qualification.code.coding[degreeR54] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR54] ^binding.description = "Diplôme universitaire ou interuniversitaire"
* qualification.code.coding[degreeR54].system ^short = "DiplomeUniversitaire"
// certificatEtudeSpeciale
* qualification.code.coding[degreeR55] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR55] ^binding.description = "Certificat d'études spéciales (CES)"
* qualification.code.coding[degreeR55].system ^short = "certificatEtudeSpeciale"
// attestation
* qualification.code.coding[degreeR56] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR56] ^binding.description = "Attestation de formation"
* qualification.code.coding[degreeR56].system ^short = "attestation"
// DiplomeEES
* qualification.code.coding[degreeR57] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR57] ^binding.description = "Diplôme européen d'études spécialisées"
* qualification.code.coding[degreeR57].system ^short = "DiplomeEES"
// 
* qualification.code.coding[degreeR58] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR58] ^binding.description = "Ensemble des diplômes et qualifications du RASS"
* qualification.code.coding[degreeR58].system ^short = ""
// AutreDiplomeObtenu
* qualification.code.coding[deegreeR36] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[deegreeR36] ^binding.description = "Autre diplôme obtenu"
* qualification.code.coding[deegreeR36] ^short = "autreDiplomeObtenu"
// qualification
* qualification.code.coding[degreeR47] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR47] ^binding.description = "Qualification attribuée par une commission"
* qualification.code.coding[degreeR47].system ^short = "qualification"
// diplomeDeuxiemeCycleNonQualifiant
* qualification.code.coding[degreeR226] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR226] ^binding.description = "Diplôme de deuxième cycle non qualifiant"
* qualification.code.coding[degreeR226].system ^short = "diplomeDeuxiemeCycleNonQualifiant"
* qualification.code.text MS
* qualification.period MS
* qualification.issuer MS
* qualification.issuer.reference MS
* qualification.issuer.type MS
* qualification.issuer.identifier ^short = "Code du lieu d'obtention du diplôme"
* qualification.issuer.identifier.use MS
* qualification.issuer.identifier.type MS
* qualification.issuer.identifier.system = "urn:oid:1.2.250.1.213.1.6.4.1" (exactly)
* qualification.issuer.identifier.period MS
* qualification.issuer.identifier.assigner MS
* qualification.issuer.display MS
// AutorisationExercice
* extension[authorization] ^isModifier = false
* extension[authorization] ^definition = "L'autorisation d'exercice pour les personnes diposant de diplômes étrangers non reconnus en France"
* extension[authorization] ^short = "AutorisationExercice"
// langueParlee
* communication MS
* communication ^short = "langueParlee"
* communication only $codeableConcept-timed
