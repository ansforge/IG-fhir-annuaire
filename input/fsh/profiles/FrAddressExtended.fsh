Profile:        AsAddressExtendedProfile
Parent:         FrAddress
Title:          "As Address Extended Profile"
Id:             fr-address-extended
Description:    ""
* ^url = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/fr-address-extended"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    FrenchDepartment named frenchDepartment 0..1 and
    CountryCode named countryCode 0..1

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
