

// AS data trace
CodeSystem:  AsCsTypeSystemeInformation
Id: as-cs-type-systeme-information
Title: "AS CodeSystem type de système d'information"
Description:  "CodeSystem définissant les types de systèmes d'information pouvant alimenter l'annuaire santé."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "20240306173000"
* #RPPS "Répertoire partagé des professionnels de santé" "Répertoire partagé des professionnels de santé"
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

