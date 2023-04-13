Profile: AsAddressExtendedProfile
Parent: FrAddress
Title: "As Address Extended Profile"
Id: as-address-extended
Description: "Extension créée dans le contexte de l'Annuaire Santé pour prise en compte des spécificités de l'adresse postale française"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    FrenchDepartment named frenchDepartment 0..1 MS and
    CountryCode named countryCode 0..1 MS

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
