<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    /**
    *
    * This file is part of MD_LegalConstraints profile of ISO 19139.
    *
    */
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron">
   <sch:title>ISO19139 profile schematron</sch:title>
   <sch:ns prefix="gmd" uri="http://www.isotc211.org/2005/gmd" />
   <sch:pattern>
      <sch:title>otherConstraints: documented if accessConstraints or useConstraints ="otherRestrictions"</sch:title>
      <sch:rule context="gmd:MD_LegalConstraints">
         <sch:let name="restrictionCode" value="gmd:accessConstraints/gmd:useConstraints" />
         <sch:assert test="gmd:otherConstraints or $restrictionCode='otherRestrictions'">otherConstraints missing while accessConstraints="otherRestrictions"</sch:assert>
      </sch:rule>
   </sch:pattern>
</sch:schema>
