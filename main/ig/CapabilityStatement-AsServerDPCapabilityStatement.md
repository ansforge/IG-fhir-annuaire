# AsServerDPCapabilityStatement - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AsServerDPCapabilityStatement**

## CapabilityStatement: AsServerDPCapabilityStatement 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/CapabilityStatement/AsServerDPCapabilityStatement | *Version*:1.1.0 |
| Active as of 2025-08-11 | *Computable Name*: |

 
CapabilityStatement décrivant les attendus de l’API de l’annuaire santé. 

 [Raw OpenAPI-Swagger Definition file](AsServerDPCapabilityStatement.openapi.json) | [Download](AsServerDPCapabilityStatement.openapi.json) 

## 

* Version du guide dimplémentation : {0} 
* Version de FHIR : 4.0.1 
* Supported Formats: `json`
* Publié sur : 2025-08-11 13:49:59+0000 
* Publié par : Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris 

> **Note aux implémenteurs : capacités FHIR**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: server

### Capabilities by Resource/Profile

#### Résumé

Le tableau récapitulatif liste les ressources faisant partie de cette configuration, et pour chaque ressource, il liste :

* The relevant profiles (if any)
* Les interactions supportées par chaque ressource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**les types sont seulement présents si au moins une des ressources les prend en charge.
* Les paramètres de recherche (SearchParameters) requis, recommandés, optionnels (le cas échéant).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Organization](#Organization1-1) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-organization](StructureDefinition-as-dp-organization.md) | y | y |  |  | _id, _lastUpdated, active, address, address-city, address-line, address-postalcode, data-information-system, data-registration-authority, identifier, identifier-type, mailbox-mss, name, partof, pharmacy-licence, type | `*`,`Organization:partof` | `Device:organization`,`HealthcareService:organization`,`PractitionerRole:organization` |  |
| [Device](#Device1-2) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-device](StructureDefinition-as-dp-device.md) | y | y |  |  | _id, _lastUpdated, data-information-system, data-registration-authority, identifier, manufacturer, model, organization, status, type | `*`,`Device:organization` |  |  |
| [Practitioner](#Practitioner1-3) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitioner](StructureDefinition-as-dp-practitioner.md) | y | y |  |  | _id, _lastUpdated, active, data-information-system, data-registration-authority, family, given, identifier, identifier-type, mailbox-mss, name, number-smartcard, qualification-code, type-smartcard |  | `PractitionerRole:practitioner` |  |
| [PractitionerRole](#PractitionerRole1-4) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole](StructureDefinition-as-dp-practitionerrole.md) | y | y |  |  | _id, _lastUpdated, active, data-information-system, data-registration-authority, identifier, mailbox-mss, organization, practitioner, role | `*`,`PractitionerRole:organization`,`PractitionerRole:practitioner` |  |  |
| [HealthcareService](#HealthcareService1-5) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-healthcareservice-healthcare-activity](StructureDefinition-as-dp-healthcareservice-healthcare-activity.md) | y | y |  |  | _id, _lastUpdated, _profile, active, characteristic, data-information-system, data-registration-authority, identifier, organization, service-category, service-type | `*`,`HealthcareService:organization` |  |  |

-------

#### Resource Conformance: supported Organization

Base System Profile

[AS Donnée Publique Organization Profile](StructureDefinition-as-dp-organization.md)

Conformité au Profil

**SHALL**

Reference Policy

Résumé des interactions

* Supports `search-type`, `read`.

Paramètres de recherche


 

#### Resource Conformance: supported Device

Base System Profile

[AS Donnée Publique Device Profile](StructureDefinition-as-dp-device.md)

Conformité au Profil

**SHALL**

Reference Policy

Résumé des interactions

* Supports `search-type`, `read`.

Paramètres de recherche


 

#### Resource Conformance: supported Practitioner

Base System Profile

[AS Donnée Publique Practitioner Profile](StructureDefinition-as-dp-practitioner.md)

Conformité au Profil

**SHALL**

Reference Policy

Résumé des interactions

* Supports `search-type`, `read`.

Paramètres de recherche


 

#### Resource Conformance: supported PractitionerRole

Base System Profile

[AS Donnée Publique PractitionerRole Profile](StructureDefinition-as-dp-practitionerrole.md)

Conformité au Profil

**SHALL**

Reference Policy

Résumé des interactions

* Supports `search-type`, `read`.

Paramètres de recherche


 

#### Resource Conformance: supported HealthcareService

Base System Profile

[AS Donnée Publique HealthcareService Healthcare Activity Profile](StructureDefinition-as-dp-healthcareservice-healthcare-activity.md)

Conformité au Profil

**SHALL**

Reference Policy

Résumé des interactions

* Supports `search-type`, `read`.

Paramètres de recherche


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "AsServerDPCapabilityStatement",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/CapabilityStatement/AsServerDPCapabilityStatement",
  "version" : "1.1.0",
  "status" : "active",
  "date" : "2025-08-11T13:49:59.485+00:00",
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
  "description" : "CapabilityStatement décrivant les attendus de l'API de l'annuaire santé.",
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
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json"],
  "rest" : [
    {
      "mode" : "server",
      "resource" : [
        {
          "type" : "Organization",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-organization",
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchInclude" : ["*", "Organization:partof"],
          "searchRevInclude" : [
            "Device:organization",
            "HealthcareService:organization",
            "PractitionerRole:organization"
          ],
          "searchParam" : [
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Recherche sur l'ID de la ressource Organization."
            },
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."
            },
            {
              "name" : "active",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-active",
              "type" : "token",
              "documentation" : "Recherche que les ressources Organizations actives."
            },
            {
              "name" : "address",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-address",
              "type" : "string",
              "documentation" : "Recherche sur l'adresse de la structure."
            },
            {
              "name" : "address-city",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-address-city",
              "type" : "string",
              "documentation" : "Recherche sur la commune de la structure."
            },
            {
              "name" : "address-line",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-address-line",
              "type" : "string",
              "documentation" : "Recherche sur l'adresse."
            },
            {
              "name" : "address-postalcode",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-address-postalcode",
              "type" : "string",
              "documentation" : "Recherche sur le code postal de la structure."
            },
            {
              "name" : "data-information-system",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system",
              "type" : "token",
              "documentation" : "Recherche sur le système d'information."
            },
            {
              "name" : "data-registration-authority",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-registration-authority",
              "type" : "token",
              "documentation" : "Recherche sur l'autorité d'enregistrement."
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier",
              "type" : "token",
              "documentation" : "Recherche sur tous les identifiants de structures."
            },
            {
              "name" : "identifier-type",
              "type" : "token",
              "documentation" : "Recherche sur le type d'identifiant. Ce paramètre de recherche est voué à être remplacé par le modifier :of-type du paramètre de recherche identifier."
            },
            {
              "name" : "mailbox-mss",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-mailbox-mss",
              "type" : "string",
              "documentation" : "Recherche sur les Messageries Sécurisées de Santé (MSS) rattachées aux structures."
            },
            {
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name",
              "type" : "string",
              "documentation" : "Recherche sur la raison sociale des structures. Les modifiers supportés par ce paramètre de recherche sont contains, exact et text."
            },
            {
              "name" : "partof",
              "type" : "reference",
              "documentation" : "Recherche sur tous les établissements géographiques rattachés à une même entité juridique."
            },
            {
              "name" : "pharmacy-licence",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-pharmacy-licence",
              "type" : "string",
              "documentation" : "Recherche sur le numéro de licence des pharmacies officines."
            },
            {
              "name" : "type",
              "type" : "token",
              "documentation" : "Recherche sur le type de structure (entité juridique, entité géographique), le secteur d'activité, la catégorie d'établissement, le code APE/NAF, le statut juridique de la structure, les modalités de participation au service hospitalier et le type d'établissement (principal ou secondaire)."
            }
          ]
        },
        {
          "type" : "Device",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-device",
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchInclude" : ["*", "Device:organization"],
          "searchParam" : [
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Recherche sur l'ID de la ressource Device."
            },
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."
            },
            {
              "name" : "data-information-system",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system",
              "type" : "token",
              "documentation" : "Recherche sur le système d'information."
            },
            {
              "name" : "data-registration-authority",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-registration-authority",
              "type" : "token",
              "documentation" : "Recherche sur l'autorité d'enregistrement."
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Device-identifier",
              "type" : "token",
              "documentation" : "Recherche sur l'ID de la ressource Device."
            },
            {
              "name" : "manufacturer",
              "definition" : "http://hl7.org/fhir/SearchParameter/Device-manufacturer",
              "type" : "string",
              "documentation" : "Recherche sur la marque des équipements matériels lourds."
            },
            {
              "name" : "model",
              "definition" : "http://hl7.org/fhir/SearchParameter/Device-model",
              "type" : "string",
              "documentation" : "Recherche sur le modèle des équipements matériels lourds."
            },
            {
              "name" : "organization",
              "definition" : "http://hl7.org/fhir/SearchParameter/Device-organization",
              "type" : "reference",
              "documentation" : "Recherche sur tous les Devices liés à l'Organization indiquée."
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/Device-status",
              "type" : "token",
              "documentation" : "active | inactive | entered-in-error | unknown."
            },
            {
              "name" : "type",
              "definition" : "http://hl7.org/fhir/SearchParameter/Device-type",
              "type" : "token",
              "documentation" : "Recherche sur le type de l'équipement matériel lourd."
            }
          ]
        },
        {
          "type" : "Practitioner",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitioner",
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchRevInclude" : ["PractitionerRole:practitioner"],
          "searchParam" : [
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Recherche sur l'ID de la ressource Practitioner."
            },
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."
            },
            {
              "name" : "active",
              "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-active",
              "type" : "token",
              "documentation" : "Recherche que les ressources Practitioners actives."
            },
            {
              "name" : "data-information-system",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system",
              "type" : "token",
              "documentation" : "Recherche sur le système d'information."
            },
            {
              "name" : "data-registration-authority",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-registration-authority",
              "type" : "token",
              "documentation" : "Recherche sur l'autorité d'enregistrement."
            },
            {
              "name" : "family",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
              "type" : "string",
              "documentation" : "Recherche sur le nom d'exercice des Professionnels intervenant dans le système de Santé. Les modifiers supportés par ce paramètre de recherche sont contains, exact et text."
            },
            {
              "name" : "given",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
              "type" : "string",
              "documentation" : "Recherche sur le prénom d'exercice des Professionnels intervenant dans le système de Santé. Les modifiers supportés par ce paramètre de recherche sont contains, exact et text."
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier",
              "type" : "token",
              "documentation" : "Recherche sur tous les identifiants des activités intervenant dans le système de Santé."
            },
            {
              "name" : "identifier-type",
              "type" : "token",
              "documentation" : "Recherche sur le type d'identifiant (Identifiant National des Professionnels intervenant dans le système de Santé (INPS), RPPS, ADELI, etc.). Ce paramètre de recherche est voué à être remplacé par le modifier :of-type du paramètre de recherche identifier."
            },
            {
              "name" : "mailbox-mss",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-mailbox-mss",
              "type" : "string",
              "documentation" : "Recherche sur les Messageries Sécurisées de Santé (MSS) rattachées aux Professionnels. Les modifiers supportés par ce paramètre de recherche sont contains et exact."
            },
            {
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-name",
              "type" : "string",
              "documentation" : "Une recherche définie par le serveur qui peut correspondre à n'importe quel champ de HumanName. Ici, le préfixe correspond à la civilité des professionnels intervenant dans le système de santé. Les modifiers supportés par ce paramètre de recherche sont contains, exact et text."
            },
            {
              "name" : "number-smartcard",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-number-smartcard",
              "type" : "string",
              "documentation" : "Recherche sur le numéro de carte des Professionnels."
            },
            {
              "name" : "qualification-code",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-qualification-code",
              "type" : "token",
              "documentation" : "Recherche sur le diplôme, l'exercice professionnel et le savoir-faire."
            },
            {
              "name" : "type-smartcard",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-type-smartcard",
              "type" : "token",
              "documentation" : "Recherche sur le type de carte des Professionnels."
            }
          ]
        },
        {
          "type" : "PractitionerRole",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole",
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchInclude" : [
            "*",
            "PractitionerRole:organization",
            "PractitionerRole:practitioner"
          ],
          "searchParam" : [
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Recherche sur l'ID de la ressource PractitionerRole."
            },
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."
            },
            {
              "name" : "active",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-active",
              "type" : "token",
              "documentation" : "Recherche que les ressources PractitionerRole actives."
            },
            {
              "name" : "data-information-system",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system",
              "type" : "token",
              "documentation" : "Recherche sur le système d'information."
            },
            {
              "name" : "data-registration-authority",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-registration-authority",
              "type" : "token",
              "documentation" : "Recherche sur l'autorité d'enregistrement.\n"
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier",
              "type" : "token",
              "documentation" : "Recherche sur tous les identifiants des activités intervenant dans le système de Santé."
            },
            {
              "name" : "mailbox-mss",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-mailbox-mss",
              "type" : "string",
              "documentation" : "Recherche sur les Messageries Sécurisées de Santé (MSS) rattachées aux Practitioners."
            },
            {
              "name" : "organization",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-organization",
              "type" : "reference",
              "documentation" : "Recherche sur toutes les PractitionerRoles liées aux Organizations."
            },
            {
              "name" : "practitioner",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner",
              "type" : "reference",
              "documentation" : "Recherche sur toutes les PractitionerRoles liées aux Practitioners spécifiés."
            },
            {
              "name" : "role",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-role",
              "type" : "token",
              "documentation" : "Recherche sur la fonction, le genre d'activité, le mode d'exercice ou la section Tableau des Pharmaciens."
            }
          ]
        },
        {
          "type" : "HealthcareService",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-healthcareservice-healthcare-activity",
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchInclude" : ["*", "HealthcareService:organization"],
          "searchParam" : [
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Recherche sur l'ID de la ressource HealthcareService."
            },
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."
            },
            {
              "name" : "_profile",
              "type" : "uri",
              "documentation" : "Sélectionner le profil de la ressource HealthcareService."
            },
            {
              "name" : "active",
              "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-active",
              "type" : "token",
              "documentation" : "Recherche sur les ressources HealthcareService actives."
            },
            {
              "name" : "characteristic",
              "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-characteristic",
              "type" : "token",
              "documentation" : "Recherche sur le type d'activité des équipements sociaux ou sur la forme d'activité des activités de soins."
            },
            {
              "name" : "data-information-system",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system",
              "type" : "token",
              "documentation" : "Recherche sur le système d'information."
            },
            {
              "name" : "data-registration-authority",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-registration-authority",
              "type" : "token",
              "documentation" : "Recherche sur l'autorité d'enregistrement."
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-identifier",
              "type" : "token",
              "documentation" : "Recherche sur l'identifiant des équipements sociaux ou des activités de soins."
            },
            {
              "name" : "organization",
              "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-organization",
              "type" : "reference",
              "documentation" : "Recherche sur tous les équipements sociaux ou activités de soins rattachés à une Organization."
            },
            {
              "name" : "service-category",
              "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-service-category",
              "type" : "token",
              "documentation" : "Recherche sur la modalité des activités de soins."
            },
            {
              "name" : "service-type",
              "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type",
              "type" : "token",
              "documentation" : "Recherche sur la discipline des équipements sociaux ou sur l'activité sanitaire régulée des activités de soins."
            }
          ]
        }
      ]
    }
  ]
}

```
