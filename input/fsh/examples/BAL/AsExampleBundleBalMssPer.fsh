// ============================================================
// Bundles de démonstration — Réponses à une recherche BAL PER
// ============================================================

// -----------------------------------------------
// Bundle 1 — Réponse complète (sans _elements)
// -----------------------------------------------
Instance: as-bundle-bal-per-full
InstanceOf: Bundle
Usage: #example
Title: "Bundle searchset BAL PER — réponse complète"
Description: "Exemple de Bundle de type searchset retourné en réponse à : GET [base]?_type=Practitioner,PractitionerRole&mailbox-mss-type=...PER. Contient l'intégralité des données des ressources."

* type = #searchset
* total = 2

* link[+].relation = "self"
* link[=].url = "[base]?_type=Practitioner,PractitionerRole&mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER"

* entry[+].fullUrl = "https://gateway.api.esante.gouv.fr/fhir/v1/Practitioner/as-practitioner-bal-per-dupont"
* entry[=].resource = as-practitioner-bal-per-dupont
* entry[=].search.mode = #match

* entry[+].fullUrl = "https://gateway.api.esante.gouv.fr/fhir/v1/Practitioner/as-practitioner-bal-per-martin"
* entry[=].resource = as-practitioner-bal-per-martin
* entry[=].search.mode = #match


// -----------------------------------------------
// Bundle 2 — Réponse restreinte (_elements=identifier,telecom)
// -----------------------------------------------
Instance: as-bundle-bal-per-elements
InstanceOf: Bundle
Usage: #example
Title: "Bundle searchset BAL PER — réponse restreinte (_elements)"
Description: "Exemple de Bundle de type searchset retourné en réponse à : GET [base]?_type=Practitioner,PractitionerRole&mailbox-mss-type=...PER&_elements=identifier,telecom. Seuls identifier et telecom sont présents dans chaque ressource (meta.tag SUBSETTED ajouté par le serveur)."

* type = #searchset
* total = 2

* link[+].relation = "self"
* link[=].url = "[base]?_type=Practitioner,PractitionerRole&mailbox-mss-type=https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie|PER&_elements=identifier,telecom"

* entry[+].fullUrl = "https://gateway.api.esante.gouv.fr/fhir/v1/Practitioner/as-practitioner-bal-per-dupont-elements"
* entry[=].resource = as-practitioner-bal-per-dupont-elements
* entry[=].search.mode = #match

* entry[+].fullUrl = "https://gateway.api.esante.gouv.fr/fhir/v1/Practitioner/as-practitioner-bal-per-martin-elements"
* entry[=].resource = as-practitioner-bal-per-martin-elements
* entry[=].search.mode = #match
