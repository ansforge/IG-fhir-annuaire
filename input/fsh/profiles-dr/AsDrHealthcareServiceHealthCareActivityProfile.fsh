Profile: AsDrHealthcareServiceHealthcareActivityProfile
Parent: as-healthcareservice-healthcare-activity
Id: as-dr-healthcareservice-healthcare-activity
Title: "AS Donnée Restreinte HealthcareService Healthcare Activity Profile"
Description: "Profil restreint applicatif créé à partir du profil générique as-healthcareservice-healthcare-activity dans le contexte des données en accès restreint de l'Annuaire Santé."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains as-dr-canonical 1..1
* meta.profile[as-dr-canonical] = Canonical(as-dr-healthcareservice-healthcare-activity)



* specialty 0..0
* location 0..0
* name 0..0
* comment 0..0
* extraDetails 0..0
* photo 0..0
* telecom 0..0
* coverageArea 0..0
* serviceProvisionCode 0..0
* eligibility 0..0
* program 0..0
* communication 0..0
* referralMethod 0..0
* appointmentRequired 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0