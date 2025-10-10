# pp19dr-person - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pp19dr-person**

## Example Person: pp19dr-person

Profil: [AS Donnée Restreinte Person Profile](StructureDefinition-as-dr-person.md)

**AS Person Birth Place Extension**: NANTES

**name**: Artus Saucier (Official)

### Links

| | |
| :--- | :--- |
| - | **Target** |
| * | [Practitioner Arthur Saucier](Practitioner-334081DP.md) |



## Resource Content

```json
{
  "resourceType" : "Person",
  "id" : "pp19dr-person",
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
              "code" : "44109"
            }
          }
        ],
        "text" : "NANTES",
        "country" : "99100"
      }
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Saucier",
      "given" : ["Artus"],
      "prefix" : ["M"]
    }
  ],
  "link" : [
    {
      "target" : {
        "reference" : "Practitioner/334081DP"
      }
    }
  ]
}

```
