# AS Organization Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Organization Profile**

## Resource Profile: AS Organization Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsOrganizationProfile |

 
Profil générique créé à partir de FrOrganization dans le contexte de l’Annuaire Santé pour décrire les établissements sanitaires, sociaux et médico-sociaux immatriculés dans le FIchier National des Etablissements Sanitaires et Sociaux (FINESS) ou dans le Répertoire Partagé des Professionnels de Santé (RPPS). 

**Usages:**

* Derived from this Profile: [AS Donnée Publique Organization Profile](StructureDefinition-as-dp-organization.md) and [AS Donnée Restreinte Organization Profile](StructureDefinition-as-dr-organization.md)
* Refer to this Profile: [AS Device Profile](StructureDefinition-as-device.md), [AS HealthcareService HealthCare Activity Profile](StructureDefinition-as-healthcareservice-healthcare-activity.md), [AS HealthcareService Social Equipment Profile](StructureDefinition-as-healthcareservice-social-equipment.md), [AS Organization Profile](StructureDefinition-as-organization.md)...Show 2 more,[AS Practitioner Profile](StructureDefinition-as-practitioner.md)and[AS PractitionerRole Profile](StructureDefinition-as-practitionerrole.md)
* Examples for this Profile: [Hôpital fictif](Organization-example-organization-fictive.md) and [CHRU NANCY - HOPITAUX DE BRABOIS](Organization-example-organization-nancy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-organization.csv), [Excel](StructureDefinition-as-organization.xlsx), [Schematron](StructureDefinition-as-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-organization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization",
  "version" : "1.1.0",
  "name" : "AsOrganizationProfile",
  "title" : "AS Organization Profile",
  "status" : "active",
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
  "description" : "Profil générique créé à partir de FrOrganization dans le contexte de l'Annuaire Santé pour décrire les établissements sanitaires, sociaux et médico-sociaux immatriculés dans le FIchier National des Etablissements Sanitaires et Sociaux (FINESS) ou dans le Répertoire Partagé des Professionnels de Santé (RPPS).",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "as-organization-to-mos-ej",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsOrganization to MOS - EJ"
    },
    {
      "identity" : "as-organization-to-mos-eg",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsOrganization to MOS - EG"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique"
          }
        ]
      },
      {
        "id" : "Organization.extension:usePeriod",
        "path" : "Organization.extension",
        "sliceName" : "usePeriod"
      },
      {
        "id" : "Organization.extension:usePeriod.value[x].start",
        "path" : "Organization.extension.value[x].start",
        "short" : "Date d'ouverture de la structure.",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.dateCreation"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.dateOuverture"
          }
        ]
      },
      {
        "id" : "Organization.extension:usePeriod.value[x].end",
        "path" : "Organization.extension.value[x].end",
        "short" : "Date de fermeture de la structure.",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.dateFermeture"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.dateFermeture"
          }
        ]
      },
      {
        "id" : "Organization.extension:as-ext-digital-certificate",
        "path" : "Organization.extension",
        "sliceName" : "as-ext-digital-certificate",
        "short" : "[DR] : certificat. Données descriptives du moyen d’identification par certificat.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-digital-certificate"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:as-ext-organization-pharmacy-licence",
        "path" : "Organization.extension",
        "sliceName" : "as-ext-organization-pharmacy-licence",
        "short" : "Numéro de la licence d'exploitation d’une officine (Synonyme : numeroLicence).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-pharmacy-licence"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.numeroLicenceOfficine"
          }
        ]
      },
      {
        "id" : "Organization.extension:as-ext-organization-pricing-model",
        "path" : "Organization.extension",
        "sliceName" : "as-ext-organization-pricing-model",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-pricing-model"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.modeFixationTarifaire"
          }
        ]
      },
      {
        "id" : "Organization.extension:as-ext-organization-closing-type",
        "path" : "Organization.extension",
        "sliceName" : "as-ext-organization-closing-type",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-closing-type"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.typeFermeture"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.typeFermeture"
          }
        ]
      },
      {
        "id" : "Organization.extension:as-ext-organization-budget-type",
        "path" : "Organization.extension",
        "sliceName" : "as-ext-organization-budget-type",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-budget-type"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.natureEtablissement"
          }
        ]
      },
      {
        "id" : "Organization.extension:as-ext-organization-authorization-deadline",
        "path" : "Organization.extension",
        "sliceName" : "as-ext-organization-authorization-deadline",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-authorization-deadline"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.dateAutorisation"
          }
        ]
      },
      {
        "id" : "Organization.identifier:idNatSt",
        "path" : "Organization.identifier",
        "sliceName" : "idNatSt",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.idNat_struct"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.idNat_struct"
          }
        ]
      },
      {
        "id" : "Organization.identifier:siren",
        "path" : "Organization.identifier",
        "sliceName" : "siren",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.numSiren"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.numSiren"
          }
        ]
      },
      {
        "id" : "Organization.identifier:siret",
        "path" : "Organization.identifier",
        "sliceName" : "siret",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.numSiret"
          }
        ]
      },
      {
        "id" : "Organization.identifier:finess",
        "path" : "Organization.identifier",
        "sliceName" : "finess",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.numFiness"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.numFiness"
          }
        ]
      },
      {
        "id" : "Organization.identifier:adeliRang",
        "path" : "Organization.identifier",
        "sliceName" : "adeliRang",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteGeographique.identifiantEJ"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.identifiantEG"
          }
        ]
      },
      {
        "id" : "Organization.identifier:rppsRang",
        "path" : "Organization.identifier",
        "sliceName" : "rppsRang",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteGeographique.identifiantEJ"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.identifiantEG"
          }
        ]
      },
      {
        "id" : "Organization.active",
        "path" : "Organization.active",
        "short" : "La ressource est-elle active ? (active | inactive). true par défaut; false pour les structures supprimées.",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.actof"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.actif"
          }
        ]
      },
      {
        "id" : "Organization.type:organizationType",
        "path" : "Organization.type",
        "sliceName" : "organizationType",
        "short" : "Type de structure \r\nEntité Juridique : LEGAL-ENTITY; \r\nEntité Géographique : GEOGRAPHICAL-ENTITY"
      },
      {
        "id" : "Organization.type:organizationType.extension",
        "path" : "Organization.type.extension",
        "min" : 1
      },
      {
        "id" : "Organization.type:organizationType.extension:as-ext-organization-types",
        "path" : "Organization.type.extension",
        "sliceName" : "as-ext-organization-types",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types"
            ]
          }
        ]
      },
      {
        "id" : "Organization.type:organizationType.extension:as-ext-organization-types.value[x]",
        "path" : "Organization.type.extension.value[x]",
        "patternCode" : "organizationType"
      },
      {
        "id" : "Organization.type:secteurActiviteRASS",
        "path" : "Organization.type",
        "sliceName" : "secteurActiviteRASS",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.secteurActivite"
          }
        ]
      },
      {
        "id" : "Organization.type:secteurActiviteRASS.extension",
        "path" : "Organization.type.extension",
        "min" : 1
      },
      {
        "id" : "Organization.type:secteurActiviteRASS.extension:as-ext-organization-types",
        "path" : "Organization.type.extension",
        "sliceName" : "as-ext-organization-types",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types"
            ]
          }
        ]
      },
      {
        "id" : "Organization.type:secteurActiviteRASS.extension:as-ext-organization-types.value[x]",
        "path" : "Organization.type.extension.value[x]",
        "patternCode" : "secteurActiviteRASS"
      },
      {
        "id" : "Organization.type:categorieEtablissementRASS",
        "path" : "Organization.type",
        "sliceName" : "categorieEtablissementRASS",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.categorieEtablissement"
          }
        ]
      },
      {
        "id" : "Organization.type:activiteINSEE",
        "path" : "Organization.type",
        "sliceName" : "activiteINSEE",
        "short" : "Toute entité juridique et chacun de ses établissements (EG) se voit attribuer par l'Insee, lors de son inscription au répertoire SIRENE, un code caractérisant son activité principale par référence à la nomenclature d'activités française (NAF rév. 2).\r\nPlus précisément, on distingue le code APET pour les EG (Synonyme : codeAPEN).",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J99-InseeNAFrav2Niveau5-RASS/FHIR/JDV-J99-InseeNAFrav2Niveau5-RASS"
        },
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.codeAPEN"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.codeAPET"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.codeAPET"
          }
        ]
      },
      {
        "id" : "Organization.type:activiteINSEE.extension",
        "path" : "Organization.type.extension",
        "min" : 1
      },
      {
        "id" : "Organization.type:activiteINSEE.extension:as-ext-organization-types",
        "path" : "Organization.type.extension",
        "sliceName" : "as-ext-organization-types",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types"
            ]
          }
        ]
      },
      {
        "id" : "Organization.type:activiteINSEE.extension:as-ext-organization-types.value[x]",
        "path" : "Organization.type.extension.value[x]",
        "patternCode" : "activiteINSEE"
      },
      {
        "id" : "Organization.type:statutJuridiqueINSEE",
        "path" : "Organization.type",
        "sliceName" : "statutJuridiqueINSEE",
        "short" : "Statut juridique FINESS qui caractérise la situation juridique de la personne morale (Synonyme : statutJuridiqueINSEE).",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J100-FinessStatutJuridique-RASS/FHIR/JDV-J100-FinessStatutJuridique-RASS"
        },
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.statutJuridique"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.statutJuridique"
          }
        ]
      },
      {
        "id" : "Organization.type:statutJuridiqueINSEE.extension",
        "path" : "Organization.type.extension",
        "min" : 1
      },
      {
        "id" : "Organization.type:statutJuridiqueINSEE.extension:as-ext-organization-types",
        "path" : "Organization.type.extension",
        "sliceName" : "as-ext-organization-types",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types"
            ]
          }
        ]
      },
      {
        "id" : "Organization.type:statutJuridiqueINSEE.extension:as-ext-organization-types.value[x]",
        "path" : "Organization.type.extension.value[x]",
        "patternCode" : "statutJuridiqueINSEE"
      },
      {
        "id" : "Organization.type:sphParticipation",
        "path" : "Organization.type",
        "sliceName" : "sphParticipation",
        "short" : "Modalités de participation au service public hospitalier (Synonyme : modaliteParticipationSPH).",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J162-ESPIC-RASS/FHIR/JDV-J162-ESPIC-RASS"
        },
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.modaliteParticipationSPH"
          }
        ]
      },
      {
        "id" : "Organization.type:sphParticipation.extension",
        "path" : "Organization.type.extension",
        "min" : 1
      },
      {
        "id" : "Organization.type:sphParticipation.extension:as-ext-organization-types",
        "path" : "Organization.type.extension",
        "sliceName" : "as-ext-organization-types",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types"
            ]
          }
        ]
      },
      {
        "id" : "Organization.type:sphParticipation.extension:as-ext-organization-types.value[x]",
        "path" : "Organization.type.extension.value[x]",
        "patternCode" : "sphParticipation"
      },
      {
        "id" : "Organization.type:typeEtablissement",
        "path" : "Organization.type",
        "sliceName" : "typeEtablissement",
        "short" : "Le type d’établissement détermine si c'est un établissement principal ou secondaire.",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/ValueSet/as-vs-type-etablissement"
        },
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.typeEtablissement"
          }
        ]
      },
      {
        "id" : "Organization.type:typeEtablissement.extension",
        "path" : "Organization.type.extension",
        "min" : 1
      },
      {
        "id" : "Organization.type:typeEtablissement.extension:as-ext-organization-types",
        "path" : "Organization.type.extension",
        "sliceName" : "as-ext-organization-types",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types"
            ]
          }
        ]
      },
      {
        "id" : "Organization.type:typeEtablissement.extension:as-ext-organization-types.value[x]",
        "path" : "Organization.type.extension.value[x]",
        "patternCode" : "typeEtablissement"
      },
      {
        "id" : "Organization.name",
        "path" : "Organization.name",
        "short" : "Raison sociale de la structure (Synonyme : raisonSociale, dénomination).",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.raisonSociale"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.denominationEG"
          }
        ]
      },
      {
        "id" : "Organization.alias",
        "path" : "Organization.alias",
        "short" : "Enseigne commerciale de la structure (Synonyme : complementRaisonSociale).",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.raisonSocialeLongue"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.denominationEGLongue"
          }
        ]
      },
      {
        "id" : "Organization.telecom",
        "path" : "Organization.telecom",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            },
            {
              "type" : "exists",
              "path" : "extension('https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type')"
            }
          ],
          "rules" : "open"
        },
        "short" : "Différentes instances pour les téléphones, la télécopie et l’adresse mail.",
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.telecommunication"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.telecommunication"
          }
        ]
      },
      {
        "id" : "Organization.telecom.use",
        "path" : "Organization.telecom.use",
        "comment" : "« old » si les coordonnées de structure ont une date de fin"
      },
      {
        "id" : "Organization.telecom:mailbox-mss",
        "path" : "Organization.telecom",
        "sliceName" : "mailbox-mss",
        "short" : "Les BALs MSS de type ORG ou APP rattachées à une personne morale responsable de l’accès et de l’usage de la BAL (boiteLettreMSS).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-mailbox-mss"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.boiteLettreMSS"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteJuridique.boiteLettreMSS"
          }
        ]
      },
      {
        "id" : "Organization.address",
        "path" : "Organization.address",
        "short" : "adresseEJ : Adresse géopostale de l'entité juridique ou adresseEG : Adresse(s) géopostale(s) de l'entité géographique.",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-address-extended"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-ej",
            "map" : "EntiteJuridique.adresseEJ"
          },
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.adresseEG"
          }
        ]
      },
      {
        "id" : "Organization.partOf",
        "path" : "Organization.partOf",
        "short" : "Référence vers la structure de rattachement (lien EG/ EJ). Chaque entité geographique et ratachée à une entité juridique. C'est l'id de la ressource de l'entité juridique à laquelle est ratachée la structure qui est remontée dans l'element de référence partOf de l'entité géographique.",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-organization-to-mos-eg",
            "map" : "EntiteGeographique.EntiteJuridique"
          }
        ]
      }
    ]
  }
}

```
