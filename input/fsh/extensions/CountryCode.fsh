Extension: CountryCode
Id: country-code
Description: "Code pays"
* ^url = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/address-country-code"

* ^context.type = #element
* ^context.expression = "Address"
* url = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/address-country-code" (exactly)
* value[x] only code
* valueCode from $JDV-J74-Pays-RASS (required)
* valueCode ^binding.description = "Pays (codes INSEE) du RASS; http://mos.asipsante.fr/NOS/TABS/JDV_J74-Pays-RASS.tabs"