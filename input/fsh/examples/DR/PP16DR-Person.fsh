Instance: pp16dr-person
InstanceOf: as-dr-person
Usage: #example
* name[+]
  * prefix = "M"
  * use = #official 
  * family = "CHATELIER"
  * given[+] = "David"

  // Nationalité
* extension[as-ext-person-nationality]
  * extension[+]
    * url = "code"
    * valueCodeableConcept
      * coding[+]
        * system = "https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R20-Pays"
        * code = #99100

// Lieu de naissance
* extension[as-ext-person-birth-place]
  * valueAddress
    * text = "COSNE-COURS-SUR-LOIRE"
    * country = "99100"
    * extension[inseeCode]
      * valueCoding 
        * system = "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune"
        * code = #58086


* link[as-practitioner-exercice-professionnel].target = Reference(pp16dp-practitioner)