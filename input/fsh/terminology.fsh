// ValueSets ajoutés car manquants dans le NOS

ValueSet: ModeFixationTarifaireValueSet
Id: as-vs-mode-fixation-tarifaire
Title: "AS ValueSet Mode Fixation Tarifaire"
Description: "ValueSet contenant tous les codes de la TRE R74 indiquant les modes de fixation tarifaire"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R74-ModeFixationTarifaire/FHIR/TRE-R74-ModeFixationTarifaire

// SVS profile
* ^experimental = false


ValueSet: TypeFermetureValueSet
Id: as-vs-type-fermeture
Title: "AS ValueSet TypeFermeture"
Description: "ValueSet contenant tous les codes de la TRE R286 indiquant les types de fermeture"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R286-TypeFermeture/FHIR/TRE-R286-TypeFermeture

// SVS profile
* ^experimental = false


ValueSet: SourceInformationInstallationValueSet
Id: as-vs-source-information-installation
Title: "AS ValueSet Source Information Installation"
Description: "ValueSet contenant tous les codes de la TRE R301 indiquant les sources d'information d'installation"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R301-SourceInformationInstallation/FHIR/TRE-R301-SourceInformationInstallation

// SVS profile
* ^experimental = false


// AS data trace
CodeSystem:  AsCsTypeSystemeInformation
Id: as-cs-type-systeme-information
Title: "AS CodeSystem type de système d'information"
Description:  "CodeSystem définissant les types de systèmes d'information pouvant alimenter l'annuaire santé."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
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
* include codes from system as-cs-type-systeme-information

// SVS profile
* ^experimental = false