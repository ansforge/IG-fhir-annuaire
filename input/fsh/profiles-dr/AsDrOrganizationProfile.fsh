Profile: AsDrOrganizationProfile
Parent: as-organization
Id: as-dr-organization
Title: "AS Donnée Restreinte Organization Profile"
Description: "Profil restreint créé à partir de as-organization  dans le contexte des données en accès restreint de l’Annuaire Santé."

* meta.profile contains as-dr-canonical 1..1
* meta.profile[as-dr-canonical] = Canonical(as-dr-organization)
* meta.profile[fr-canonical] 1..1

* extension[as-ext-digital-certificate].extension[domain] ..1 // Cardinalité : 0..0 pour les personnes physiques ; 0..1 pour les structures