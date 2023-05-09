Extension:  AsPractitionerRoleNameExtension
Id:         as-ext-practitionerrole-name
Title:      "AS PractitionerRole Name Extension"
Description: "Extension créée dans le cadre de l'Annuaire Santé pour définir l'identité d’exercice d’un professionnel."

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . ^short = "civiliteNomPrenomExercice"
* . ^definition = "La civilité, le nom et le prénom sous lequels exerce le professionnel."

* value[x] only FrHumanName
// nomExercice
* valueHumanName.family MS
* valueHumanName.family ^short = "nomExercice"
* valueHumanName.family ^definition = "Nom sous lequel exerce le professionnel."
//
* valueHumanName.given MS
* valueHumanName.given ^short = "prenomExercice"
* valueHumanName.given ^definition = "Prénom sous lequel exerce le professionnel."
// civiliteExercice
* valueHumanName.suffix MS
* valueHumanName.suffix ^short = "civiliteExercice"
* valueHumanName.suffix ^definition = "Civilité d’exercice du professionnel."