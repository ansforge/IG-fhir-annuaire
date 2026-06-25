# AS Person Profile - Annuaire Santé v1.2.0-snapshot-2

## Resource Profile: AS Person Profile 

 
Profil générique créé à partir de Person dans le contexte de l'Annuaire Santé pour décrire les informations relatives à la Personne Physique (données restreintes). 

**Usages:**

* Derived from this Profile: [AS Donnée Restreinte Person Profile](StructureDefinition-as-dr-person.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.annuaire|current/StructureDefinition/StructureDefinition-as-person.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-person.csv), [Excel](../StructureDefinition-as-person.xlsx), [Schematron](../StructureDefinition-as-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-person",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-person",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsPersonProfile",
  "title" : "AS Person Profile",
  "status" : "draft",
  "date" : "2026-06-25T10:32:33+00:00",
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
  "description" : "Profil générique créé à partir de Person dans le contexte de l'Annuaire Santé pour décrire les informations relatives à la Personne Physique (données restreintes).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-person-to-mos-personne-physique",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPersonProfile to MOS - PersonnePhysique"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Person",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Person|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Person",
      "path" : "Person",
      "mapping" : [{
        "identity" : "as-person-to-mos-personne-physique",
        "map" : "PersonnePhysique"
      }]
    },
    {
      "id" : "Person.extension",
      "path" : "Person.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Person.extension:as-ext-person-birth-place",
      "path" : "Person.extension",
      "sliceName" : "as-ext-person-birth-place",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-person-birth-place|1.2.0-snapshot-2"]
      }],
      "mapping" : [{
        "identity" : "as-person-to-mos-personne-physique",
        "map" : "PersonnePhysique.lieuNaissance"
      }]
    },
    {
      "id" : "Person.extension:as-ext-person-deceased-date-time",
      "path" : "Person.extension",
      "sliceName" : "as-ext-person-deceased-date-time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Person.deceasedDateTime|1.2.0-snapshot-2"]
      }],
      "mapping" : [{
        "identity" : "as-person-to-mos-personne-physique",
        "map" : "PersonnePhysique.dateDeces"
      }]
    },
    {
      "id" : "Person.name",
      "path" : "Person.name",
      "short" : "Nom issu de l’état-civil.",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name|2.2.0"]
      }]
    },
    {
      "id" : "Person.name.family",
      "path" : "Person.name.family",
      "short" : "Le nom civil (également nommé nom de naissance ou nom de famille).",
      "mapping" : [{
        "identity" : "as-person-to-mos-personne-physique",
        "map" : "PersonnePhysique.nomFamille"
      }]
    },
    {
      "id" : "Person.name.given",
      "path" : "Person.name.given",
      "short" : "Prénom(s) civil(s) déclarés à la naissance du professionnel.",
      "mapping" : [{
        "identity" : "as-person-to-mos-personne-physique",
        "map" : "PersonnePhysique.prenom"
      }]
    },
    {
      "id" : "Person.name.prefix",
      "path" : "Person.name.prefix",
      "short" : "Civilité du professionnel (civilite).",
      "mapping" : [{
        "identity" : "as-person-to-mos-personne-physique",
        "map" : "PersonnePhysique.civilite"
      }]
    },
    {
      "id" : "Person.telecom",
      "path" : "Person.telecom",
      "short" : "Différentes instances pour les téléphones, la télécopie et l’adresse mail.",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0"]
      }]
    },
    {
      "id" : "Person.telecom.extension:emailType",
      "path" : "Person.telecom.extension",
      "sliceName" : "emailType",
      "max" : "0"
    },
    {
      "id" : "Person.telecom.system",
      "path" : "Person.telecom.system",
      "short" : "« phone » pour Téléphone et Téléphone 2 ; « fax » pour Télécopie ; « email » pour adresse e-mail"
    },
    {
      "id" : "Person.telecom.use",
      "path" : "Person.telecom.use",
      "comment" : "« old » si les coordonnées de correspondance ont une date de fin"
    },
    {
      "id" : "Person.gender",
      "path" : "Person.gender",
      "short" : "Sexe administratif du professionnel, au sens de l'état civil, masculin ou féminin (MOS : sexeAdministratif).",
      "mapping" : [{
        "identity" : "as-person-to-mos-personne-physique",
        "map" : "PersonnePhysique.sexeAdministratif"
      }]
    },
    {
      "id" : "Person.birthDate",
      "path" : "Person.birthDate",
      "short" : "Date de naissance du professionnel, modifiée selon les règles du RNIV dans le cas des dates exceptionnelles (MOS : dateNaissance).",
      "mapping" : [{
        "identity" : "as-person-to-mos-personne-physique",
        "map" : "PersonnePhysique.dateNaissance"
      }]
    },
    {
      "id" : "Person.active",
      "path" : "Person.active",
      "short" : "La ressource est-elle active? active | inactive. true  par défaut; false pour les professionnels supprimés"
    },
    {
      "id" : "Person.link",
      "path" : "Person.link",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "target"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Person.link:as-practitioner-exercice-professionnel",
      "path" : "Person.link",
      "sliceName" : "as-practitioner-exercice-professionnel",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Person.link:as-practitioner-exercice-professionnel.target",
      "path" : "Person.link.target",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.2.0-snapshot-2"]
      }]
    }]
  }
}

```
