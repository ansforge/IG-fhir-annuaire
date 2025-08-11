Instance: AsServerDPCapabilityStatementv2
InstanceOf: CapabilityStatement
Usage: #definition
* status = #active
* date = "2025-08-11T13:49:59.485+00:00"
* fhirVersion = #4.0.1

* kind = #requirement

* format[0] = #application/fhir+json
* format[+] = #json


// ################
// # Organization #
// ################

* rest.mode = #server

* rest.resource[0].type = #Organization
* rest.resource[=].profile = Canonical(as-dp-organization)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read

* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "Organization:partof"

* rest.resource[=].searchRevInclude[0] = "Device:organization"
* rest.resource[=].searchRevInclude[+] = "HealthcareService:organization"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:organization"

* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'ID de la ressource Organization."

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée."

* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche que les ressources Organizations actives."

* rest.resource[=].searchParam[+].name = "address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'adresse de la structure."

* rest.resource[=].searchParam[+].name = "address-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur la commune de la structure."

* rest.resource[=].searchParam[+].name = "address-line"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-address-line)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'adresse."

* rest.resource[=].searchParam[+].name = "address-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le code postal de la structure."

* rest.resource[=].searchParam[+].name = "data-information-system"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-data-information-system)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le système d'information."

* rest.resource[=].searchParam[+].name = "data-registration-authority"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-data-registration-authority)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'autorité d'enregistrement."

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les identifiants de structures."

* rest.resource[=].searchParam[+].name = "identifier-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type d'identifiant."

* rest.resource[=].searchParam[+].name = "mailbox-mss"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-mailbox-mss)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur les Messageries Sécurisées de Santé (MSS) rattachées aux structures."

* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur la raison sociale des structures."

* rest.resource[=].searchParam[+].name = "partof"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les établissements géographiques rattachés à une même entité juridique."
* rest.resource[=].searchParam[+].name = "pharmacy-licence"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-pharmacy-licence)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le numéro de licence des pharmacies officines."

* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type de structure (entité juridique, entité géographique), le secteur d'activité, la catégorie d'établissement, le code APE/NAF, le statut juridique de la structure, les modalités de participation au service hospitalier et le type d'établissement (principal ou secondaire)."

// ##########
// # Device #
// ##########

* rest.resource[+].type = #Device
* rest.resource[=].profile = Canonical(as-dp-device)

* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read

* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "Device:organization"

* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'ID de la ressource Device."

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée."

* rest.resource[=].searchParam[+].name = "data-information-system"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-data-information-system)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le système d'information."

* rest.resource[=].searchParam[+].name = "data-registration-authority"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-data-registration-authority)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'autorité d'enregistrement."

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'ID de la ressource Device."

* rest.resource[=].searchParam[+].name = "manufacturer"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur la marque des équipements matériels lourds."

* rest.resource[=].searchParam[+].name = "model"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le modèle des équipements matériels lourds."

* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les Devices liés à l'Organization indiquée."

* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "active | inactive | entered-in-error | unknown."

* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type de l'équipement matériel lourd."

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = "http://interop.esante.gouv.fr/ig/fhir/annuaire-donnee-publique/StructureDefinition/as-practitioner"
* rest.resource[=].interaction[0].code = #delete
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].searchRevInclude = "PractitionerRole:practitioner"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'ID de la ressource Practitioner."
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée."
* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche que les ressources Practitioners actives."
* rest.resource[=].searchParam[+].name = "data-information-system"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-data-information-system)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le système d'information."
* rest.resource[=].searchParam[+].name = "data-registration-authority"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-data-registration-authority)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'autorité d'enregistrement."
* rest.resource[=].searchParam[+].name = "family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le nom d'exercice des Professionnels intervenant dans le système de Santé."
* rest.resource[=].searchParam[+].name = "given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le prénom d'exercice des Professionnels intervenant dans le système de Santé."
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les identifiants des activités intervenant dans le système de Santé."
* rest.resource[=].searchParam[+].name = "identifier-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type d'identifiant (Identifiant National des Professionnels intervenant dans le système de Santé (INPS), RPPS, ADELI, etc.)."
* rest.resource[=].searchParam[+].name = "mailbox-mss"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-mailbox-mss)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur les Messageries Sécurisées de Santé (MSS) rattachées aux Professionnels."
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Une recherche définie par le serveur qui peut correspondre à n'importe quel champ de HumanName. Ici, le préfixe correspond à la civilité des professionnels intervenant dans le système de santé."
* rest.resource[=].searchParam[+].name = "number-smartcard"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-number-smartcard)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le numéro de carte des Professionnels."
* rest.resource[=].searchParam[+].name = "qualification-code"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-qualification-code)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le diplôme, l'exercice professionnel et le savoir-faire."
* rest.resource[=].searchParam[+].name = "type-smartcard"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-type-smartcard)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type de carte des Professionnels."
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = "http://interop.esante.gouv.fr/ig/fhir/annuaire-donnee-publique/StructureDefinition/as-practitionerrole"
* rest.resource[=].interaction[0].code = #delete
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchInclude[+] = "PractitionerRole:practitioner"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'ID de la ressource PractitionerRole."
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée."
* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche que les ressources PractitionerRole actives."
* rest.resource[=].searchParam[+].name = "data-information-system"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-data-information-system)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le système d'information."
* rest.resource[=].searchParam[+].name = "data-registration-authority"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-data-registration-authority)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'autorité d'enregistrement."
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les identifiants des activités intervenant dans le système de Santé."
* rest.resource[=].searchParam[+].name = "mailbox-mss"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-mailbox-mss)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur les Messageries Sécurisées de Santé (MSS) rattachées aux Practitioners."
* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche sur toutes les PractitionerRoles liées aux Organizations."
* rest.resource[=].searchParam[+].name = "practitioner"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche sur toutes les PractitionerRoles liées aux Practitioners spécifiés."
* rest.resource[=].searchParam[+].name = "role"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur la fonction, le genre d'activité, le mode d'exercice ou la section Tableau des Pharmaciens."
* rest.resource[+].type = #HealthcareService
* rest.resource[=].profile = "http://interop.esante.gouv.fr/ig/fhir/annuaire-donnee-publique/StructureDefinition/as-healthcareservice-healthcare-activity"
* rest.resource[=].interaction[0].code = #delete
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "HealthcareService:organization"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'ID de la ressource HealthcareService."
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée."
* rest.resource[=].searchParam[+].name = "_profile"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Sélectionner le profil de la ressource HealthcareService."
* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur les ressources HealthcareService actives."
* rest.resource[=].searchParam[+].name = "characteristic"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type d'activité des équipements sociaux ou sur la forme d'activité des activités de soins."
* rest.resource[=].searchParam[+].name = "data-information-system"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-data-information-system)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le système d'information."
* rest.resource[=].searchParam[+].name = "data-registration-authority"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-data-registration-authority)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'autorité d'enregistrement."
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'identifiant des équipements sociaux ou des activités de soins."
* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les équipements sociaux ou activités de soins rattachés à une Organization."
* rest.resource[=].searchParam[+].name = "service-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur la modalité des activités de soins."
* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur la discipline des équipements sociaux ou sur l'activité sanitaire régulée des activités de soins."