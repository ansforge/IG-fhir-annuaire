// ValueSets ajoutés car manquants dans le NOS


ValueSet: ModeFixationTarifaireValueSet
Id: as-vs-mode-fixation-tarifaire
Title: "AS ValueSet Mode Fixation Tarifaire"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R74-ModeFixationTarifaire/FHIR/TRE-R74-ModeFixationTarifaire

// SVS profile
* ^experimental = false


ValueSet: TypeFermetureValueSet
Id: as-vs-type-fermeture
Title: "AS ValueSet TypeFermeture"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R286-TypeFermeture/FHIR/TRE-R286-TypeFermeture

// SVS profile
* ^experimental = false

ValueSet: SourceInformationInstallationValueSet
Id: as-vs-source-information-installation
Title: "AS ValueSet Source Information Installation"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R301-SourceInformationInstallation/FHIR/TRE-R301-SourceInformationInstallation

// SVS profile
* ^experimental = false