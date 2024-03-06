// ValueSets ajoutés car manquants dans le NOS

ValueSet: ModeFixationTarifaireValueSet
Id: JDV-ModeFixationTarifaire
Title: "Jeu de valeurs Mode Fixation Tarifaire"
Description: "ValueSet contenant tous les codes de la TRE R74 indiquant les modes de fixation tarifaire"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://mos.esante.gouv.fr/NOS/TRE_R74-ModeFixationTarifaire/FHIR/TRE-R74-ModeFixationTarifaire?vs"
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R74-ModeFixationTarifaire/FHIR/TRE-R74-ModeFixationTarifaire

// SVS profile
* ^experimental = false


ValueSet: TypeFermetureValueSet
Id: JDV-TypeFermeture
Title: "Jeu de valeurs Type Fermeture"
Description: "ValueSet contenant tous les codes de la TRE R286 indiquant les types de fermeture"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://mos.esante.gouv.fr/NOS/TRE_R286-TypeFermeture/FHIR/TRE-R286-TypeFermeture?vs"
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R286-TypeFermeture/FHIR/TRE-R286-TypeFermeture

// SVS profile
* ^experimental = false


ValueSet: SourceInformationInstallationValueSet
Id: JDV-SourceInformationInstallation
Title: "Jeu de valeurs Source Information Installation"
Description: "ValueSet contenant tous les codes de la TRE R301 indiquant les sources d'information d'installation"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://mos.esante.gouv.fr/NOS/TRE_R301-SourceInformationInstallation/FHIR/TRE-R301-SourceInformationInstallation?vs"
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R301-SourceInformationInstallation/FHIR/TRE-R301-SourceInformationInstallation

// SVS profile
* ^experimental = false
