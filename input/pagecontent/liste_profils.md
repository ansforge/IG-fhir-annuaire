Les profils spécifient le format de données exposées par l'API Annuaire.

### Liste des profils définis

{% sql SELECT '[' || Title || '](' || Url || ')' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "Parent" FROM Resources WHERE Type = 'StructureDefinition' and Description like "%Profil%" %}