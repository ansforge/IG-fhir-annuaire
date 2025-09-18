### Introduction

<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Healthcare professional Directory Implementation Guide</b><br>
This implementation guide contains the FHIR profiles of French Healthcare professionals directory and documents how the data are exposed in the national API.
</p>


{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Attention !</b> Cette version du guide d'implémentation est en intégration continue (version de travail) et est soumise à des changements réguliers. La version officielle est accessible à l'adresse https://interop.esante.gouv.fr/ig/fhir/annuaire</b>
</p>
</blockquote>
</div>
{% endif %}

<!--
<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Ce guide d'implémentation est en version snapshot pour développement interne ANS avant publication d'une nouvelle release. La version à utiliser est accessible ici : https://interop.esante.gouv.fr/ig/fhir/annuaire.
</p>
</blockquote>
-->

L'objectif de ce guide est de présenter la modélisation FHIR des données provenant de l'Annuaire Santé en respectant le standard d'intéroperabilité FHIR. Ce guide d'implémentation a deux objectifs :
<div class="wysiwyg" markdown="1">
- Présenter les données publiées par l'API FHIR nationale Annuaire Santé
- Servir de socle dans la modélisation FHIR des professionnels en France (cf. profils génériques)  
</div>
Ce guide d'implémentation est une spécification qui se concentre principalement sur le modèle de données et non sur la solution technique de l'API FHIR Annuaire Santé. Pour en savoir davantage sur le fonctionnement de l'API, veuillez consulter [la documentation dédiée de l'API FHIR](https://ansforge.github.io/annuaire-sante-fhir-documentation)

#### Contexte du projet

L’[Annuaire Santé](https://esante.gouv.fr/produits-services/annuaire-sante) rassemble les répertoires sectoriels de référence des personnes physiques et personnes morales : le répertoire partagé des professionnels intervenant dans le système de santé (RPPS+), et le répertoire FINESS+. L'Annuaire Santé est un service à usage professionnel destiné aux acteurs des secteurs sanitaire, social et médico-social. Ce service de publication fournit également des données provenant des opérateurs MSSanté, du SI CPX et de l’Assurance Maladie. 

L'API FHIR Annuaire Santé est une API RESTfull au format JSON et structurée selon le standard d'interoperabilité FHIR.

##### Ressources profilées

<div class="figure" style="width:100%;">
    <p>{% include document-overview.svg %}</p>
</div>

La liste ci-dessous expose la liste des profils génériques profilés. Ceux-ci ont été re-profilés pour spécifier les APIs données publiques et données restreintes. Ces profils peuvent être trouvés dans l’onglet "liste des profils".

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "URL canonique du profil parent" FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil générique%" %}
<!-- like "%Profil%" rajouté car induit une erreur si vide -->

##### Standards utilisés

Ces spécifications techniques se basent sur le standard HL7 FHIR Release 4 (R4). Elles font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API REST FHIR, basées sur le protocole HTTP. La syntaxe retenue est le format JSON.

Le schéma ci-dessous met en équivalence les deux concepts suivants : "Modèle des Objets de Santé"[(MOS)](https://esante.gouv.fr/produits-services/mos-nos) géré par l'ANS  et le concept des ressources FHIR de HL7  

<div class="figure" style="width:100%;">
    <img style="height: auto; width: 100%;" src="mappingFHIRAnnuaireSante.png" alt="mapping fhir annuaire" title="mapping fhir annuaire">
</div>

#### Liens utiles

* [Documentation API FHIR Annuaire Santé en libre accès](https://ansforge.github.io/annuaire-sante-fhir-documentation/)
* [Portail de démonstration](https://portail.openfhir.annuaire.sante.fr/)

### Note

Les exemples associés aux profils au sein de ce guide sont donnés à titre indicatif et pourraient évoluer dans le temps. Ils n'ont pas valeur de référence.

Les attributs marqués du tag MustSupport sont utilisés par l'API Annuaire Santé. Ces tags sont uniquement utilisés dans le cadre des profils applicatifs.

### Dépendances

{% include dependency-table.xhtml %}
