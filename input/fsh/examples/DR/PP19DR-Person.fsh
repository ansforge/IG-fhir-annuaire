Instance: pp19dr-person
InstanceOf: as-dr-person
Usage: #example
* name[+]
  * prefix = "M"
  * use = #official 
  * family = "Saucier"
  * given[+] = "Artus"

// Lieu de naissance
* extension[as-ext-person-birth-place]
  * valueAddress
    * text = "NANTES"
    * country = "99100"
    * extension[inseeCode]
      * valueCoding 
        * system = "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune"
        * code = #44109


* link[as-practitioner-exercice-professionnel].target = Reference(pp19dp-practitioner)