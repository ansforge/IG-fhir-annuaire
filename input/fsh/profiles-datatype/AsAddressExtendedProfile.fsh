Profile: AsAddressExtendedProfile
Parent: fr-core-address
Title: "AS Address Extended Datatype Profile"
Id: as-address-extended
Description: "Datatype profile créé à partir de FrAddress dans le contexte de l'Annuaire Santé pour slicer  Address.line."

// departement
* district from https://mos.esante.gouv.fr/NOS/JDV_J258-Departement/FHIR/JDV-J258-Departement
* district MS // remplace FrenchDepartment from https://mos.esante.gouv.fr/NOS/JDV_J84-DepartementOM-RASS/FHIR/JDV-J84-DepartementOM-RASS

// pays
* country from https://mos.esante.gouv.fr/NOS/JDV_J256-Pays/FHIR/JDV-J256-Pays
* country MS // remplace extension countryCode

* line.extension ^slicing.discriminator.type = #value
* line.extension ^slicing.discriminator.path = "url"
* line.extension ^slicing.rules = #open

* line.extension contains
    iso21090-ADXP-careOf named careOf 0..1 and 
    iso21090-ADXP-additionalLocator named additionalLocator 0..1 and
    iso21090-ADXP-houseNumber named houseNumber 0..1 and
    iso21090-ADXP-buildingNumberSuffix named buildingNumberSuffix 0..1 and
    iso21090-ADXP-streetNameType named streetNameType 0..1 and 
    iso21090-ADXP-postBox named postBox 0..1 and
    iso21090-ADXP-streetNameBase named streetNameBase 0..1 and
	as-ext-lieu-dit named lieuDit 0..1 

* line.extension[careOf] ^short = "pointRemise (Adresse)"
* line.extension[additionalLocator] ^short = "complementPointGeographique (Adresse)"
* line.extension[houseNumber] ^short = "numeroVoie(Adresse)"
* line.extension[buildingNumberSuffix] ^short = "(Adresse)"
* line.extension[streetNameType] ^short = "typeVoie (Adresse)"
* line.extension[streetNameType].valueString from $JDV-J103-TypeVoie-RASS (required)
* line.extension[postBox] ^short = "mentionDistribution (Adresse)"
* line.extension[streetNameBase] ^short = "libelleVoie (Adresse)"
* line.extension[lieuDit] ^short = "lieuDit (Adresse) : Lieu qui porte un nom rappelant une particularité topographique ou historique."


Mapping:  AsAddressExtendedProfileToMOSAdresse
Source:   AsAddressExtendedProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-address-extended-to-mos-exercice-professionnel
Title:    "AsAddressExtendedProfile to MOS - Adresse"
* -> "Adresse"
* extension[inseeCode] -> "Adresse.COGCommune"
* line.extension[additionalLocator] -> "Adresse.complementPointGeographique"
* line.extension[careOf] -> "Adresse.complementPointGeographique"
* line.extension[houseNumber] -> "Adresse.numeroVoie"
* line.extension[buildingNumberSuffix] -> "Adresse.extension"
* line.extension[streetNameType] -> "Adresse.typeVoie"
* line.extension[streetNameBase] -> "Adresse.libelleVoie"
* line.extension[lieuDit] -> "Adresse.lieuDit"
* line.extension[lieuDit] -> "Adresse.lieuDit"
* city -> "Adresse.localite"
* postalCode -> "Adresse.codePostal"
