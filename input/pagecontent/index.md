### Introduction

#### Contexte métier du projet

L’[Annuaire Santé](https://esante.gouv.fr/produits-services/annuaire-sante) est un annuaire national de référence des professionnels de santé, avec les données opposables du RPPS, d’ADELI et de FINESS, complétées par les données des CPx, des BAL MSSanté et d'Ameli.fr, pour un usage orienté professionnel. C’est le maillon central de l’identification des acteurs de santé en France.

En publiant ces données, le service Annuaire Santé permet à ces clients de vérifier l’identité des professionnels de santé, leurs qualifications (diplômes et spécialités) et leurs activités.

Les nouveaux services de publication de l'Annuaire Santé permettent d’exposer ce référentiel, via une API RESTful, au format JSON, structurés selon la norme d’interopérabilité FHIR.

Ce guide d'implémentation remplace l'ancien package ANS.annuaire.fhir.r4 0.2.0.


#### Contexte technique du projet

L'objectif de ce projet est de définir les profils Annuaire Santé pour pouvoir consommer ce référentiel via l'API FHIR.

On s'intéresse ici au modèle d'exposition des données publiques de l'Annuaire.


#### Standards utilisés

Ces spécifications techniques se basent sur le standard HL7 FHIR Release 4. Elles font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API REST FHIR, basées sur le protocole HTTP. La syntaxe retenue est JSON.

Une mise en équivalence entre les ressources FHIR de HL7 et les concepts du Modèle des Objets de Santé [(MOS)](https://esante.gouv.fr/produits-services/mos-nos) gérés par l’ANS est disponible sur ce site (en cliquant [ici](mapping.html)). 


##### Ressources profilées 

Les ressources FHIR utilisées sont les suivantes :

* Practitioner
* PractitionerRole 
* Organization 
* Device 
* HealthcareService 
* CapabilityStatement


##### Profils utilisés

Une source est utilsée dans le cadre de ce volet :
* hl7.fhir.fr.core (1.1.0) : « [FrPractitioner](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner) », « [FrPractitionerRoleExercice](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitionerRoleExercice) », « [FrOrganization](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization) », « [FrHumanName](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrHumanName) », « [FrContactPoint](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrContactPoint) » et « [FrAddress](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrAddress) » 

Cet Implementation Guide contient 19 profils dont la liste est fournie sur ce site (en cliquant [ici](index.html))


#### Liens utiles :

- [Documentation API FHIR Annuaire Santé en libre accès](https://ansforge.github.io/annuaire-sante-fhir-documentation/)
- [Démonstration](https://portail.openfhir.annuaire.sante.fr/)


### Dépendances

{% include dependency-table.xhtml %}