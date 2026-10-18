# AsServerDPCapabilityStatement - Annuaire Santé v1.2.0-snapshot-2

## CapabilityStatement: AsServerDPCapabilityStatement 

 
CapabilityStatement décrivant les attendus de l'API de l'annuaire santé. 

 [Fichier de définition d'OpenAPI-Swagger](../AsServerDPCapabilityStatement.openapi.json) | [Télécharger](../AsServerDPCapabilityStatement.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "AsServerDPCapabilityStatement",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/CapabilityStatement/AsServerDPCapabilityStatement",
  "version" : "1.2.0-snapshot-2",
  "status" : "active",
  "date" : "2025-08-11T13:49:59.485+00:00",
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
  "description" : "CapabilityStatement décrivant les attendus de l'API de l'annuaire santé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json"],
  "rest" : [{
    "mode" : "server",
    "resource" : [{
      "type" : "Organization",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-organization|1.2.0-snapshot-2",
      "interaction" : [{
        "code" : "search-type"
      },
      {
        "code" : "read"
      }],
      "searchInclude" : ["*", "Organization:partof"],
      "searchRevInclude" : ["Device:organization",
      "HealthcareService:organization",
      "PractitionerRole:organization"],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur l'ID de la ressource Organization."
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
        "type" : "date",
        "documentation" : "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."
      },
      {
        "name" : "active",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-active|4.0.1",
        "type" : "token",
        "documentation" : "Recherche que les ressources Organizations actives."
      },
      {
        "name" : "address",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-address|4.0.1",
        "type" : "string",
        "documentation" : "Recherche sur l'adresse de la structure."
      },
      {
        "name" : "address-city",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-address-city|4.0.1",
        "type" : "string",
        "documentation" : "Recherche sur la commune de la structure."
      },
      {
        "name" : "address-line",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-address-line|1.2.0-snapshot-2",
        "type" : "string",
        "documentation" : "Recherche sur l'adresse."
      },
      {
        "name" : "address-postalcode",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-address-postalcode|4.0.1",
        "type" : "string",
        "documentation" : "Recherche sur le code postal de la structure."
      },
      {
        "name" : "data-information-system",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system|1.2.0-snapshot-2",
        "type" : "token",
        "documentation" : "Recherche sur le système d'information."
      },
      {
        "name" : "data-registration-authority",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-registration-authority|1.2.0-snapshot-2",
        "type" : "token",
        "documentation" : "Recherche sur l'autorité d'enregistrement."
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier|4.0.1",
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
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-mailbox-mss|1.2.0-snapshot-2",
        "type" : "string",
        "documentation" : "Recherche sur les Messageries Sécurisées de Santé (MSS) rattachées aux structures."
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name|4.0.1",
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
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-pharmacy-licence|1.2.0-snapshot-2",
        "type" : "string",
        "documentation" : "Recherche sur le numéro de licence des pharmacies officines."
      },
      {
        "name" : "type",
        "type" : "token",
        "documentation" : "Recherche sur le type de structure (entité juridique, entité géographique), le secteur d'activité, la catégorie d'établissement, le code APE/NAF, le statut juridique de la structure, les modalités de participation au service hospitalier et le type d'établissement (principal ou secondaire)."
      }]
    },
    {
      "type" : "Device",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-device|1.2.0-snapshot-2",
      "interaction" : [{
        "code" : "search-type"
      },
      {
        "code" : "read"
      }],
      "searchInclude" : ["*", "Device:organization"],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur l'ID de la ressource Device."
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
        "type" : "date",
        "documentation" : "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."
      },
      {
        "name" : "data-information-system",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system|1.2.0-snapshot-2",
        "type" : "token",
        "documentation" : "Recherche sur le système d'information."
      },
      {
        "name" : "data-registration-authority",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-registration-authority|1.2.0-snapshot-2",
        "type" : "token",
        "documentation" : "Recherche sur l'autorité d'enregistrement."
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Device-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur l'ID de la ressource Device."
      },
      {
        "name" : "manufacturer",
        "definition" : "http://hl7.org/fhir/SearchParameter/Device-manufacturer|4.0.1",
        "type" : "string",
        "documentation" : "Recherche sur la marque des équipements matériels lourds."
      },
      {
        "name" : "model",
        "definition" : "http://hl7.org/fhir/SearchParameter/Device-model|4.0.1",
        "type" : "string",
        "documentation" : "Recherche sur le modèle des équipements matériels lourds."
      },
      {
        "name" : "organization",
        "definition" : "http://hl7.org/fhir/SearchParameter/Device-organization|4.0.1",
        "type" : "reference",
        "documentation" : "Recherche sur tous les Devices liés à l'Organization indiquée."
      },
      {
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/Device-status|4.0.1",
        "type" : "token",
        "documentation" : "active | inactive | entered-in-error | unknown."
      },
      {
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/Device-type|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur le type de l'équipement matériel lourd."
      }]
    },
    {
      "type" : "Practitioner",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitioner|1.2.0-snapshot-2",
      "interaction" : [{
        "code" : "search-type"
      },
      {
        "code" : "read"
      }],
      "searchRevInclude" : ["PractitionerRole:practitioner"],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur l'ID de la ressource Practitioner."
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
        "type" : "date",
        "documentation" : "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."
      },
      {
        "name" : "active",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-active|4.0.1",
        "type" : "token",
        "documentation" : "Recherche que les ressources Practitioners actives."
      },
      {
        "name" : "data-information-system",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system|1.2.0-snapshot-2",
        "type" : "token",
        "documentation" : "Recherche sur le système d'information."
      },
      {
        "name" : "data-registration-authority",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-registration-authority|1.2.0-snapshot-2",
        "type" : "token",
        "documentation" : "Recherche sur l'autorité d'enregistrement."
      },
      {
        "name" : "family",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-family|4.0.1",
        "type" : "string",
        "documentation" : "Recherche sur le nom d'exercice des Professionnels intervenant dans le système de Santé. Les modifiers supportés par ce paramètre de recherche sont contains, exact et text."
      },
      {
        "name" : "given",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-given|4.0.1",
        "type" : "string",
        "documentation" : "Recherche sur le prénom d'exercice des Professionnels intervenant dans le système de Santé. Les modifiers supportés par ce paramètre de recherche sont contains, exact et text."
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier|4.0.1",
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
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-mailbox-mss|1.2.0-snapshot-2",
        "type" : "string",
        "documentation" : "Recherche sur les Messageries Sécurisées de Santé (MSS) rattachées aux Professionnels. Les modifiers supportés par ce paramètre de recherche sont contains et exact."
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-name|4.0.1",
        "type" : "string",
        "documentation" : "Une recherche définie par le serveur qui peut correspondre à n'importe quel champ de HumanName. Ici, le préfixe correspond à la civilité des professionnels intervenant dans le système de santé. Les modifiers supportés par ce paramètre de recherche sont contains, exact et text."
      },
      {
        "name" : "number-smartcard",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-number-smartcard|1.2.0-snapshot-2",
        "type" : "string",
        "documentation" : "Recherche sur le numéro de carte des Professionnels."
      },
      {
        "name" : "qualification-code",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-qualification-code|1.2.0-snapshot-2",
        "type" : "token",
        "documentation" : "Recherche sur le diplôme, l'exercice professionnel et le savoir-faire."
      },
      {
        "name" : "type-smartcard",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-type-smartcard|1.2.0-snapshot-2",
        "type" : "token",
        "documentation" : "Recherche sur le type de carte des Professionnels."
      }]
    },
    {
      "type" : "PractitionerRole",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole|1.2.0-snapshot-2",
      "interaction" : [{
        "code" : "search-type"
      },
      {
        "code" : "read"
      }],
      "searchInclude" : ["*",
      "PractitionerRole:organization",
      "PractitionerRole:practitioner"],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur l'ID de la ressource PractitionerRole."
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
        "type" : "date",
        "documentation" : "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."
      },
      {
        "name" : "active",
        "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-active|4.0.1",
        "type" : "token",
        "documentation" : "Recherche que les ressources PractitionerRole actives."
      },
      {
        "name" : "data-information-system",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system|1.2.0-snapshot-2",
        "type" : "token",
        "documentation" : "Recherche sur le système d'information."
      },
      {
        "name" : "data-registration-authority",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-registration-authority|1.2.0-snapshot-2",
        "type" : "token",
        "documentation" : "Recherche sur l'autorité d'enregistrement.\n"
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur tous les identifiants des activités intervenant dans le système de Santé."
      },
      {
        "name" : "mailbox-mss",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-mailbox-mss|1.2.0-snapshot-2",
        "type" : "string",
        "documentation" : "Recherche sur les Messageries Sécurisées de Santé (MSS) rattachées aux Practitioners."
      },
      {
        "name" : "organization",
        "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-organization|4.0.1",
        "type" : "reference",
        "documentation" : "Recherche sur toutes les PractitionerRoles liées aux Organizations."
      },
      {
        "name" : "practitioner",
        "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner|4.0.1",
        "type" : "reference",
        "documentation" : "Recherche sur toutes les PractitionerRoles liées aux Practitioners spécifiés."
      },
      {
        "name" : "role",
        "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-role|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur la fonction, le genre d'activité, le mode d'exercice ou la section Tableau des Pharmaciens."
      }]
    },
    {
      "type" : "HealthcareService",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-healthcareservice-healthcare-activity|1.2.0-snapshot-2",
      "interaction" : [{
        "code" : "search-type"
      },
      {
        "code" : "read"
      }],
      "searchInclude" : ["*", "HealthcareService:organization"],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur l'ID de la ressource HealthcareService."
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
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
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-active|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur les ressources HealthcareService actives."
      },
      {
        "name" : "characteristic",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-characteristic|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur le type d'activité des équipements sociaux ou sur la forme d'activité des activités de soins."
      },
      {
        "name" : "data-information-system",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system|1.2.0-snapshot-2",
        "type" : "token",
        "documentation" : "Recherche sur le système d'information."
      },
      {
        "name" : "data-registration-authority",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-registration-authority|1.2.0-snapshot-2",
        "type" : "token",
        "documentation" : "Recherche sur l'autorité d'enregistrement."
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur l'identifiant des équipements sociaux ou des activités de soins."
      },
      {
        "name" : "organization",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-organization|4.0.1",
        "type" : "reference",
        "documentation" : "Recherche sur tous les équipements sociaux ou activités de soins rattachés à une Organization."
      },
      {
        "name" : "service-category",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-service-category|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur la modalité des activités de soins."
      },
      {
        "name" : "service-type",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type|4.0.1",
        "type" : "token",
        "documentation" : "Recherche sur la discipline des équipements sociaux ou sur l'activité sanitaire régulée des activités de soins."
      }]
    }]
  }]
}

```
