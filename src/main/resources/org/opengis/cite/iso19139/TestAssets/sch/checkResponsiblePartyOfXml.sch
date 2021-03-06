<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    /**
    *
    * This file is part of CI_ResponsibleParty profile of ISO 19139.
    *
    */
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron">
   <sch:title>ISO19139 profile schematron</sch:title>
   <sch:ns prefix="gmd" uri="http://www.isotc211.org/2005/gmd" />
   <sch:ns prefix="gco" uri="http://www.isotc211.org/2005/gco" />
   <sch:pattern>
      <sch:title>count of (individualName + organisationName + positionName) &gt; 0")</sch:title>
      <sch:rule context="//*[gmd:CI_ResponsibleParty]">
         <sch:let name="count" value="(count(gmd:CI_ResponsibleParty/gmd:individualName[@gco:nilReason!='missing' or not(@gco:nilReason)]) + count(gmd:CI_ResponsibleParty/gmd:organisationName[@gco:nilReason!='missing' or not(@gco:nilReason)]) + count(gmd:CI_ResponsibleParty/gmd:positionName[@gco:nilReason!='missing' or not(@gco:nilReason)]))" />
         <sch:assert test="$count &gt; 0">Number of Resonsible party is invalid</sch:assert>
      </sch:rule>
   </sch:pattern>
</sch:schema>
