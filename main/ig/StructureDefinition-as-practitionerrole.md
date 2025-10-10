# AS PractitionerRole Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS PractitionerRole Profile**

## Resource Profile: AS PractitionerRole Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsPractitionerRoleProfile |

 
Profil générique créé à partir de FrPractitionerRoleExercice dans le contexte de l’Annuaire Santé pour décrire la situation d’exercice du professionnel. 

**Usages:**

* Derived from this Profile: [AS Donnée Publique PractitionerRole Profile](StructureDefinition-as-dp-practitionerrole.md) and [AS Donnée Restreinte PractitionerRole Profile](StructureDefinition-as-dr-practitionerrole.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-practitionerrole)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-practitionerrole.csv), [Excel](StructureDefinition-as-practitionerrole.xlsx), [Schematron](StructureDefinition-as-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-practitionerrole",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole",
  "version" : "1.1.0",
  "name" : "AsPractitionerRoleProfile",
  "title" : "AS PractitionerRole Profile",
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
  "description" : "Profil générique créé à partir de FrPractitionerRoleExercice dans le contexte de l'Annuaire Santé pour décrire la situation d'exercice du professionnel.",
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
      "identity" : "as-practitioner-role-to-mos-situation-exercice",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerRoleProfile to MOS - SituationExercice"
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
  "type" : "PractitionerRole",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole",
        "path" : "PractitionerRole",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice"
          }
        ]
      },
      {
        "id" : "PractitionerRole.extension:as-ext-practitionerrole-contracted",
        "path" : "PractitionerRole.extension",
        "sliceName" : "as-ext-practitionerrole-contracted",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-contracted"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.extension:as-ext-practitionerrole-hascas",
        "path" : "PractitionerRole.extension",
        "sliceName" : "as-ext-practitionerrole-hascas",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-hascas"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.extension:as-ext-practitionerrole-vitale-accepted",
        "path" : "PractitionerRole.extension",
        "sliceName" : "as-ext-practitionerrole-vitale-accepted",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-vitale-accepted"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.identifier",
        "path" : "PractitionerRole.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "description" : "Slice based on the identifier.system value",
          "rules" : "open"
        }
      },
      {
        "id" : "PractitionerRole.identifier:idSituationExercice",
        "path" : "PractitionerRole.identifier",
        "sliceName" : "idSituationExercice",
        "short" : "Identifiant d'activité propre au RPPS",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "PractitionerRole.identifier:idSituationExercice.system",
        "path" : "PractitionerRole.identifier.system",
        "min" : 1,
        "patternUri" : "https://rpps.esante.gouv.fr"
      },
      {
        "id" : "PractitionerRole.active",
        "path" : "PractitionerRole.active",
        "short" : "La situation d'exercice est-elle active? (active | inactive)\r\ntrue par défaut; false pour les situations d’exercices supprimées"
      },
      {
        "id" : "PractitionerRole.period",
        "path" : "PractitionerRole.period",
        "short" : "Période d'activité de la situation d'exercice."
      },
      {
        "id" : "PractitionerRole.period.start",
        "path" : "PractitionerRole.period.start",
        "short" : "[Donnée restreinte] : Date de début de l’activité correspondant à la date d’installation en cabinet ou à la date d’embauche du salarié (dateDebutActivite).",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.dateDebutActivite"
          }
        ]
      },
      {
        "id" : "PractitionerRole.period.end",
        "path" : "PractitionerRole.period.end",
        "short" : "[Donnée restreinte] : Date de fin de l’activité (dateFinActivite).",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.dateFinActivite"
          }
        ]
      },
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "short" : "Référence permettant de lier l’exercice professionnel et la situation d'exercice à un professionnel (Practitioner).",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.organization",
        "path" : "PractitionerRole.organization",
        "short" : "Référence vers l’EG ou EJ de rattachement de la situation d’exercice (Organization)",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.code",
        "path" : "PractitionerRole.code",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "PractitionerRole.code:genreActivite",
        "path" : "PractitionerRole.code",
        "sliceName" : "genreActivite",
        "short" : "Le genre identifiant une activité qui nécessite l’application de règles de gestion spécifiques (Synonyme: genreActivite).",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J94-GenreActivite-RASS/FHIR/JDV-J94-GenreActivite-RASS"
        },
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.genreActivite"
          }
        ]
      },
      {
        "id" : "PractitionerRole.code:modeExercice",
        "path" : "PractitionerRole.code",
        "sliceName" : "modeExercice",
        "short" : "Le mode d'exercice décrit selon quelle modalité une activité est exercée au regard de l'organisation de la rétribution du professionnel (Synonyme: modeExercice).",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J95-ModeExercice-RASS/FHIR/JDV-J95-ModeExercice-RASS"
        },
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.modeExercice"
          }
        ]
      },
      {
        "id" : "PractitionerRole.code:typeActiviteLiberale",
        "path" : "PractitionerRole.code",
        "sliceName" : "typeActiviteLiberale",
        "short" : "Type d’activité libérale, par exemple: Cabinet; Secteur privé à l'hôpital (Synonyme: typeActiviteLiberale).",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J96-TypeActiviteLiberale-RASS/FHIR/JDV-J96-TypeActiviteLiberale-RASS"
        },
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.typeActiviteLiberale"
          }
        ]
      },
      {
        "id" : "PractitionerRole.code:statutProfessionnelSSA",
        "path" : "PractitionerRole.code",
        "sliceName" : "statutProfessionnelSSA",
        "short" : "Statut du professionnel du Service de santé des armées (Synonyme: statutProfessionnelSSA).",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J97-StatutProfessionnelSSA-RASS/FHIR/JDV-J97-StatutProfessionnelSSA-RASS"
        },
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.statutPS_SSA"
          }
        ]
      },
      {
        "id" : "PractitionerRole.code:statutHospitalier",
        "path" : "PractitionerRole.code",
        "sliceName" : "statutHospitalier",
        "short" : "Statut hospitalier dans le cas d’une activité exercée en établissement public de santé (Synonyme: statutHospitalier).",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J98-StatutHospitalier-RASS/FHIR/JDV-J98-StatutHospitalier-RASS"
        },
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.statutHospitalier"
          }
        ]
      },
      {
        "id" : "PractitionerRole.code:fonction",
        "path" : "PractitionerRole.code",
        "sliceName" : "fonction",
        "short" : "role : Fonction du professionnel au sein de la structure d’exercice.",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J108-EnsembleFonction-RASS/FHIR/JDV-J108-EnsembleFonction-RASS"
        },
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.role"
          }
        ]
      },
      {
        "id" : "PractitionerRole.code:metierPharmacien",
        "path" : "PractitionerRole.code",
        "sliceName" : "metierPharmacien",
        "short" : "Section/Sous-section du tableau de l’Ordre des pharmaciens (CNOP) (sectionOrdrePharmacien/sousSectionOrdrePharmacien).",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J73-MetierPharmacien-RASS/FHIR/JDV-J73-MetierPharmacien-RASS"
        },
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.metierPharmacien"
          }
        ]
      },
      {
        "id" : "PractitionerRole.telecom",
        "path" : "PractitionerRole.telecom",
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
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.telecommunication"
          }
        ]
      },
      {
        "id" : "PractitionerRole.telecom.system",
        "path" : "PractitionerRole.telecom.system",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.telecommunication.canal"
          }
        ]
      },
      {
        "id" : "PractitionerRole.telecom.value",
        "path" : "PractitionerRole.telecom.value",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.telecommunication.adresseTelecom"
          }
        ]
      },
      {
        "id" : "PractitionerRole.telecom.use",
        "path" : "PractitionerRole.telecom.use",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.telecommunication.utilisation"
          }
        ]
      },
      {
        "id" : "PractitionerRole.telecom:mailbox-mss",
        "path" : "PractitionerRole.telecom",
        "sliceName" : "mailbox-mss",
        "short" : "BALs MSS de type PER rattachés à l'identifiant du professionnel de santé  ainsi qu'au lieu de sa situation d'exercice (BoiteLettreMSS).",
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
            "identity" : "as-practitioner-role-to-mos-situation-exercice",
            "map" : "SituationExercice.boiteLettresMSS"
          }
        ]
      }
    ]
  }
}

```
