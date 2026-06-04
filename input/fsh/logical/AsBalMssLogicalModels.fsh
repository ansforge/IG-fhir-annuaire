// ############
// # BAL PER  #
// ############

Logical: AsBalMssPerLogicalModel
Id: as-bal-mss-per
Title: "AS BAL MSS PER - Modèle logique"
Description: "Modèle logique de la boîte aux lettres MSSanté personnelle (PER), rattachée à un professionnel via son identifiant RPPS."

* adresse 1..1 string "Adresse BAL" "Adresse de messagerie MSSanté"
* identifiantPP 1..1 string "Identifiant PP" "Identifiant national du professionnel de santé (RPPS)"

* listeRouge 0..1 boolean "Liste rouge" "Indicateur liste rouge. true : la BAL ne doit pas être publiée ; false : la BAL peut être publiée."


// ############
// # BAL ORG  #
// ############

Logical: AsBalMssOrgLogicalModel
Id: as-bal-mss-org
Title: "AS BAL MSS ORG - Modèle logique"
Description: "Modèle logique de la boîte aux lettres MSSanté organisationnelle (ORG), rattachée à une structure (EJ ou EG)."

* adresse 1..1 string "Adresse BAL" "Adresse de messagerie MSSanté"
* idnatStruct 1..1 string "Identifiant national de structure" "Identifiant national de la structure porteuse de la BAL (EJ ou EG)"
* serviceRattachement 0..1 string "Service de rattachement" "Nom et description du service de rattachement de l'utilisateur de la BAL dans l'organisation"
* responsable 0..1 string "Responsable" "Coordonnées de la ou des personnes responsables au niveau opérationnel de la BAL"
* description 0..1 string "Description" "Description fonctionnelle de la BAL"

* listeRouge 0..1 boolean "Liste rouge" "Indicateur liste rouge. true : la BAL ne doit pas être publiée ; false : la BAL peut être publiée."


// ############
// # BAL APP  #
// ############

Logical: AsBalMssAppLogicalModel
Id: as-bal-mss-app
Title: "AS BAL MSS APP - Modèle logique"
Description: "Modèle logique de la boîte aux lettres MSSanté applicative (APP), rattachée à une structure (EJ ou EG)."

* adresse 1..1 string "Adresse BAL" "Adresse de messagerie MSSanté"
* idnatStruct 1..1 string "Identifiant national de structure" "Identifiant national de la structure porteuse de la BAL (EJ ou EG)"
* serviceRattachement 0..1 string "Service de rattachement" "Nom et description du service de rattachement de l'utilisateur de la BAL dans l'organisation"
* responsable 0..1 string "Responsable" "Coordonnées de la ou des personnes responsables au niveau opérationnel de la BAL"
* description 0..1 string "Description" "Description fonctionnelle de la BAL"

* listeRouge 0..1 boolean "Liste rouge" "Indicateur liste rouge. true : la BAL ne doit pas être publiée ; false : la BAL peut être publiée."


// ############
// # BAL CAB  #
// ############

Logical: AsBalMssCabLogicalModel
Id: as-bal-mss-cab
Title: "AS BAL MSS CAB - Modèle logique"
Description: "Modèle logique de la boîte aux lettres MSSanté de cabinet (CAB)."

* adresse 1..1 string "Adresse BAL" "Adresse de messagerie MSSanté"
* description 0..1 string "Description" "Description fonctionnelle de la BAL"

* listeRouge 0..1 boolean "Liste rouge" "Indicateur liste rouge. true : la BAL ne doit pas être publiée ; false : la BAL peut être publiée."
