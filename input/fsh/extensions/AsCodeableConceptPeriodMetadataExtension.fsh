Extension: 		AsCodeableConceptPeriodMetadataExtension
Id: 			as-ext-codeableconcept-timed-metadata
Title:			"AS CodeableConceptTimed Metadata"
Description: 	"Extension contenant les métadonnées du CodeableConceptTimed."

* ^context.type = #element
* ^context.expression = "CodeableConcept"
* value[x] only Period
* valuePeriod.start MS
* valuePeriod.end MS