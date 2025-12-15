Profile: AsDpHealthcareServiceSocialEquipmentProfile
Parent: as-healthcareservice-social-equipment
Id: as-dp-healthcareservice-social-equipment
Title: "AS Donnée Publique HealthcareService Social Equipment Profile"
Description: """Profil public applicatif créé à partir du profil générique as-healthcareservice-social-equipment dans le contexte des données en accès libre de l'Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement."""

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains as-dp-canonical 1..1
* meta.profile[as-dp-canonical] = Canonical(as-dp-healthcareservice-social-equipment)

* extension[as-ext-authorization] MS
* extension[as-ext-installation] MS
* extension[as-ext-patient-type] MS
* extension[as-ext-supported-capacity] MS
* identifier MS
* type MS
* eligibility MS
* characteristic MS

* insert rs-as-core
* meta.extension[as-ext-data-trace] MS

* active 1..1

* identifier[numAutorisationArhgos] 0..0
* identifier ..0

* category 0..0
* specialty 0..0
* name 0..0
* comment 0..0
* extraDetails 0..0
* photo 0..0
* telecom 0..0
* coverageArea 0..0
* serviceProvisionCode 0..0
* eligibility.comment 0..0
* program 0..0
* communication 0..0
* referralMethod 0..0
* appointmentRequired 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0