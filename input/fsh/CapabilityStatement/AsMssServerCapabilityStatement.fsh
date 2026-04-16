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
- **PATCH FHIRPath** : ajout, modification ou suppression d'un élément `telecom[mailbox-mss]` sur la ressource porteuse identifiée au préalable par son ID (obtenu via un GET sur l'API FHIR Annuaire Santé).

La sémantique du PATCH suit la spécification [FHIR Patch](https://hl7.org/fhir/R4/http.html#patch) au format `application/fhir+json`."""

* rest.mode = #server

// ################
// # Organization #
// ################

* rest.resource[0].type = #Organization
* rest.resource[=].profile = Canonical(as-mss-organization)
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Modification d'une BAL MSSanté (ORG ou APP) rattachée à une structure via PATCH FHIRPath sur l'élément telecom ciblé par son adresse."

// ################
// # Practitioner #
// ################

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = Canonical(as-mss-practitioner)
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Modification d'une BAL MSSanté de type PER (rattachée à l'identifiant RPPS seul) ou CAB via PATCH FHIRPath sur l'élément telecom ciblé par son adresse."

// ####################
// # PractitionerRole #
// ####################

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical(as-mss-practitionerrole)
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Modification d'une BAL MSSanté de type PER (rattachée à un RPPS + structure d'exercice) via PATCH FHIRPath sur l'élément telecom ciblé par son adresse."
