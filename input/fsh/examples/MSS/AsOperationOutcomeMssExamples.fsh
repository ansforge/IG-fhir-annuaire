Instance: AsOperationOutcomeMssTooLongExample
InstanceOf: AsOperationOutcomeMssProfile
Usage: #example
Title: "Exemple OperationOutcome MSS - Longueur maximale dépassée (400)"
Description: "Longueur maximale dépassée (400)"

* issue[0].severity = #error
* issue[=].code = #too-long
* issue[=].details.coding.system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* issue[=].details.coding.code = #MSG_PARAM_INVALID
* issue[=].details.text = "La valeur de l'attribut 'responsable' dépasse la longueur maximale autorisée (160 caractères)"

Instance: AsOperationOutcomeMssResourceTypeMismatchExample
InstanceOf: AsOperationOutcomeMssProfile
Usage: #example
Title: "Exemple OperationOutcome MSS - Type de ressource incohérent entre l'URL et le body (400)"
Description: "Type de ressource incohérent entre l'URL et le body (400)"

* issue[0].severity = #error
* issue[=].code = #invalid
* issue[=].details.coding.system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* issue[=].details.coding.code = #MSG_RESOURCE_TYPE_MISMATCH
* issue[=].details.text = "Le type de ressource de la requête doit être identique à celui défini dans le body"

Instance: AsOperationOutcomeMssTypeBalRequiredExample
InstanceOf: AsOperationOutcomeMssProfile
Usage: #example
Title: "Exemple OperationOutcome MSS - Type de BAL manquant (400)"
Description: "Type de BAL manquant (400)"

* issue[0].severity = #error
* issue[=].code = #required
* issue[=].details.text = "L'attribut type est un champ obligatoire"

Instance: AsOperationOutcomeMssBadEmailFormatExample
InstanceOf: AsOperationOutcomeMssProfile
Usage: #example
Title: "Exemple OperationOutcome MSS - Format d'adresse BAL invalide (400)"
Description: "Format d'adresse BAL invalide (400)"

* issue[0].severity = #error
* issue[=].code = #value
* issue[=].details.coding.system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* issue[=].details.coding.code = #MSG_BAD_FORMAT
* issue[=].details.text = "L'adresse email renseignée n'a pas un format valide."

Instance: AsOperationOutcomeMssMssAccountNotFoundExample
InstanceOf: AsOperationOutcomeMssProfile
Usage: #example
Title: "Exemple OperationOutcome MSS - Compte MSS inexistant ou inactif, modification ou suppression (404)"
Description: "Compte MSS inexistant ou inactif, modification ou suppression (404)"

* issue[0].severity = #error
* issue[=].code = #not-found
* issue[=].details.text = "Le compte MSS à modifier n'existe pas parmi les comptes MSS actifs"

Instance: AsOperationOutcomeMssTypeBalImmutableExample
InstanceOf: AsOperationOutcomeMssProfile
Usage: #example
Title: "Exemple OperationOutcome MSS - Type de BAL différent de celui du compte existant (422)"
Description: "Type de BAL différent de celui du compte existant (422)"

* issue[0].severity = #error
* issue[=].code = #business-rule
* issue[=].details.text = "Le type de BAL d'un compte MSS ne peut pas être modifié"

Instance: AsOperationOutcomeMssAttachmentAlreadyExistsExample
InstanceOf: AsOperationOutcomeMssProfile
Usage: #example
Title: "Exemple OperationOutcome MSS - Rattachement actif déjà existant lors d'une création (422)"
Description: "Rattachement actif déjà existant lors d'une création (422)"

* issue[0].severity = #error
* issue[=].code = #conflict
* issue[=].details.coding.system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* issue[=].details.coding.code = #MSG_PARAM_NO_REPEAT
* issue[=].details.text = "L'adresse mail structure@domain.mssante.fr avec le type APP existe déjà."

Instance: AsOperationOutcomeMssAttachmentNotFoundExample
InstanceOf: AsOperationOutcomeMssProfile
Usage: #example
Title: "Exemple OperationOutcome MSS - Rattachement actif inexistant, modification ou suppression (404)"
Description: "Rattachement actif inexistant, modification ou suppression (404)"

* issue[0].severity = #error
* issue[=].code = #not-found
* issue[=].details.coding.system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* issue[=].details.coding.code = #MSG_NO_EXIST
* issue[=].details.text = "Aucun rattachement actif n'existe entre l'adresse mail MSSanté indiquée dans le body et l'identifiant métier indiqué dans la requête"

