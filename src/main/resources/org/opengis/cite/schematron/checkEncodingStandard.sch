<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    /**
    *
    * This file is part of metadata encoding standard profile of ISO 19139.
    *
    */
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron">
   <sch:title>ISO19139 profile schematron</sch:title>
   <sch:ns prefix="gmd" uri="http://www.isotc211.org/2005/gmd" />
   <!-- Metadata information -->
   <sch:pattern>
      <sch:title>Checking language is defined</sch:title>
      <sch:rule context="gmd:MD_Metadata">
         <sch:assert test="gmd:language">language missing</sch:assert>
      </sch:rule>
   </sch:pattern>

   <sch:pattern>
      <sch:title>Checking encoding standard of character Set</sch:title>
      <sch:rule context="gmd:MD_Metadata">
         <sch:assert test="gmd:characterSet">characterSet missing</sch:assert>
         <sch:assert test="gmd:characterSet/gmd:MD_CharacterSetCode/@codeListValue='utf8'">characterSet is not "utf8"</sch:assert>
      </sch:rule>
   </sch:pattern>
</sch:schema>
