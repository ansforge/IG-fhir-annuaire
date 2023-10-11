Extension:  AsPractitionerRoleNameExtension
Id:         as-ext-practitionerrole-name
Title:      "AS PractitionerRole Name Extension"
Description: "Extension créée dans le cadre de l'Annuaire Santé pour définir l'identité d’exercice d’un professionnel."

* ^context.type = #element
* ^context.expression = "PractitionerRole"

* . ^comment = "Concaténation des champs MOS : civilite + nomExercice + prenom"
* . ^short = "La civilité, le nom et le prénom choisis par le professionnel lors de son enregistrement auprès de son Autorité d'Enregistrement AE (Ordre, ...) pour être publié en libre accès. Ce nom est à distinguer de celui indiqué par Practitioner.name qui correspond au nom d'état civil et est une donnée personnelle uniquement disponible en accès restreint."

* value[x] only FrHumanName

// nomExercice
* valueHumanName.family MS
* valueHumanName.family ^comment = "Synonyme MOS : nomExercice"
* valueHumanName.family ^short = "Nom sous lequel exerce le professionnel."

//
* valueHumanName.given MS
* valueHumanName.given ^comment = "prenom"
* valueHumanName.given ^short = "Prénom sous lequel exerce le professionnel."

// civiliteExercice
* valueHumanName.suffix MS
* valueHumanName.suffix ^comment = "Synonyme MOS : civilite"
* valueHumanName.suffix ^short = "Civilité d’exercice du professionnel."