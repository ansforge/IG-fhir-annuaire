# Historique des changements - Annuaire Santé v1.2.0-snapshot-2

## Historique des changements

### Release 1.2.0 de l'Implementation Guide Annuaire

#### 1.2.0-snapshot-2

* Mise à jour de la dépendance FRCore vers 2.2.0 (correction issue #289, héritage fr-core-organization-etablissement, suppression ADELI) [#307](https://github.com/ansforge/IG-fhir-annuaire/pull/307)
* Suppression du profil G13 des données publiques [#304](https://github.com/ansforge/IG-fhir-annuaire/pull/304)
* BAL MSSanté : ajout Swagger et préférence BAL [#306](https://github.com/ansforge/IG-fhir-annuaire/pull/306)

#### 1.2.0-snapshot-1

Modifications apportées dans la [1.2.0](https://github.com/ansforge/IG-fhir-annuaire/pulls?q=is%3Apr+is%3Aclosed+milestone%3A1.2.0) :

* Mise à jour vers le nouveau template HL7 [302](https://github.com/ansforge/IG-fhir-annuaire/pull/302)
* Suppression des champs dématérialisation et phone de l'API BAL MSSanté [301](https://github.com/ansforge/IG-fhir-annuaire/pull/301)
* Tag MS sur les slices plutôt que sur l'attribut de base (profils DP) [300](https://github.com/ansforge/IG-fhir-annuaire/pull/300)
* Tag MS sur les slices plutôt que sur l'attribut général pour le profil DP du PractitionerRole [299](https://github.com/ansforge/IG-fhir-annuaire/pull/299)
* Ajout du paramètre de recherche sur le type de BAL MSSanté [296](https://github.com/ansforge/IG-fhir-annuaire/pull/296)
* Obsolescence et remplacement des JDV MOS NOS [294](https://github.com/ansforge/IG-fhir-annuaire/pull/294)
* Ajout identifier type short au profil AsOrganization [290](https://github.com/ansforge/IG-fhir-annuaire/pull/290)
* Ajout du meta.source aux profils applicatifs [286](https://github.com/ansforge/IG-fhir-annuaire/pull/286)
* Ajout de données manquantes pour l'API Données Restreintes [285](https://github.com/ansforge/IG-fhir-annuaire/pull/285)
* Ajout du paramètre de recherche pour chercher par organization period [284](https://github.com/ansforge/IG-fhir-annuaire/pull/284)
* Suppression du numéro assurance maladie [283](https://github.com/ansforge/IG-fhir-annuaire/pull/283)
* Déplacement des tags MS (Must Support) [282](https://github.com/ansforge/IG-fhir-annuaire/pull/282)
* Suppression du profil Location [281](https://github.com/ansforge/IG-fhir-annuaire/pull/281)
* Ajout de la page problématiques connues [280](https://github.com/ansforge/IG-fhir-annuaire/pull/280)
* Suppression des identifiants internes des Organization et des Practitioner [278](https://github.com/ansforge/IG-fhir-annuaire/pull/278)
* Mise à jour des descriptions des profils génériques [276](https://github.com/ansforge/IG-fhir-annuaire/pull/276)
* Mise en conformité avec le nouvel arrêté RPPS [271](https://github.com/ansforge/IG-fhir-annuaire/pull/271)
* Mise à jour du CapabilityStatement avec URLs canoniques et modifiers [269](https://github.com/ansforge/IG-fhir-annuaire/pull/269)
* Création du CapabilityStatement pour l'API v2 [268](https://github.com/ansforge/IG-fhir-annuaire/pull/268)

### Release 1.1.0 de l'Implementation Guide Annuaire

Modifications apportées dans la release [1.1.0](https://github.com/ansforge/IG-fhir-annuaire/pulls?q=is%3Apr+is%3Aclosed+milestone%3A1.1.0) :

* (1.1.0-snapshot-6) MAJ cardinalités identifier Device, HealthcareService, PractitionerRole (numAutorisationArhgos et idSituationExercice) [258](https://github.com/ansforge/IG-fhir-annuaire/pull/258)
* (1.1.0-snapshot-6) Suppression Organization.identifier[identifiantInterne], de Practitioner dp : booléen listeRouge et name.period [261](https://github.com/ansforge/IG-fhir-annuaire/pull/261)
* (1.1.0-snapshot-6) MAJ smartcard (renommer cancellationDate en oppositionDate et suppression date)[260](https://github.com/ansforge/IG-fhir-annuaire/pull/260)
* (1.1.0-snapshot-6) Suppression identifiant interne du Practitioner [259](https://github.com/ansforge/IG-fhir-annuaire/pull/259)
* (1.1.0-snapshot-6) MAJ JDV Country (Passage de J74 à J256) [258](https://github.com/ansforge/IG-fhir-annuaire/pull/258)
* (1.1.0-snapshot-5) Changement address district (département) JDV et ajout de la possibilité d'avoir deux cartes CPS pour le PractitionerDP [254](https://github.com/ansforge/IG-fhir-annuaire/pull/254)
* (1.1.0-snapshot-5) Mise à jour JDV Country (de J74 à J256) [258](https://github.com/ansforge/IG-fhir-annuaire/pull/258)
* (1.1.0-snapshot-5) Suppression de l'identifiant interne du Practitioner [259](https://github.com/ansforge/IG-fhir-annuaire/pull/259)
* (1.1.0-snapshot-5) Ajout du mapping MOS [250](https://github.com/ansforge/IG-fhir-annuaire/pull/250)
* (1.1.0-snapshot-5) Correction slicing telecom:mailbox-mss sur les profils Practitioner, Organization, PractitionerRole [244](https://github.com/ansforge/IG-fhir-annuaire/pull/244)
* (1.1.0-snapshot-5) Ajout tags MS sur identifier PractitionerDP [243](https://github.com/ansforge/IG-fhir-annuaire/pull/243)
* (1.1.0-snapshot-5) Suppression de JDVs internes à l'IG au profit de ceux définis par le NOS [247](https://github.com/ansforge/IG-fhir-annuaire/pull/247)
* (1.1.0-snapshot-4) Ajout du CS et VS typeEtablissement ainsi que du binding (PRIMAIRE / SECONDAIRE) [235](https://github.com/ansforge/IG-fhir-annuaire/pull/235)
* (1.1.0-snapshot-4) Mise à jour profils HealthcareService (CODE ACT SOIN, date installation) [233](https://github.com/ansforge/IG-fhir-annuaire/pull/233)
* (1.1.0-snapshot-4) Suppression numéro ADELI suite au décommissionement national [240](https://github.com/ansforge/IG-fhir-annuaire/pull/240)
* (1.1.0-snapshot-3) Ajout de champs manquants [220](https://github.com/ansforge/IG-fhir-annuaire/pull/220)
* (1.1.0-snapshot-3) Mise à jour du contexte de l`extension MSS [221](https://github.com/ansforge/IG-fhir-annuaire/pull/221)
* (1.1.0-snapshot-3) Ajout d`un SP manquant (qualification-code) et fix des urls canoniques dans les profils applicatifs [225](https://github.com/ansforge/IG-fhir-annuaire/pull/225)
* (1.1.0-snapshot-3) Mise à jour dépendance FrCore 2.1.0 et ajout de l`information où trouver les SP associés à chaque profil dans les descriptions [229](https://github.com/ansforge/IG-fhir-annuaire/pull/229)
* (1.1.0-snapshot-3) Mise à jour des métadonnées MSS pour éclaircir l`usage du booléen listeRouge [231](https://github.com/ansforge/IG-fhir-annuaire/pull/231)
* (1.1.0-snapshot-3) Interdiction de l`usage de Practitioner.qualification.period [232](https://github.com/ansforge/IG-fhir-annuaire/pull/232)
* (1.1.0-snapshot-2) Mise à jour des system des identifiants RPPS & ADELI des PractitionerRole [209](https://github.com/ansforge/IG-fhir-annuaire/pull/209)
* (1.1.0-snapshot-2) Suppression de relicats d`url en interopsante.org [214](https://github.com/ansforge/IG-fhir-annuaire/pull/214)
* (1.1.0-snapshot-2) Mise à jour de l`extension AsAuthorizationExtension (changement de nom et de contexte) [211](https://github.com/ansforge/IG-fhir-annuaire/pull/211)
* (1.1.0-snapshot-2) Ajout d`une première version des exemples [142](https://github.com/ansforge/IG-fhir-annuaire/pull/142)
* (1.1.0-snapshot-2) Correction OrganizationType ValueSet [218](https://github.com/ansforge/IG-fhir-annuaire/pull/218)
* (1.1.0-snapshot-2) Mise à jour de FrCore en version courante [219](https://github.com/ansforge/IG-fhir-annuaire/pull/219)
* (1.1.0-snapshot) Mise à jour des system des identifiants RPPS & ADELI des PractitionerRole [209](https://github.com/ansforge/IG-fhir-annuaire/pull/209)
* (1.1.0-snapshot) Suppression de relicats d`url en interopsante.org [214](https://github.com/ansforge/IG-fhir-annuaire/pull/214)
* (1.1.0-snapshot) Mise à jour de l`extension AsAuthorizationExtension (changement de nom et de contexte) [211](https://github.com/ansforge/IG-fhir-annuaire/pull/211)
* (1.1.0-snapshot) Ajout d`une première version des exemples [142](https://github.com/ansforge/IG-fhir-annuaire/pull/142)

### Release 1.0.1 de l'Implementation Guide Annuaire

Modifications apportées dans la release [1.0.1](https://github.com/ansforge/IG-fhir-annuaire/milestone/6?closed=1) :

* Mise à jour de la dépendance FrCore [205](https://github.com/ansforge/IG-fhir-annuaire/pull/205)

### Release 1.0.0 de l'Implementation Guide Annuaire

Modifications apportées dans la release [1.0.0](https://github.com/ansforge/IG-fhir-annuaire/milestone/7?closed=1) :

* (1.0.0-ballot-4) Mise au propre de l`IG [198](https://github.com/ansforge/IG-fhir-annuaire/pull/198), [196](https://github.com/ansforge/IG-fhir-annuaire/pull/196), [174](https://github.com/ansforge/IG-fhir-annuaire/pull/174), [169](https://github.com/ansforge/IG-fhir-annuaire/pull/169), [167](https://github.com/ansforge/IG-fhir-annuaire/pull/167)
* (1.0.0-ballot-4) MAJ CS [189](https://github.com/ansforge/IG-fhir-annuaire/pull/189).
* (1.0.0-ballot-4) Fix divers [186](https://github.com/ansforge/IG-fhir-annuaire/pull/186), [181](https://github.com/ansforge/IG-fhir-annuaire/pull/181), [176](https://github.com/ansforge/IG-fhir-annuaire/pull/176), [190](https://github.com/ansforge/IG-fhir-annuaire/pull/190), [166](https://github.com/ansforge/IG-fhir-annuaire/pull/166)
* (1.0.0-ballot-4) MAJ SP [184](https://github.com/ansforge/IG-fhir-annuaire/pull/184)
* (1.0.0-ballot-3) Profilage de la ressource Person : Person (définition du professionnel en tant que personne physique) –> Practitioner (Exercice professionnel) –> PractitionerRole (Situation d`exercice) [121](https://github.com/ansforge/IG-fhir-annuaire/pull/121)
* (1.0.0-ballot-3) Ajout du NOS en dépendance [149](https://github.com/ansforge/IG-fhir-annuaire/pull/149)
* (1.0.0-ballot-3) Ajout de schémas en plantuml [148](https://github.com/ansforge/IG-fhir-annuaire/pull/148)
* (1.0.0-ballot-3) Génération des listes de profils automatiquement [145](https://github.com/ansforge/IG-fhir-annuaire/pull/145)
* (1.0.0-ballot-3) Ajout des données FINESS complémentaires [139](https://github.com/ansforge/IG-fhir-annuaire/pull/139)

