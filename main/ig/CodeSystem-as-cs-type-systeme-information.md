# AS CodeSystem type de système d'information - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS CodeSystem type de système d'information**

## CodeSystem: AS CodeSystem type de système d'information 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-type-systeme-information | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsCsTypeSystemeInformation |

 
CodeSystem définissant les types de systèmes d’information pouvant alimenter l’annuaire santé. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AsVsTypeSystemeInformationVS](ValueSet-as-vs-type-systeme-information.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "as-cs-type-systeme-information",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-type-systeme-information",
  "version" : "1.1.0",
  "name" : "AsCsTypeSystemeInformation",
  "title" : "AS CodeSystem type de système d'information",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-10T07:08:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [
    {
      "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        },
        {
          "system" : "email",
          "value" : "monserviceclient.annuaire@esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "CodeSystem définissant les types de systèmes d'information pouvant alimenter l'annuaire santé.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "RPPS",
      "display" : "Répertoire partagé des professionnels de santé",
      "definition" : "Répertoire partagé des professionnels de santé"
    },
    {
      "code" : "FINESS",
      "display" : "Fichier national des établissements sanitaires et sociaux",
      "definition" : "FINESS (Fichier National des Etablissements Sanitaires et Sociaux) est le répertoire national de référence des personnes morales intervenant dans les domaines sanitaire, médico-social et social et de l’enseignement des professions sanitaires et sociales."
    },
    {
      "code" : "CG",
      "display" : "CG",
      "definition" : "SI CPS"
    }
  ]
}

```
