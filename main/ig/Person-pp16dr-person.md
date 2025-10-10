# pp16dr-person - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pp16dr-person**

## Example Person: pp16dr-person

Profil: [AS Donnée Restreinte Person Profile](StructureDefinition-as-dr-person.md)

**AS Person Birth Place Extension**: COSNE-COURS-SUR-LOIRE

**name**: David CHATELIER (Official)

### Links

| | |
| :--- | :--- |
| - | **Target** |
| * | [Practitioner David CHATELIER](Practitioner-3719500DP.md) |



## Resource Content

```json
{
  "resourceType" : "Person",
  "id" : "pp16dr-person",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-person"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-person-birth-place",
      "valueAddress" : {
        "extension" : [
          {
            "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
            "valueCoding" : {
              "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune",
              "code" : "58086"
            }
          }
        ],
        "text" : "COSNE-COURS-SUR-LOIRE",
        "country" : "99100"
      }
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "CHATELIER",
      "given" : ["David"],
      "prefix" : ["M"]
    }
  ],
  "link" : [
    {
      "target" : {
        "reference" : "Practitioner/3719500DP"
      }
    }
  ]
}

```
