Profile: AsLocationProfile
Parent: Location
Id: as-location
Title: "AS Location Profile"
Description: "Profil cgénérique réé à partir de Location dans le contexte de l'Annuaire Santé pour prise en compte de l'adresse du professionnel au niveau du profil AsPractitionerRoleProfile."
* address only AsAddressExtendedProfile

// Data trace
* meta.extension ^slicing.discriminator.type = #value
* meta.extension ^slicing.discriminator.path = "url"
* meta.extension ^slicing.rules = #open
* meta.extension contains as-ext-data-trace named as-ext-data-trace 0..1 MS
