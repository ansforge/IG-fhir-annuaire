Extension: 		AsSupportedCapacityExtension
Id: 			as-ext-supported-capacity
Title:			"AS Supported Capacity Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour indiquer le nombre de personnes pouvant être accueillies en même temps et les capacités d'hébergement."

* ^context.type = #element
* ^context.expression = "HealthcareService"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    capacityAvailable 0..1 and                   // capaciteAutorisee
    femaleCapacityAvailable 0..1 and             // capaciteAutoriseeFemme
    maleCapacityAvailable 0..1 and               // capaciteAutoriseeHomme
    socialAssistanceCapacityAvailable 0..1 and   // capaciteAutoriseeHabiliteeAideSociale
    installedCapacity 0..1 and                   // capaciteInstallee
    femaleInstalledCapacity 0..1 and             // capaciteInstalleeFemme
    maleInstalledCapacity 0..1 and               // capaciteInstalleeHomme
    socialAssistanceInstalledCapacity 0..1       // capaciteInstalleeHabiliteeAideSociale 	

* extension[capacityAvailable].value[x] only integer
* extension[capacityAvailable] ^short = "Capacité autorisée totale en nombre de places, lits ou logements (capaciteAutorisee)."

* extension[femaleCapacityAvailable].value[x] only integer
* extension[femaleCapacityAvailable] ^short = "Capacité autorisée en nombre de places, lits ou logements réservée aux femmes (capaciteAutoriseeFemme).\r\n Cette capacité est facultative et peut être saisie si le caractère sexué des places est précisé dans la décision d’autorisation."

* extension[maleCapacityAvailable].value[x] only integer
* extension[maleCapacityAvailable] ^short = "Capacité autorisée en nombre de places, lits ou logements réservée aux hommes (MalecapacityAvailable).\r\n Cette capacité est facultative et peut être saisie si le caractère sexué des places est précisé dans la décision d’autorisation."

* extension[socialAssistanceCapacityAvailable].value[x] only integer
* extension[socialAssistanceCapacityAvailable] ^short = "Nombre de places, lits ou logements autorisés habilités aide sociale départementale (capaciteAutoriseeHabiliteeAideSociale)."

* extension[installedCapacity].value[x] only integer
* extension[installedCapacity] ^short = "Capacité installée totale en nombre de places, lits ou logements (capaciteInstallee)."

* extension[femaleInstalledCapacity].value[x] only integer
* extension[femaleInstalledCapacity] ^short = "Capacité installée en nombre de places, lits ou logements réservée aux femmes (capaciteInstalleeFemme)."

* extension[maleInstalledCapacity].value[x] only integer
* extension[maleInstalledCapacity] ^short = "Capacité installée en nombre de places, lits ou logements réservée aux hommes (capaciteInstalleeHomme)."

* extension[socialAssistanceInstalledCapacity].value[x] only integer
* extension[socialAssistanceInstalledCapacity] ^short = "Nombre de places, lits ou logements installés habilités aide sociale départementale (capaciteInstalleeHabiliteeAideSociale)."