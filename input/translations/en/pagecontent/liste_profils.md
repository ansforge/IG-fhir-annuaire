The profiles specify the data format exposed by the Annuaire API. Some fields carry a Must Support (MS) tag, symbolised by an S enclosed in a red square, indicating that this data is exposed by the API when it exists.

### List of generic profiles

These generic profiles have no strong constraints so that they can be easily inherited by other guides, such as CI-SIS volumes. These constraints may be progressively reused within the InteropSanté profiles.
These profiles inherit from base FHIR resources or from InteropSanté profiles.


{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Description like 'Profil générique%' ",
    "class" : "lines",
    "columns" : [
        { "title" : "Profile title", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}

### List of applicative profiles — public data

List of applicative profiles inheriting from generic profiles, detailing the resources exposed through open access by the public data API.

{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Description like 'Profil public%' ",
    "class" : "lines",
    "columns" : [
        { "title" : "Profile title", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}

### List of applicative profiles — restricted data

List of applicative profiles inheriting from generic profiles, detailing the resources exposed through restricted access.

{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Description like 'Profil restreint%' ",
    "class" : "lines",
    "columns" : [
        { "title" : "Profile title", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}
