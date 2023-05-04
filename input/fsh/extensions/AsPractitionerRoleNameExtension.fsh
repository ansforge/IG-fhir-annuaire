Extension:  AsPractitionerRoleNameExtension
Id:         as-ext-practitionerrole-name
Title:      "AS PractitionerRole Name Extension"
Description: "Extension créée dans le cadre de l'Annuaire Santé pour définir l'identité d’exercice d’un professionnel."

* ^context.type = #element
* ^context.expression = "PractitionerRole"

* value[x] only FrHumanName
* valueHumanName.family MS
* valueHumanName.given MS
* valueHumanName.suffix MS
