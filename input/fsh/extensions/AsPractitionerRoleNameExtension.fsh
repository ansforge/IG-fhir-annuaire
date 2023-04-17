Extension:  AsPractitionerRoleNameExtension
Id:         as-ext-practitionerrole-name
Title:      "AS PractitionerRole Name Extension"
Description: "Extension créée dans le cadre de l'Annuaire Santé pour définir l'identité d’exercice d’un professionnel."

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    family 0..1 MS and
    given 0..1 MS and
    suffix 0..1 MS
* extension[family].value[x] only string
* extension[given].value[x] only string
* extension[suffix].valueCodeableConcept from $JDV-J79-CiviliteExercice-RASS (required)
