Les profils spécifient le format de données exposées par l'API Annuaire. Certains champs contiennent un tag Must Support (MS), symbolisés par un S encadré d'un carré rouge, indiquant que cette donnée est exposée par l'API si celle-ci existe.


### Liste des profils génériques

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "Parent" FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil générique%" %}
<!-- like "%Profil%" rajouté car induit une erreur si vide -->

### Liste des profils applicatifs - données publiques

Liste des profils applicatifs héritant des profils génériques pour détailler les ressources exposées en accès libre par l'API données publiques.

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "Parent" FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil public%" %}

### Liste des profils applicatifs - données restreintes

Liste des profils applicatifs héritant des profils génériques pour détailler les ressources exposées en accès restreint.

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "Parent" FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil restreint%" %}
