Extension: PharmacyLicence
Id: pharmacy-licence
Description: "Numéro de licence officine"
* ^url = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/organization-pharmacyLicence"

* ^context.type = #element
* ^context.expression = "Organization"

* url = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/organization-pharmacyLicence" (exactly)
* value[x] only string