# AS CodeSystem type de système d'information - Annuaire Santé v1.2.0-snapshot-2

## CodeSystem: AS CodeSystem type de système d'information 

 
CodeSystem définissant les types de systèmes d'information pouvant alimenter l'annuaire santé. 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [AsVsTypeSystemeInformationVS](ValueSet-as-vs-type-systeme-information.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "as-cs-type-systeme-information",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-type-systeme-information",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsCsTypeSystemeInformation",
  "title" : "AS CodeSystem type de système d'information",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-25T10:32:14+00:00",
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
  "description" : "CodeSystem définissant les types de systèmes d'information pouvant alimenter l'annuaire santé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
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
  }]
}

```
