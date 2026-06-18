### Introduction

<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Healthcare professional Directory Implementation Guide</b><br>
This implementation guide contains the FHIR profiles of French Healthcare professionals directory and documents how the data are exposed in the national API.
</p>


{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Warning!</b> This version of the implementation guide is in continuous integration (working version) and is subject to regular changes. The official version is available at https://interop.esante.gouv.fr/ig/fhir/annuaire</b>
</p>
</blockquote>
</div>
{% endif %}

The objective of this guide is to present the FHIR modelling of data from the Annuaire Santé, in compliance with the FHIR interoperability standard. This implementation guide has two objectives:
<div class="wysiwyg" markdown="1">
- Present the data published by the Annuaire Santé national FHIR API
- Serve as a foundation for the FHIR modelling of health professionals in France (cf. generic profiles)
</div>
This implementation guide is a specification that focuses primarily on the data model, not on the technical solution of the Annuaire Santé FHIR API. For more information on how the API works, please consult [the dedicated FHIR API documentation](https://ansforge.github.io/annuaire-sante-fhir-documentation)

#### Project context

The [Annuaire Santé](https://esante.gouv.fr/produits-services/annuaire-sante) brings together the reference sectoral directories for natural persons and legal entities: the shared directory of professionals involved in the healthcare system (RPPS+), and the FINESS+ directory. The Annuaire Santé is a professional-use service intended for actors in the health, social, and medico-social sectors. This publication service also provides data from MSSanté operators, the SI CPX, and the Assurance Maladie.

The Annuaire Santé FHIR API is a RESTful API in JSON format, structured according to the FHIR interoperability standard.

##### Profiled resources

<div class="figure" style="width:100%;">
    <p>{% include document-overview.svg %}</p>
</div>

The list below shows the generic profiles. These have been re-profiled to specify the public data and restricted data APIs. These profiles can be found in the "list of profiles" tab.

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Profile title", Description, json_extract(Json, '$.baseDefinition') as "Parent profile canonical URL" FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil générique%" %}
<!-- like "%Profil%" added to avoid error if empty -->

##### Standards used

These technical specifications are based on the HL7 FHIR Release 4 (R4) standard. They reference a number of standard resources as well as the FHIR REST API specifications, based on the HTTP protocol. The syntax used is JSON format.

The diagram below maps the following two concepts: the "Modèle des Objets de Santé" [(MOS)](https://esante.gouv.fr/produits-services/mos-nos) managed by ANS, and the HL7 FHIR resource concept.

<div class="figure" style="width:100%;">
    <img style="height: auto; width: 100%;" src="mappingFHIRAnnuaireSante.png" alt="mapping fhir annuaire" title="mapping fhir annuaire">
</div>

#### Useful links

* [Annuaire Santé FHIR API documentation (open access)](https://ansforge.github.io/annuaire-sante-fhir-documentation/)
* [Demo portal](https://portail.openfhir.annuaire.sante.fr/)

### Note

The examples associated with the profiles in this guide are provided for informational purposes and may evolve over time. They are not to be taken as a normative reference.

Attributes marked with the MustSupport tag are used by the Annuaire Santé API. These tags are only used in the context of applicative profiles.

### Dependencies

{% include dependency-table.xhtml %}
