Profile: PractitionerRoleAmeliRASS
Parent: PractitionerRole
Id: rass-practitioner-role-ameli
* ^url = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-ameli-rass"

* meta.source = "https://annuaire.sante.fr" (exactly)
* meta.profile = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-ameli-rass" (exactly)
* meta.security ..0
* meta.tag ..0
* implicitRules ..0
* text ..0
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    PractitionerRolePartOf named partOf 0..1 and
    PractitionerRoleContracted named contracted 0..1 and
    PractitionerRoleHasCAS named hasCAS 0..1 and
    PractitionerRoleVitaleAccepted named vitaleAccepted 0..1
* identifier ..0
* period ..0
* organization ..0
* code ..0
* specialty ..0
* location ..0
* healthcareService ..0
* telecom.id ..0
* telecom.use ..0
* telecom.rank ..0
* telecom.period ..0
* availableTime.extension ^slicing.discriminator.type = #value
* availableTime.extension ^slicing.discriminator.path = "url"
* availableTime.extension ^slicing.rules = #open
* availableTime.extension ^min = 0
* availableTime.extension contains
    PractitionerRoleAppointmentRequired named appointmentRequired 0..* and
    PractitionerRoleHomeCare named homeCare 0..* and
    PractitionerRoleActivityType named activityType 0..*
* availableTime.extension[appointmentRequired] ^min = 0
* availableTime.extension[homeCare] ^min = 0
* availableTime.extension[activityType] ^min = 0
* notAvailable ..0
* availabilityExceptions ..0
* endpoint ..0