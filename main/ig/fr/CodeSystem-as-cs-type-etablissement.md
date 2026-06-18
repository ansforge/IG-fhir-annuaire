# AS CodeSystem Type Etablissement - Annuaire Santé v1.2.0-snapshot-1

## CodeSystem: AS CodeSystem Type Etablissement 

 
CodeSystem définissant les types d'établissement. 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [AsVsTypeEtablissement](ValueSet-as-vs-type-etablissement.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "as-cs-type-etablissement",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-type-etablissement",
  "version" : "1.2.0-snapshot-1",
  "name" : "AsCsTypeEtablissement",
  "title" : "AS CodeSystem Type Etablissement",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-18T12:01:00+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    },
    {
      "system" : "email",
      "value" : "monserviceclient.annuaire@esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem définissant les types d'établissement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "P",
    "display" : "Principal",
    "definition" : "Etablissement principal"
  },
  {
    "code" : "S",
    "display" : "Secondaire",
    "definition" : "Etablissement secondaire"
  }]
}

```
