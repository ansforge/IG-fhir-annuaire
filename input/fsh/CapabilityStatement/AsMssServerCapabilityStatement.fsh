Instance: AsMssServerCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* status = #active
* date = "2026-04-16"
* fhirVersion = #4.0.1
* kind = #requirements
* format[+] = #json
* name = "AsMssServerCapabilityStatement"
* title = "AS MSS Server CapabilityStatement"
* description = """CapabilityStatement décrivant les capacités de l'endpoint dédié à l'écriture des BAL MSSanté (Option 1 — ressources porteuses).

Cet endpoint expose uniquement des opérations d'écriture :
- **PATCH FHIRPath** : ajout, modification ou suppression d'un élément `telecom[mailbox-mss]` sur la ressource porteuse, identifiée soit par son ID logique, soit par son identifiant métier (conditional PATCH via `identifier`).

La sémantique du PATCH suit la spécification [FHIR Patch](https://hl7.org/fhir/R4/http.html#patch) au format `application/fhir+json`."""

* rest.mode = #server

// ################
// # Organization #
// ################

* rest.resource[0].type = #Organization
* rest.resource[=].profile = Canonical(as-organization)
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-CapabilityStatement.rest.resource.conditionalPatch"
* rest.resource[=].extension[=].valueBoolean = true
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Modification d'une BAL MSSanté (ORG ou APP) rattachée à une structure via PATCH FHIRPath sur l'élément telecom ciblé par son adresse. Supporte le conditional PATCH via le paramètre `identifier` (`idnatstruct`, ex. FINESS géographique) : `PATCH [base]/Organization?identifier=<system>|<idnatstruct>`."

* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].documentation = "Identifiant national de structure (`idnatstruct`). Utilisé comme critère de conditional PATCH."

// ################
// # Practitioner #
// ################

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = Canonical(as-practitioner)
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-CapabilityStatement.rest.resource.conditionalPatch"
* rest.resource[=].extension[=].valueBoolean = true
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Modification d'une BAL MSSanté de type PER (rattachée à l'identifiant RPPS seul) ou CAB via PATCH FHIRPath sur l'élément telecom ciblé par son adresse. Supporte le conditional PATCH via le paramètre `identifier` (`idnatps`, ex. RPPS) : `PATCH [base]/Practitioner?identifier=<system>|<idnatps>`."

* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-identifier"
* rest.resource[=].searchParam[=].documentation = "Identifiant national du professionnel de santé (`idnatps`). Utilisé comme critère de conditional PATCH."

// ####################
// # PractitionerRole #
// ####################

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical(as-practitionerrole)
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-CapabilityStatement.rest.resource.conditionalPatch"
* rest.resource[=].extension[=].valueBoolean = true
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Modification d'une BAL MSSanté de type PER (rattachée à un RPPS + structure d'exercice) via PATCH FHIRPath sur l'élément telecom ciblé par son adresse. Supporte le conditional PATCH via le paramètre `identifier` (`idSituationExercice`) : `PATCH [base]/PractitionerRole?identifier=<system>|<idSituationExercice>`."

* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier"
* rest.resource[=].searchParam[=].documentation = "Identifiant de la situation d'exercice (`idSituationExercice`). Utilisé comme critère de conditional PATCH."
