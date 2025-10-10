# AS Practitioner Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Practitioner Profile**

## Resource Profile: AS Practitioner Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsPractitionerProfile |

 
Profil générique créé à partir de FrPractitioner dans le contexte de l’Annuaire Santé pour décrire les données liées à l’exercice professionnel d’un professionnel (professions à ordre, professions sans ordre, professionnels à rôle). 

**Usages:**

* Derived from this Profile: [AS Donnée Publique Practitioner Profile](StructureDefinition-as-dp-practitioner.md) and [AS Donnée Restreinte Practitioner Profile](StructureDefinition-as-dr-practitioner.md)
* Refer to this Profile: [AS Person Profile](StructureDefinition-as-person.md) and [AS PractitionerRole Profile](StructureDefinition-as-practitionerrole.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-practitioner)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-practitioner.csv), [Excel](StructureDefinition-as-practitioner.xlsx), [Schematron](StructureDefinition-as-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-practitioner",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner",
  "version" : "1.1.0",
  "name" : "AsPractitionerProfile",
  "title" : "AS Practitioner Profile",
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
  "description" : "Profil générique créé à partir de FrPractitioner dans le contexte de l'Annuaire Santé pour décrire les données liées à l'exercice professionnel d'un professionnel (professions à ordre, professions sans ordre, professionnels à rôle).",
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
      "identity" : "as-practitioner-role-to-mos-savoir-faire",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - SavoirFaire"
    },
    {
      "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - ExerciceProfessionnel"
    },
    {
      "identity" : "as-practitioner-role-to-mos-inscription-ordre",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - InscriptionOrdre"
    },
    {
      "identity" : "as-practitioner-role-to-mos-diplome",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - Diplome"
    },
    {
      "identity" : "as-practitioner-role-to-mos-professionnel",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - Professionnel"
    },
    {
      "identity" : "as-practitioner-role-to-mos-autorisation-exercice",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - AutorisationExercice"
    },
    {
      "identity" : "as-practitioner-role-to-mos-carte-professionnel",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerProfile to MOS - CarteProfessionnel"
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
  "type" : "Practitioner",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner",
        "path" : "Practitioner",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-savoir-faire",
            "map" : "SavoirFaire"
          },
          {
            "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
            "map" : "ExerciceProfessionnel"
          },
          {
            "identity" : "as-practitioner-role-to-mos-inscription-ordre",
            "map" : "InscriptionOrdre"
          },
          {
            "identity" : "as-practitioner-role-to-mos-diplome",
            "map" : "Diplome"
          },
          {
            "identity" : "as-practitioner-role-to-mos-professionnel",
            "map" : "Professionnel"
          },
          {
            "identity" : "as-practitioner-role-to-mos-autorisation-exercice",
            "map" : "AutorisationExercice"
          },
          {
            "identity" : "as-practitioner-role-to-mos-carte-professionnel",
            "map" : "CarteProfessionnel"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-registration",
        "path" : "Practitioner.extension",
        "sliceName" : "as-ext-registration",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-registration"
            ]
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-registration.extension:registeringOrganization",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "registeringOrganization",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-inscription-ordre",
            "map" : "InscriptionOrdre.ordre"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-registration.extension:period",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "period"
      },
      {
        "id" : "Practitioner.extension:as-ext-registration.extension:period.value[x].start",
        "path" : "Practitioner.extension.extension.value[x].start",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-inscription-ordre",
            "map" : "InscriptionOrdre.dateDebutInscription"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-registration.extension:period.value[x].end",
        "path" : "Practitioner.extension.extension.value[x].end",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-inscription-ordre",
            "map" : "InscriptionOrdre.dateRadiation"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-registration.extension:status",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "status",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-inscription-ordre",
            "map" : "InscriptionOrdre.statutInscription"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-registration.extension:hostingDepartment",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "hostingDepartment",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-inscription-ordre",
            "map" : "InscriptionOrdre.conseilDepartemental"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-frpractitioner-authorization",
        "path" : "Practitioner.extension",
        "sliceName" : "as-ext-frpractitioner-authorization",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitioner-authorization"
            ]
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-frpractitioner-authorization.extension:type",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "type",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-autorisation-exercice",
            "map" : "AutorisationExercice.typeAutorisation"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-frpractitioner-authorization.extension:period",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "period"
      },
      {
        "id" : "Practitioner.extension:as-ext-frpractitioner-authorization.extension:period.value[x].start",
        "path" : "Practitioner.extension.extension.value[x].start",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-autorisation-exercice",
            "map" : "AutorisationExercice.dateDebutAutorisation"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-frpractitioner-authorization.extension:period.value[x].end",
        "path" : "Practitioner.extension.extension.value[x].end",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-autorisation-exercice",
            "map" : "AutorisationExercice.dateFinAutorisation"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-frpractitioner-authorization.extension:field",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "field",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-autorisation-exercice",
            "map" : "AutorisationExercice.disciplineAutorisee"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-frpractitioner-authorization.extension:profession",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "profession",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-autorisation-exercice",
            "map" : "AutorisationExercice.profession"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-smartcard",
        "path" : "Practitioner.extension",
        "sliceName" : "as-ext-smartcard",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-smartcard"
            ]
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-smartcard.extension:type",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "type",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-carte-professionnel",
            "map" : "CarteProfessionnel.typeCarte"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-smartcard.extension:number",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "number",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-carte-professionnel",
            "map" : "CarteProfessionnel.numeroCarte"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-smartcard.extension:period",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "period"
      },
      {
        "id" : "Practitioner.extension:as-ext-smartcard.extension:period.value[x].start",
        "path" : "Practitioner.extension.extension.value[x].start",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-carte-professionnel",
            "map" : "CarteProfessionnel.dateDebutValidite"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-smartcard.extension:period.value[x].end",
        "path" : "Practitioner.extension.extension.value[x].end",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-carte-professionnel",
            "map" : "CarteProfessionnel.dateFinValidite"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-smartcard.extension:oppositionDate",
        "path" : "Practitioner.extension.extension",
        "sliceName" : "oppositionDate",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-carte-professionnel",
            "map" : "CarteProfessionnel.dateOpposition"
          }
        ]
      },
      {
        "id" : "Practitioner.extension:as-ext-digital-certificate",
        "path" : "Practitioner.extension",
        "sliceName" : "as-ext-digital-certificate",
        "min" : 0,
        "max" : "*",
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
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier"
      },
      {
        "id" : "Practitioner.identifier.type",
        "path" : "Practitioner.identifier.type",
        "short" : "Type d’identifiant national de la personne physique (typeIdNat_PP),\r\nLes codes RPPS et IDNPS proviennent du system  https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203 ; Les codes 1, 3, 4, 5, 6 proviennent du system : https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"
      },
      {
        "id" : "Practitioner.identifier:idNatPs",
        "path" : "Practitioner.identifier",
        "sliceName" : "idNatPs",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-professionnel",
            "map" : "Professionnel.idNat_PS"
          }
        ]
      },
      {
        "id" : "Practitioner.identifier:idNatPs.type",
        "path" : "Practitioner.identifier.type",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier:rpps",
        "path" : "Practitioner.identifier",
        "sliceName" : "rpps",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-professionnel",
            "map" : "Professionnel.idPP"
          }
        ]
      },
      {
        "id" : "Practitioner.identifier:rpps.type",
        "path" : "Practitioner.identifier.type",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier:adeli",
        "path" : "Practitioner.identifier",
        "sliceName" : "adeli",
        "max" : "0"
      },
      {
        "id" : "Practitioner.active",
        "path" : "Practitioner.active",
        "short" : "Cette ressource est-elle active ?\ntrue  par défaut; false pour indiquer que la ressource a été supprimée",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name",
        "path" : "Practitioner.name",
        "short" : "Nom sous lequel exerce le professionnel.",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name.family",
        "path" : "Practitioner.name.family",
        "short" : "Nom sous lequel exerce le professionnel (nomExercice).",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
            "map" : "ExerciceProfessionnel.nomExercice"
          }
        ]
      },
      {
        "id" : "Practitioner.name.given",
        "path" : "Practitioner.name.given",
        "short" : "Prénom sous lequel exerce le professionnel (prenom).",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
            "map" : "ExerciceProfessionnel.prenomExercice"
          }
        ]
      },
      {
        "id" : "Practitioner.name.suffix",
        "path" : "Practitioner.name.suffix",
        "short" : "Civilité d’exercice du professionnel (civilite).",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
            "map" : "ExerciceProfessionnel.civiliteExercice"
          }
        ]
      },
      {
        "id" : "Practitioner.telecom",
        "path" : "Practitioner.telecom",
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
        "short" : "[Donnée restreinte] : telecommunication. Différentes instances pour les téléphones, la télécopie et l’adresse mail.",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-professionnel",
            "map" : "Professionnel.telecommunication"
          }
        ]
      },
      {
        "id" : "Practitioner.telecom.system",
        "path" : "Practitioner.telecom.system",
        "short" : "« phone » pour Téléphone et Téléphone 2 ; « fax » pour Télécopie ; « email » pour adresse e-mail"
      },
      {
        "id" : "Practitioner.telecom.use",
        "path" : "Practitioner.telecom.use",
        "comment" : "« old » si les coordonnées de correspondance ont une date de fin"
      },
      {
        "id" : "Practitioner.telecom:mailbox-mss",
        "path" : "Practitioner.telecom",
        "sliceName" : "mailbox-mss",
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
            "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
            "map" : "ExerciceProfessionnel.boiteLettresMSS"
          }
        ]
      },
      {
        "id" : "Practitioner.address",
        "path" : "Practitioner.address",
        "short" : "[Donnée restreinte] : Adresse(s) de correspondance permettant de contacter le professionnel (adresseCorrespondance).",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-address-extended"
            ]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-professionnel",
            "map" : "Professionnel.adresseCorrespondance"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification",
        "path" : "Practitioner.qualification"
      },
      {
        "id" : "Practitioner.qualification.code",
        "path" : "Practitioner.qualification.code",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-diplome",
            "map" : "Diplome.codeDiplome"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:degree",
        "path" : "Practitioner.qualification",
        "sliceName" : "degree",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-diplome",
            "map" : "Diplome.typeDiplome"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:degree.extension",
        "path" : "Practitioner.qualification.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Practitioner.qualification:degree.extension:as-ext-education-level",
        "path" : "Practitioner.qualification.extension",
        "sliceName" : "as-ext-education-level",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-education-level"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.qualification:degree.extension:as-ext-education-level.extension:academicDegree",
        "path" : "Practitioner.qualification.extension.extension",
        "sliceName" : "academicDegree",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-diplome",
            "map" : "Diplome.natureCycleFormation"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:degree.extension:as-ext-education-level.extension:achievedLevel",
        "path" : "Practitioner.qualification.extension.extension",
        "sliceName" : "achievedLevel",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-diplome",
            "map" : "Diplome.anneeUniversitaire"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:degree.extension:as-ext-education-level.extension:academicYear",
        "path" : "Practitioner.qualification.extension.extension",
        "sliceName" : "academicYear",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-diplome",
            "map" : "Diplome.niveauFormationAcquis"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:degree.code.coding:degreeType",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "degreeType",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.qualification:degree.code.coding:degree",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "degree",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.qualification:degree.period",
        "path" : "Practitioner.qualification.period",
        "short" : "[Donnée restreinte] : Période durant laquelle le niveau de formation est actif."
      },
      {
        "id" : "Practitioner.qualification:degree.period.start",
        "path" : "Practitioner.qualification.period.start",
        "short" : "dateDebut : Date d’obtention du diplôme (dateDiplome)\ncette date est renseignée par l’ordre à la clôture de l’exercice professionnel.",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-diplome",
            "map" : "Diplome.dateDebut"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:degree.period.end",
        "path" : "Practitioner.qualification.period.end",
        "short" : "dateFin : Date à laquelle le niveau de formation n’est plus actif (non visible hormis dans les données historisées).",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-diplome",
            "map" : "Diplome.dateFin"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:degree.issuer",
        "path" : "Practitioner.qualification.issuer",
        "short" : "[Donnée restreinte] : Lieu de formation pour l'obtention du diplôme (lieuFormation).",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-diplome",
            "map" : "Diplome.lieuFormation"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:exercicePro",
        "path" : "Practitioner.qualification",
        "sliceName" : "exercicePro"
      },
      {
        "id" : "Practitioner.qualification:exercicePro.code.coding:categorieProfession",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "categorieProfession",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
            "map" : "ExerciceProfessionnel.categorieProfession"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:exercicePro.code.coding:profession",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "profession",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
            "map" : "ExerciceProfessionnel.profession"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:exercicePro.period",
        "path" : "Practitioner.qualification.period",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.qualification:exercicePro.period.start",
        "path" : "Practitioner.qualification.period.start",
        "short" : "[Donnée restreinte] : Date à partir de laquelle le professionnel exerce cette profession (dateEffetExercice).",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
            "map" : "ExerciceProfessionnel.dateEffetExercice"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:exercicePro.period.end",
        "path" : "Practitioner.qualification.period.end",
        "short" : "[Donnée restreinte] : Date à partir de laquelle le professionnel n’exerce plus cette profession (dateFinEffetExercice).",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
            "map" : "ExerciceProfessionnel.dateFinEffetExercice"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:savoirFaire",
        "path" : "Practitioner.qualification",
        "sliceName" : "savoirFaire"
      },
      {
        "id" : "Practitioner.qualification:savoirFaire.code",
        "path" : "Practitioner.qualification.code",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-savoir-faire",
            "map" : "specialite"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:savoirFaire.code.coding:typeSavoirFaire",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "typeSavoirFaire",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-savoir-faire",
            "map" : "SavoirFaire.typeSavoirFaire"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:savoirFaire.code.coding:savoirFaire",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "savoirFaire",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.qualification:savoirFaire.period.start",
        "path" : "Practitioner.qualification.period.start",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-savoir-faire",
            "map" : "SavoirFaire.dateReconnaissance"
          }
        ]
      },
      {
        "id" : "Practitioner.qualification:savoirFaire.period.end",
        "path" : "Practitioner.qualification.period.end",
        "mapping" : [
          {
            "identity" : "as-practitioner-role-to-mos-savoir-faire",
            "map" : "SavoirFaire.dateAbandon"
          }
        ]
      },
      {
        "id" : "Practitioner.communication",
        "path" : "Practitioner.communication",
        "short" : "Langue parlée (langueParlee).",
        "type" : [
          {
            "code" : "CodeableConcept",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-codeableconcept-timed"
            ]
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J82-Langue-RASS/FHIR/JDV-J82-Langue-RASS"
        }
      }
    ]
  }
}

```
