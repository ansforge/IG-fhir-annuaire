<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Device
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Device</sch:title>
    <sch:rule context="f:Device">
      <sch:assert test="count(f:extension[@url = 'https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/Device-numberAuthorizationARHGOS']) &lt;= 1">extension with URL = 'https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/Device-numberAuthorizationARHGOS': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/Device-authorizationDateDevice']) &lt;= 1">extension with URL = 'https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/Device-authorizationDateDevice': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/ig/fhir/annuaire-donnee-publique/StructureDefinition/as-ext-device-Period-implantation']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/ig/fhir/annuaire-donnee-publique/StructureDefinition/as-ext-device-Period-implantation': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
