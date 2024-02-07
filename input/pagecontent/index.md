### Introduction

<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Healthcare professional Directory Implementation Guide</b><br>
This implementation guide contains the FHIR profiles of French health professionals and document how the data are exposed in the national API.
</p>

#### Périmètre du guide

Ce guide indique comment modéliser en FHIR les données des professionnels intervenant dans le système de santé en France. Celui-ci a deux objectifs : 1/ décrire les données exposées par l'API nationale Annuaire Santé et 2/ Servir de base à la modélisation FHIR des professionnels en France (cf profils génériques) dans le cadre du CI-SIS par exemple.
Il est important de noter qu'il se concentre uniquement sur le modèle de données et non sur la solution technique API nationale. Pour en savoir davantage sur le fonctionnement de l'API nationale, il est nécessaire de consulter [la page dédiée](https://ansforge.github.io/annuaire-sante-fhir-documentation)

#### Contexte du projet

L’[Annuaire Santé](https://esante.gouv.fr/produits-services/annuaire-sante) est un annuaire national de référence des professionnels de santé, avec les données opposables du RPPS, d’ADELI et de FINESS, complétées par les données des CPx, des BAL MSSanté et d'Ameli.fr, pour un usage orienté professionnel. C’est le maillon central de l’identification des acteurs de santé en France.
En publiant ces données, le service Annuaire Santé permet à ces clients de vérifier l’identité des professionnels de santé, leurs qualifications (diplômes et spécialités) et leurs activités.

Les nouveaux services de publication de l'Annuaire Santé permettent d’exposer ce référentiel, via une API RESTful, au format JSON, structurés selon la norme d’interopérabilité FHIR.
L'objectif de ce projet est de définir les profils Annuaire Santé exposés par l'API FHIR.
Ce guide d'implémentation remplace l'ancien package ANS.annuaire.fhir.r4 0.2.0.

#### Standards utilisés

Ces spécifications techniques se basent sur le standard HL7 FHIR Release 4. Elles font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API REST FHIR, basées sur le protocole HTTP. La syntaxe retenue est JSON.

Une mise en équivalence entre les ressources FHIR de HL7 et les concepts du Modèle des Objets de Santé [(MOS)](https://esante.gouv.fr/produits-services/mos-nos) gérés par l’ANS est disponible sur ce site (en cliquant [ici](mapping.html)).

##### Ressources profilées

La liste ci-dessous expose la liste des profils génériques profilés. Ceux-ci ont été re-profilés pour rajouter les contraintes applicatives dans l'onglet "liste des profils".

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "Parent" FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil générique%" %}

<!-- like "%Profil%" rajouté car induit une erreur si vide -->
<div class="figure" style="width:100%;">
    <p>{% include document-overview.svg %}</p>
</div>

#### Liens utiles

* *[Documentation API FHIR Annuaire Santé en libre accès](https://ansforge.github.io/annuaire-sante-fhir-documentation/)
* *[Démonstration](https://portail.openfhir.annuaire.sante.fr/)

### Dépendances

{% include dependency-table.xhtml %}
