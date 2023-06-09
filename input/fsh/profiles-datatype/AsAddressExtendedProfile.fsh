Profile: AsAddressExtendedProfile
Parent: FrAddress
Title: "AS Address Extended Datatype Profile"
Id: as-address-extended
Description: "Datatype profile créé à partir de FrAddress dans le contexte de l'Annuaire Santé pour slicer  Address.line."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

// departement
* district from https://mos.esante.gouv.fr/NOS/JDV_J84-DepartementOM-RASS/FHIR/JDV-J84-DepartementOM-RASS
* district MS // remplace FrenchDepartment from https://mos.esante.gouv.fr/NOS/JDV_J84-DepartementOM-RASS/FHIR/JDV-J84-DepartementOM-RASS

// pays
* country from https://mos.esante.gouv.fr/NOS/JDV_J74-Pays-RASS/FHIR/JDV-J74-Pays-RASS
* country MS // remplace extension countryCode 0..1 MS from https://mos.esante.gouv.fr/NOS/JDV_J74-Pays-RASS/FHIR/JDV-J74-Pays-RASS

* line.extension ^slicing.discriminator.type = #value
* line.extension ^slicing.discriminator.path = "url"
* line.extension ^slicing.rules = #open

* line.extension contains
    iso21090-ADXP-careOf named careOf 0..* and 
    iso21090-ADXP-additionalLocator named additionalLocator 0..* and
    iso21090-ADXP-houseNumber named houseNumber 0..* and
    iso21090-ADXP-buildingNumberSuffix named buildingNumberSuffix 0..* and
    iso21090-ADXP-streetNameType named streetNameType 0..* and 
    iso21090-ADXP-streetNameBase named streetNamebase 0..* and
    iso21090-ADXP-postBox named postBox 0..*
