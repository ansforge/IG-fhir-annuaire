# AS ValueSet OrganizationTypes - Annuaire Santé v1.2.0-snapshot-2

## ValueSet: AS ValueSet OrganizationTypes 

 
ValueSet définissant les types d'organisation 

 **References** 

* [AS Organization Types](StructureDefinition-as-ext-organization-types.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "as-vs-organization-types",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/ValueSet/as-vs-organization-types",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsVsOrganizationTypes",
  "title" : "AS ValueSet OrganizationTypes",
  "status" : "draft",
  "date" : "2026-06-25T12:09:26+00:00",
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
  "description" : "ValueSet définissant les types d'organisation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-organization-types",
      "version" : "1.2.0-snapshot-2"
    }]
  }
}

```
