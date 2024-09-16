// ValueSets ajoutés car manquants dans le NOS

ValueSet: VS_TRE_R74_ModeFixationTarifaire
Id: VS-TRE-R74-ModeFixationTarifaire
Title: "ValueSet pour l'ensemble des codes concepts de la TRE avec l'url : https://mos.esante.gouv.fr/NOS/TRE_R74-ModeFixationTarifaire/FHIR/TRE-R74-ModeFixationTarifaire"
Description: "JDV des NOS contenant l'ensemble des codes concepts de la TRE avec l'url : https://mos.esante.gouv.fr/NOS/TRE_R74-ModeFixationTarifaire/FHIR/TRE-R74-ModeFixationTarifaire"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^version = "20240306173000"
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R74-ModeFixationTarifaire/FHIR/TRE-R74-ModeFixationTarifaire

// SVS profile
* ^experimental = false


ValueSet: VS_TRE_R286_TypeFermeture
Id: VS-TRE-R286-TypeFermeture
Title: "ValueSet pour l'ensemble des codes concepts de la TRE avec l'url : https://mos.esante.gouv.fr/NOS/TRE_R286-TypeFermeture/FHIR/TRE-R286-TypeFermeture"
Description: "JDV des NOS contenant l'ensemble des codes concepts de la TRE avec l'url : https://mos.esante.gouv.fr/NOS/TRE_R286-TypeFermeture/FHIR/TRE-R286-TypeFermeture"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^version = "20240306173000"
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R286-TypeFermeture/FHIR/TRE-R286-TypeFermeture

// SVS profile
* ^experimental = false


ValueSet: VS_TRE_R301_SourceInformationInstallation
Id: VS-TRE-R301-SourceInformationInstallation
Title: "ValueSet pour l'ensemble des codes concepts de la TRE avec l'url : https://mos.esante.gouv.fr/NOS/TRE_R301-SourceInformationInstallation/FHIR/TRE-R301-SourceInformationInstallation"
Description: "JDV des NOS contenant l'ensemble des codes concepts de la TRE avec l'url : https://mos.esante.gouv.fr/NOS/TRE_R301-SourceInformationInstallation/FHIR/TRE-R301-SourceInformationInstallation"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^version = "20240306173000"
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R301-SourceInformationInstallation/FHIR/TRE-R301-SourceInformationInstallation

// SVS profile
* ^experimental = false


// AS data trace
CodeSystem:  AsCsTypeSystemeInformation
Id: as-cs-type-systeme-information
Title: "AS CodeSystem type de système d'information"
Description:  "CodeSystem définissant les types de systèmes d'information pouvant alimenter l'annuaire santé."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "20240306173000"
* #RPPS "Répertoire partagé des professionnels de santé" "Répertoire partagé des professionnels de santé"
* #ADELI "Numéro ADELI" "Adeli est un répertoire national qui recense les professionnels de santé réglementés, qu'ils exercent en libéral ou salarial."
* #FINESS "Fichier national des établissements sanitaires et sociaux" "FINESS (Fichier National des Etablissements Sanitaires et Sociaux) est le répertoire national de référence des personnes morales intervenant dans les domaines sanitaire, médico-social et social et de l’enseignement des professions sanitaires et sociales."
* #CG "CG" "SI CPS"

// SVS profile
* ^experimental = false

ValueSet: AsVsTypeSystemeInformationVS
Id: as-vs-type-systeme-information
Title: "AS ValueSet type de système d'information"
Description:  "ValueSet définissant les types de systèmes d'information pouvant alimenter l'annuaire santé."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^version = "20240306173000"
* include codes from system as-cs-type-systeme-information

// SVS profile
* ^experimental = false






























CodeSystem:  AsCsTypeEtablissement
Id: as-cs-type-etablissement
Title: "AS CodeSystem Type Etablissement"
Description:  "CodeSystem définissant les types d'établissement."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "20240306173000"
* #P "Principal" "Etablissement principal"
* #S "Secondaire" "Etablissement secondaire"
// SVS profile
* ^experimental = false

ValueSet: AsVsTypeEtablissement
Id: as-vs-type-etablissement
Title: "AS ValueSet type Etablissement"
Description:  "ValueSet définissant les types d'établissement."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^version = "20240306173000"
* include codes from system as-cs-type-etablissement

// SVS profile
* ^experimental = false

