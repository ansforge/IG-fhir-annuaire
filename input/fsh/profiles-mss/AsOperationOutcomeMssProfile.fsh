Profile: AsOperationOutcomeMssProfile
Parent: OperationOutcome
Id: as-operationoutcome-mss
Title: "AS OperationOutcome MSS"
Description: "Profil d'OperationOutcome retourné par l'API de gestion des BAL MSSanté (création, modification, suppression via PATCH avec une ressource Parameters) lorsqu'une requête est refusée. Il impose, pour chaque anomalie, une sévérité, un code de type d'anomalie et un message lisible en français."

* issue 1..*
* issue ^short = "Anomalie(s) détectée(s) lors du contrôle de la requête ou de l'application des règles de gestion MSS"

* issue.severity 1..1 MS
* issue.severity ^short = "Gravité de l'anomalie (error pour les contrôles bloquants)"
* issue.code 1..1 MS
* issue.code ^short = "Type d'anomalie : too-long, invalid, required, code-invalid, value, conflict, not-found, business-rule"
* issue.code from http://hl7.org/fhir/ValueSet/issue-type (required)

* issue.details 1..1 MS
* issue.details ^short = "Détail de l'anomalie : code d'erreur éventuel (coding) et message en français (text)"
* issue.details.text 1..1 MS
* issue.details.text ^short = "Message d'erreur en français, destiné à l'opérateur MSSanté"
* issue.details.coding 0..*
* issue.details.coding ^short = "Code d'erreur issu du CodeSystem HL7 operation-outcome (ex. MSG_PARAM_INVALID, MSG_NO_EXIST, MSG_BAD_FORMAT)"
* issue.details.coding.system 1..1
* issue.details.coding.system = "http://terminology.hl7.org/CodeSystem/operation-outcome" (exactly)
* issue.details.coding.code 1..1
