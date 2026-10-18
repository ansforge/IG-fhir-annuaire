# Historique des changements - Annuaire Santé v1.2.0-snapshot-3

## Historique des changements

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Release 1.2.0 of the Annuaire Implementation Guide

Changes included in [1.2.0](https://github.com/ansforge/IG-fhir-annuaire/pulls?q=is%3Apr+is%3Aclosed+milestone%3A1.2.0):

* Migration to the new HL7 template [302](https://github.com/ansforge/IG-fhir-annuaire/pull/302)
* BAL MSSanté: removal of dematerialisation and phone fields [301](https://github.com/ansforge/IG-fhir-annuaire/pull/301)
* MS tag on slices rather than on the base attribute (DP profiles) [300](https://github.com/ansforge/IG-fhir-annuaire/pull/300)
* MS tag on slices rather than on the general attribute for DP PractitionerRole profile [299](https://github.com/ansforge/IG-fhir-annuaire/pull/299)
* Addition of search parameter for BAL MSSanté type [296](https://github.com/ansforge/IG-fhir-annuaire/pull/296)
* Deprecation and replacement of JDV MOS NOS [294](https://github.com/ansforge/IG-fhir-annuaire/pull/294)
* Addition of identifier type short to AsOrganization profile [290](https://github.com/ansforge/IG-fhir-annuaire/pull/290)
* Addition of meta.source to applicative profiles [286](https://github.com/ansforge/IG-fhir-annuaire/pull/286)
* Addition of missing data for the Restricted Data API [285](https://github.com/ansforge/IG-fhir-annuaire/pull/285)
* Addition of search parameter for organization period [284](https://github.com/ansforge/IG-fhir-annuaire/pull/284)
* Removal of health insurance number [283](https://github.com/ansforge/IG-fhir-annuaire/pull/283)
* Relocation of MS (Must Support) tags [282](https://github.com/ansforge/IG-fhir-annuaire/pull/282)
* Removal of Location profile [281](https://github.com/ansforge/IG-fhir-annuaire/pull/281)
* Addition of known issues page [280](https://github.com/ansforge/IG-fhir-annuaire/pull/280)
* Removal of internal identifiers from Organization and Practitioner [278](https://github.com/ansforge/IG-fhir-annuaire/pull/278)
* Update of generic profile descriptions [276](https://github.com/ansforge/IG-fhir-annuaire/pull/276)
* Compliance with the new RPPS decree [271](https://github.com/ansforge/IG-fhir-annuaire/pull/271)
* Update of CapabilityStatement with canonical URLs and modifiers [269](https://github.com/ansforge/IG-fhir-annuaire/pull/269)
* Creation of CapabilityStatement for the v2 API [268](https://github.com/ansforge/IG-fhir-annuaire/pull/268)

### Release 1.1.0 of the Annuaire Implementation Guide

Changes included in release [1.1.0](https://github.com/ansforge/IG-fhir-annuaire/pulls?q=is%3Apr+is%3Aclosed+milestone%3A1.1.0):

* (1.1.0-snapshot-6) Update of identifier cardinalities for Device, HealthcareService, PractitionerRole (numAutorisationArhgos and idSituationExercice) [258](https://github.com/ansforge/IG-fhir-annuaire/pull/258)
* (1.1.0-snapshot-6) Removal of Organization.identifier[identifiantInterne], from Practitioner dp: listeRouge boolean and name.period [261](https://github.com/ansforge/IG-fhir-annuaire/pull/261)
* (1.1.0-snapshot-6) Update of smartcard (rename cancellationDate to oppositionDate and removal of date) [260](https://github.com/ansforge/IG-fhir-annuaire/pull/260)
* (1.1.0-snapshot-6) Removal of Practitioner internal identifier [259](https://github.com/ansforge/IG-fhir-annuaire/pull/259)
* (1.1.0-snapshot-6) Update JDV Country (from J74 to J256) [258](https://github.com/ansforge/IG-fhir-annuaire/pull/258)
* (1.1.0-snapshot-5) Change of address district JDV and addition of the possibility of having two CPS cards for PractitionerDP [254](https://github.com/ansforge/IG-fhir-annuaire/pull/254)
* (1.1.0-snapshot-5) Update JDV Country (from J74 to J256) [258](https://github.com/ansforge/IG-fhir-annuaire/pull/258)
* (1.1.0-snapshot-5) Removal of Practitioner internal identifier [259](https://github.com/ansforge/IG-fhir-annuaire/pull/259)
* (1.1.0-snapshot-5) Addition of MOS mapping [250](https://github.com/ansforge/IG-fhir-annuaire/pull/250)
* (1.1.0-snapshot-5) Fix of telecom:mailbox-mss slicing on Practitioner, Organization, PractitionerRole profiles [244](https://github.com/ansforge/IG-fhir-annuaire/pull/244)
* (1.1.0-snapshot-5) Addition of MS tags on PractitionerDP identifiers [243](https://github.com/ansforge/IG-fhir-annuaire/pull/243)
* (1.1.0-snapshot-5) Removal of IG-internal JDVs in favour of those defined by NOS [247](https://github.com/ansforge/IG-fhir-annuaire/pull/247)
* (1.1.0-snapshot-4) Addition of CS and VS typeEtablissement with binding (PRIMAIRE / SECONDAIRE) [235](https://github.com/ansforge/IG-fhir-annuaire/pull/235)
* (1.1.0-snapshot-4) Update of HealthcareService profiles (CODE ACT SOIN, installation date) [233](https://github.com/ansforge/IG-fhir-annuaire/pull/233)
* (1.1.0-snapshot-4) Removal of ADELI number following national decommissioning [240](https://github.com/ansforge/IG-fhir-annuaire/pull/240)
* (1.1.0-snapshot-3) Addition of missing fields [220](https://github.com/ansforge/IG-fhir-annuaire/pull/220)
* (1.1.0-snapshot-3) Update of MSS extension context [221](https://github.com/ansforge/IG-fhir-annuaire/pull/221)
* (1.1.0-snapshot-3) Addition of a missing SP (qualification-code) and fix of canonical URLs in applicative profiles [225](https://github.com/ansforge/IG-fhir-annuaire/pull/225)
* (1.1.0-snapshot-3) Update of FrCore dependency to 2.1.0 and addition of information on where to find SPs associated with each profile in descriptions [229](https://github.com/ansforge/IG-fhir-annuaire/pull/229)
* (1.1.0-snapshot-3) Update of MSS metadata to clarify the use of the listeRouge boolean [231](https://github.com/ansforge/IG-fhir-annuaire/pull/231)
* (1.1.0-snapshot-3) Prohibition on the use of Practitioner.qualification.period [232](https://github.com/ansforge/IG-fhir-annuaire/pull/232)
* (1.1.0-snapshot-2) Update of RPPS & ADELI identifier systems for PractitionerRole [209](https://github.com/ansforge/IG-fhir-annuaire/pull/209)
* (1.1.0-snapshot-2) Removal of residual interopsante.org URLs [214](https://github.com/ansforge/IG-fhir-annuaire/pull/214)
* (1.1.0-snapshot-2) Update of AsAuthorizationExtension (name and context change) [211](https://github.com/ansforge/IG-fhir-annuaire/pull/211)
* (1.1.0-snapshot-2) Addition of a first version of examples [142](https://github.com/ansforge/IG-fhir-annuaire/pull/142)
* (1.1.0-snapshot-2) Fix of OrganizationType ValueSet [218](https://github.com/ansforge/IG-fhir-annuaire/pull/218)
* (1.1.0-snapshot-2) Update of FrCore to current version [219](https://github.com/ansforge/IG-fhir-annuaire/pull/219)
* (1.1.0-snapshot) Update of RPPS & ADELI identifier systems for PractitionerRole [209](https://github.com/ansforge/IG-fhir-annuaire/pull/209)
* (1.1.0-snapshot) Removal of residual interopsante.org URLs [214](https://github.com/ansforge/IG-fhir-annuaire/pull/214)
* (1.1.0-snapshot) Update of AsAuthorizationExtension (name and context change) [211](https://github.com/ansforge/IG-fhir-annuaire/pull/211)
* (1.1.0-snapshot) Addition of a first version of examples [142](https://github.com/ansforge/IG-fhir-annuaire/pull/142)

### Release 1.0.1 of the Annuaire Implementation Guide

Changes included in release [1.0.1](https://github.com/ansforge/IG-fhir-annuaire/milestone/6?closed=1):

* Update of FrCore dependency [205](https://github.com/ansforge/IG-fhir-annuaire/pull/205)

### Release 1.0.0 of the Annuaire Implementation Guide

Changes included in release [1.0.0](https://github.com/ansforge/IG-fhir-annuaire/milestone/7?closed=1):

* (1.0.0-ballot-4) IG clean-up [198](https://github.com/ansforge/IG-fhir-annuaire/pull/198), [196](https://github.com/ansforge/IG-fhir-annuaire/pull/196), [174](https://github.com/ansforge/IG-fhir-annuaire/pull/174), [169](https://github.com/ansforge/IG-fhir-annuaire/pull/169), [167](https://github.com/ansforge/IG-fhir-annuaire/pull/167)
* (1.0.0-ballot-4) CS update [189](https://github.com/ansforge/IG-fhir-annuaire/pull/189).
* (1.0.0-ballot-4) Various fixes [186](https://github.com/ansforge/IG-fhir-annuaire/pull/186), [181](https://github.com/ansforge/IG-fhir-annuaire/pull/181), [176](https://github.com/ansforge/IG-fhir-annuaire/pull/176), [190](https://github.com/ansforge/IG-fhir-annuaire/pull/190), [166](https://github.com/ansforge/IG-fhir-annuaire/pull/166)
* (1.0.0-ballot-4) SP update [184](https://github.com/ansforge/IG-fhir-annuaire/pull/184)
* (1.0.0-ballot-3) Profiling of the Person resource: Person (definition of the professional as a natural person) → Practitioner (professional practice) → PractitionerRole (practice situation) [121](https://github.com/ansforge/IG-fhir-annuaire/pull/121)
* (1.0.0-ballot-3) Addition of NOS as dependency [149](https://github.com/ansforge/IG-fhir-annuaire/pull/149)
* (1.0.0-ballot-3) Addition of PlantUML diagrams [148](https://github.com/ansforge/IG-fhir-annuaire/pull/148)
* (1.0.0-ballot-3) Automatic generation of profile lists [145](https://github.com/ansforge/IG-fhir-annuaire/pull/145)
* (1.0.0-ballot-3) Addition of supplementary FINESS data [139](https://github.com/ansforge/IG-fhir-annuaire/pull/139)

