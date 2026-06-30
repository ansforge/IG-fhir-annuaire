# AS ValueSet type de système d'information - Annuaire Santé v1.2.0-snapshot-2

## ValueSet: AS ValueSet type de système d'information 

 
ValueSet définissant les types de systèmes d'information pouvant alimenter l'annuaire santé. 

 **References** 

* [AS Data Trace Extension](StructureDefinition-as-ext-data-trace.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "as-vs-type-systeme-information",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/ValueSet/as-vs-type-systeme-information",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsVsTypeSystemeInformationVS",
  "title" : "AS ValueSet type de système d'information",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-30T07:38:14+00:00",
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
  "description" : "ValueSet définissant les types de systèmes d'information pouvant alimenter l'annuaire santé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-type-systeme-information",
      "version" : "1.2.0-snapshot-2"
    }]
  }
}

```
