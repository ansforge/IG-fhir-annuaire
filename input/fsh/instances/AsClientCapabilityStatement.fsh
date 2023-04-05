Instance: AsClientCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* name = "RestServer"
* status = #active
* date = "2023-03-23T13:49:59.485+00:00"
* publisher = "ANS"
* kind = #instance
* software.name = "Afas Fhir server"
* software.version = "V1-R4"
* implementation.description = "Afas data"
* implementation.url = "https://gateway.api.esante.gouv.fr/fhir/v1"
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #xml
* format[+] = #application/fhir+json
* format[+] = #json
* rest.mode = #server
* rest.resource[0].type = #Device
* rest.resource[=].profile = "https://annuaire.sante.gouv.fr/fhir/StructureDefinition/AS-Device"
* rest.resource[=].interaction[0].code = #update
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "Device:organization"
* rest.resource[=].searchRevInclude[0] = "Device:location"
* rest.resource[=].searchRevInclude[+] = "Device:organization"
* rest.resource[=].searchRevInclude[+] = "HealthcareService:organization"
* rest.resource[=].searchRevInclude[+] = "Organization:endpoint"
* rest.resource[=].searchRevInclude[+] = "Organization:partof"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:practitioner"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'id de la ressource Device"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources qui ont été mises à jour pour la dernière fois comme spécifié par la periode donnée"
* rest.resource[=].searchParam[+].name = "_since"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "_total"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "device-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The device name"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'identifiant de l'équipement matériel lourd"
* rest.resource[=].searchParam[+].name = "location"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The location of the device"
* rest.resource[=].searchParam[+].name = "manufacturer"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur la marque des équipements matériels lourds"
* rest.resource[=].searchParam[+].name = "model"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The model of the device"
* rest.resource[=].searchParam[+].name = "number-authorization-arhgos"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le numéro d'autorisation ARHGOS"
* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche les équipements matériels lourds rattachés à la structure sélectionnée"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "active | inactive | entered-in-error | unknown"
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type de l'équipement matériel lourd"
* rest.resource[+].type = #HealthcareService
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/HealthcareService"
* rest.resource[=].interaction[0].code = #update
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "HealthcareService:organization"
* rest.resource[=].searchRevInclude[0] = "Device:location"
* rest.resource[=].searchRevInclude[+] = "Device:organization"
* rest.resource[=].searchRevInclude[+] = "HealthcareService:organization"
* rest.resource[=].searchRevInclude[+] = "Organization:endpoint"
* rest.resource[=].searchRevInclude[+] = "Organization:partof"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:practitioner"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Any id for the healthcare service"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Only return resources which were last updated as specified by the given range"
* rest.resource[=].searchParam[+].name = "_profile"
* rest.resource[=].searchParam[=].type = #uri
* rest.resource[=].searchParam[=].documentation = "Sélectionner le profil de la ressource Healthcare Service. Pour les activités de soins https://annuaire.sante.gouv.fr/fhir/StructureDefinition/AS-HealthcareService-HealthCareActivity / ; Pour les équipements sociaux https://annuaire.sante.gouv.fr/fhir/StructureDefinition/AS-HealthcareService-SocialEquipment"
* rest.resource[=].searchParam[+].name = "_since"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "_total"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche que les ressources Healthcare Service actives"
* rest.resource[=].searchParam[+].name = "characteristic"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type d'activité des équipements sociaux ou sur la forme d'activité des activités de soins"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'identifiant des équipements sociaux ou des activités de soins"
* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche tous les équipements sociaux ou activités de soins rattachés à une structure"
* rest.resource[=].searchParam[+].name = "service-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur la modalité des activités de soins"
* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur la discipline des équipements sociaux ou sur l'activité sanitaire régulée des activité de soins"
* rest.resource[+].type = #OperationDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/OperationDefinition"
* rest.resource[=].interaction.code = #read
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchRevInclude[0] = "Device:location"
* rest.resource[=].searchRevInclude[+] = "Device:organization"
* rest.resource[=].searchRevInclude[+] = "HealthcareService:organization"
* rest.resource[=].searchRevInclude[+] = "Organization:endpoint"
* rest.resource[=].searchRevInclude[+] = "Organization:partof"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:practitioner"
* rest.resource[+].type = #Organization
* rest.resource[=].profile = "https://annuaire.sante.gouv.fr/fhir/StructureDefinition/AS-Organization"
* rest.resource[=].interaction[0].code = #update
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "Organization:partof"
* rest.resource[=].searchRevInclude[0] = "Device:location"
* rest.resource[=].searchRevInclude[+] = "Device:organization"
* rest.resource[=].searchRevInclude[+] = "HealthcareService:organization"
* rest.resource[=].searchRevInclude[+] = "Organization:endpoint"
* rest.resource[=].searchRevInclude[+] = "Organization:partof"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:practitioner"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'id de la ressource Organization"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources qui ont été mises à jour pour la dernière fois comme spécifié par la période donnée"
* rest.resource[=].searchParam[+].name = "_since"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "_total"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche que les ressources Organizations actives"
* rest.resource[=].searchParam[+].name = "address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur (une partie) de l'adresse de la structure."
* rest.resource[=].searchParam[+].name = "address-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur la commune spécifiée dans une adresse"
* rest.resource[=].searchParam[+].name = "address-country"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le pays spécifié dans une adresse"
* rest.resource[=].searchParam[+].name = "address-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le code postal spécifié dans une adresse"
* rest.resource[=].searchParam[+].name = "address-state"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A state specified in an address"
* rest.resource[=].searchParam[+].name = "address-use"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur un code use spécifié dans adresse"
* rest.resource[=].searchParam[+].name = "endpoint"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Technical endpoints providing access to services operated for the organization"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les identifiants des structures"
* rest.resource[=].searchParam[+].name = "mailbox-mss"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur les messageries sécurisées de santé rattachées aux Organization"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur la raison sociale des structures"
* rest.resource[=].searchParam[+].name = "partof"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche tous les établissements géographiques rattachés à une même entité juridique"
* rest.resource[=].searchParam[+].name = "pharmacy-licence"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le numéro de licence des officines"
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type de structure/ code APE/ catégorie juridique/ secteur d'activité/ catégorie d'établissement ou le code SPH de la structure"
* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = "https://annuaire.sante.gouv.fr/fhir/StructureDefinition/AS-Practitioner"
* rest.resource[=].interaction[0].code = #update
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchRevInclude[0] = "Device:location"
* rest.resource[=].searchRevInclude[+] = "Device:organization"
* rest.resource[=].searchRevInclude[+] = "HealthcareService:organization"
* rest.resource[=].searchRevInclude[+] = "Organization:endpoint"
* rest.resource[=].searchRevInclude[+] = "Organization:partof"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:practitioner"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The ID of the resource"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources qui ont été mises à jour pour la dernière fois comme spécifié par la période donnée"
* rest.resource[=].searchParam[+].name = "_since"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "_total"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche les ressources Practitioner actives"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les identifiants des professionnels de santé"
* rest.resource[=].searchParam[+].name = "mailbox-mss"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Une recherche définie par le serveur qui peut correspondre à n'importe quel champ de HumanName, ici sur le préfix  correspondant à la civilité des professionnels de santé"
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/PractitionerRole"
* rest.resource[=].interaction[0].code = #update
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchInclude[+] = "PractitionerRole:partof"
* rest.resource[=].searchInclude[+] = "PractitionerRole:practitioner"
* rest.resource[=].searchRevInclude[0] = "Device:location"
* rest.resource[=].searchRevInclude[+] = "Device:organization"
* rest.resource[=].searchRevInclude[+] = "HealthcareService:organization"
* rest.resource[=].searchRevInclude[+] = "Organization:endpoint"
* rest.resource[=].searchRevInclude[+] = "Organization:partof"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:practitioner"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "l'id de la ressource"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources qui ont été mises à jour pour la dernière fois comme spécifié par la période donnée"
* rest.resource[=].searchParam[+].name = "_since"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "_total"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche les ressources PractitionerRole actives"
* rest.resource[=].searchParam[+].name = "family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le nom d'exercice des professionnels de santé"
* rest.resource[=].searchParam[+].name = "given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le prénom d'exercice des professionnels de santé"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Any identifier for the practitioner role"
* rest.resource[=].searchParam[+].name = "mailbox-mss"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur les messageries sécurisées de santé rattachées à la situation d'exercice des Professionnel de santé"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Une recherche définie par le serveur qui peut correspondre à n'importe quel champ de l'élément name : Code civilité d’exercice, le nom ou prénom d'exercice des professionnel de santé."
* rest.resource[=].searchParam[+].name = "number-smartcard"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le numéro de carte des professionnels de santé"
* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche les exercices professionnels et les situation d'exercice rattachés à la structure sélectionnée"
* rest.resource[=].searchParam[+].name = "practitioner"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche les exercices professionnels et les situation d'exercice rattachés aux professionnels de santé sélectionnés"
* rest.resource[=].searchParam[+].name = "role"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur la profession/ la catégorie professionnelle/ la fonction/ le genre d'activité/ le mode d'exercice ou la section tableau des pharmaciens"
* rest.resource[=].searchParam[+].name = "specialty"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le savoir-faire ou le Type de savoir-faire"
* rest.resource[=].searchParam[+].name = "type-smartcard"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type de carte du professionnels de santé"
* rest.resource[+].type = #Subscription
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Subscription"
* rest.resource[=].interaction[0].code = #update
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchRevInclude[0] = "Device:location"
* rest.resource[=].searchRevInclude[+] = "Device:organization"
* rest.resource[=].searchRevInclude[+] = "HealthcareService:organization"
* rest.resource[=].searchRevInclude[+] = "Organization:endpoint"
* rest.resource[=].searchRevInclude[+] = "Organization:partof"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:practitioner"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'id de la ressource Subscription"
* rest.resource[=].searchParam[+].name = "criteria"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le critère de la subscription"
* rest.resource[=].searchParam[+].name = "payload"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type de payload de la subscription"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le status de la subscription"
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type de la subscription"
* rest.resource[=].searchParam[+].name = "url"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le url (payload) de la subscription"
* rest.resource[=].operation[0].name = "deactivate-all"
* rest.resource[=].operation[=].definition = "https://gateway.api.esante.gouv.fr/fhir/v1/OperationDefinition/Subscription-t-deactivate-all"
* rest.resource[=].operation[+].name = "activate-all"
* rest.resource[=].operation[=].definition = "https://gateway.api.esante.gouv.fr/fhir/v1/OperationDefinition/Subscription-t-activate-all"
* rest.interaction.code = #transaction
