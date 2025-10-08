Profile: AsDrOrganizationProfile
Parent: as-organization
Id: as-dr-organization
Title: "AS Donnée Restreinte Organization Profile"
Description: "Profil restreint créé à partir de as-organization  dans le contexte des données en accès restreint de l’Annuaire Santé."

* meta.profile contains as-dr-canonical 1..1
* meta.profile[as-dr-canonical] = Canonical(as-dr-organization)
* meta.profile[fr-canonical] 1..1

* meta.extension[as-ext-data-trace] MS
* identifier[idNatSt] MS 
* active MS
* name MS
* alias MS
* type MS
* address MS
* telecom MS
* endpoint MS

* extension[as-ext-digital-certificate] MS
* extension[as-ext-organization-pharmacy-licence] MS
* extension[as-ext-organization-pricing-model] MS
* extension[as-ext-organization-closing-type] MS
* extension[as-ext-organization-budget-type] MS
* extension[as-ext-organization-authorization-deadline] MS

* extension[as-ext-digital-certificate].extension[domain] ..1 // Cardinalité : 0..0 pour les personnes physiques ; 0..1 pour les structures