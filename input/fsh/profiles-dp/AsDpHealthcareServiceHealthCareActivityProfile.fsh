Profile: AsDpHealthcareServiceHealthCareActivityProfile
Parent: as-healthcareservice-healthcare-activity
Id: as-dp-healthcareservice-healthcare-activity
Title: "AS Donnée Publique HealthcareService HealthCare Activity Profile"
Description: "Profil applicatif créé à partir du profil générique as-healthcareservice-healthcare-activity dans le contexte des données en accès libre de l'Annuaire Santé."

* active 1..1 // true par défaut; false pour  flaguer les activités de soins supprimées entre deux dates pour permettre aux utilisateurs du delta d'identifier les ressources supprimées. 
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