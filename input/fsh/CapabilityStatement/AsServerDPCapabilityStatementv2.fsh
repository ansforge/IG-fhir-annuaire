Instance: AsServerDPCapabilityStatementv2
InstanceOf: CapabilityStatement
Usage: #definition
* status = #active
* date = "2025-08-11T13:49:59.485+00:00"
* fhirVersion = #4.0.1

* kind = #requirements

* format[+] = #json

* description = "CapabilityStatement décrivant les attendus de l'API v2 de l'annuaire santé."

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
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'ID de la ressource Organization."

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."

* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche que les ressources Organizations actives."

* rest.resource[=].searchParam[+].name = "address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address"
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'adresse de la structure."

* rest.resource[=].searchParam[+].name = "address-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address-city"
* rest.resource[=].searchParam[=].documentation = "Recherche sur la commune de la structure."

* rest.resource[=].searchParam[+].name = "address-line"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-address-line)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'adresse."

* rest.resource[=].searchParam[+].name = "address-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address-postalcode"
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
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les identifiants de structures."

* rest.resource[=].searchParam[+].name = "identifier-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type d'identifiant. Ce paramètre de recherche est voué à être remplacé par le modifier :of-type du paramètre de recherche identifier."

* rest.resource[=].searchParam[+].name = "mailbox-mss"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-mailbox-mss)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur les Messageries Sécurisées de Santé (MSS) rattachées aux structures."

* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-name"
* rest.resource[=].searchParam[=].documentation = "Recherche sur la raison sociale des structures. Les modifiers supportés par ce paramètre de recherche sont contains, exact et text."

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
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'ID de la ressource Device."

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."

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
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Device-identifier"
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'ID de la ressource Device."

* rest.resource[=].searchParam[+].name = "manufacturer"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Device-manufacturer"
* rest.resource[=].searchParam[=].documentation = "Recherche sur la marque des équipements matériels lourds."

* rest.resource[=].searchParam[+].name = "model"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Device-model"
* rest.resource[=].searchParam[=].documentation = "Recherche sur le modèle des équipements matériels lourds."

* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Device-organization"
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les Devices liés à l'Organization indiquée."

* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Device-status"
* rest.resource[=].searchParam[=].documentation = "active | inactive | entered-in-error | unknown."

* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Device-type"
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type de l'équipement matériel lourd."

// ################
// # Practitioner #
// ################

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = Canonical(as-dp-practitioner)

* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read

* rest.resource[=].searchRevInclude = "PractitionerRole:practitioner"

* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'ID de la ressource Practitioner."

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."

* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-active"
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
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le nom d'exercice des Professionnels intervenant dans le système de Santé. Les modifiers supportés par ce paramètre de recherche sont contains, exact et text."

* rest.resource[=].searchParam[+].name = "given"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur le prénom d'exercice des Professionnels intervenant dans le système de Santé. Les modifiers supportés par ce paramètre de recherche sont contains, exact et text."

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les identifiants des activités intervenant dans le système de Santé."

* rest.resource[=].searchParam[+].name = "identifier-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le type d'identifiant (Identifiant National des Professionnels intervenant dans le système de Santé (INPS), RPPS, ADELI, etc.). Ce paramètre de recherche est voué à être remplacé par le modifier :of-type du paramètre de recherche identifier."

* rest.resource[=].searchParam[+].name = "mailbox-mss"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-mailbox-mss)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur les Messageries Sécurisées de Santé (MSS) rattachées aux Professionnels. Les modifiers supportés par ce paramètre de recherche sont contains et exact."

* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-name"
* rest.resource[=].searchParam[=].documentation = "Une recherche définie par le serveur qui peut correspondre à n'importe quel champ de HumanName. Ici, le préfixe correspond à la civilité des professionnels intervenant dans le système de santé. Les modifiers supportés par ce paramètre de recherche sont contains, exact et text."

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

// ####################
// # PractitionerRole #
// ####################

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical(as-dp-practitionerrole)
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read

* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchInclude[+] = "PractitionerRole:practitioner"

* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'ID de la ressource PractitionerRole."

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."

* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche que les ressources PractitionerRole actives."

* rest.resource[=].searchParam[+].name = "data-information-system"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-data-information-system)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur le système d'information."

* rest.resource[=].searchParam[+].name = "data-registration-authority"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-data-registration-authority)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'autorité d'enregistrement.
"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les identifiants des activités intervenant dans le système de Santé."

* rest.resource[=].searchParam[+].name = "mailbox-mss"
* rest.resource[=].searchParam[=].definition = Canonical(as-sp-mailbox-mss)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche sur les Messageries Sécurisées de Santé (MSS) rattachées aux Practitioners."

* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche sur toutes les PractitionerRoles liées aux Organizations."

* rest.resource[=].searchParam[+].name = "practitioner"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner"
* rest.resource[=].searchParam[=].documentation = "Recherche sur toutes les PractitionerRoles liées aux Practitioners spécifiés."

* rest.resource[=].searchParam[+].name = "role"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-role"
* rest.resource[=].searchParam[=].documentation = "Recherche sur la fonction, le genre d'activité, le mode d'exercice ou la section Tableau des Pharmaciens."

// #####################
// # HealthcareService #
// #####################

* rest.resource[+].type = #HealthcareService
* rest.resource[=].profile = Canonical(as-dp-healthcareservice-healthcare-activity)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read

* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "HealthcareService:organization"

* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'ID de la ressource HealthcareService."

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].documentation = "Renvoie uniquement les ressources dont la dernière mise à jour correspond à la période spécifiée. Les préfixes supportés par ce paramètre de recherche sont gt, ge et eq."

* rest.resource[=].searchParam[+].name = "_profile"
// Commenté car engendre l'erreur - error Cannot find definition for Instance: "http://hl7.org/fhir/SearchParameter/Resource-profile",. Skipping rule.

// * rest.resource[=].searchParam[=].definition = Canonical(Resource-profile)
* rest.resource[=].searchParam[=].type = #uri
* rest.resource[=].searchParam[=].documentation = "Sélectionner le profil de la ressource HealthcareService."

* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].definition = Canonical(HealthcareService-active)
* rest.resource[=].searchParam[=].documentation = "Recherche sur les ressources HealthcareService actives."

* rest.resource[=].searchParam[+].name = "characteristic"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-characteristic"
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
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur l'identifiant des équipements sociaux ou des activités de soins."

* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche sur tous les équipements sociaux ou activités de soins rattachés à une Organization."

* rest.resource[=].searchParam[+].name = "service-category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur la modalité des activités de soins."

* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche sur la discipline des équipements sociaux ou sur l'activité sanitaire régulée des activités de soins."