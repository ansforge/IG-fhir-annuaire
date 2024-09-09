Profile: AsDpHealthcareServiceSocialEquipmentProfile
Parent: as-healthcareservice-social-equipment
Id: as-dp-healthcareservice-social-equipment
Title: "AS Donnée Publique HealthcareService Social Equipment Profile"
Description: "Profil public applicatif créé à partir du profil générique as-healthcareservice-social-equipment dans le contexte des données en accès libre de l'Annuaire Santé."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains as-dp-canonical 1..1
* meta.profile[as-dp-canonical] = Canonical(as-dp-healthcareservice-social-equipment)


* active 1..1
* identifier[numAutorisationArhgos] 0..0
* identifier ..0
* category 0..0
* specialty 0..0
* location 0..0
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