# AS ValueSet type Etablissement - Annuaire Santé v1.2.0-snapshot-2

## ValueSet: AS ValueSet type Etablissement 

 
ValueSet définissant les types d'établissement. 

 **References** 

* [AS Organization Profile](StructureDefinition-as-organization.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "as-vs-type-etablissement",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/ValueSet/as-vs-type-etablissement",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsVsTypeEtablissement",
  "title" : "AS ValueSet type Etablissement",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-27T10:35:23+00:00",
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
  "description" : "ValueSet définissant les types d'établissement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-type-etablissement",
      "version" : "1.2.0-snapshot-2"
    }]
  }
}

```
