<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    /**
    *
    * This file is part of EX_Extent profile of ISO 19139.
    *
    */
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron">
   <sch:title>ISO19139 profile schematron</sch:title>
   <sch:ns prefix="gmd" uri="http://www.isotc211.org/2005/gmd" />
   <sch:ns prefix="gco" uri="http://www.isotc211.org/2005/gco" />
   
	<sch:pattern>
      <sch:title>count(description + geographicElement + temporalElement + verticalElement) >0")</sch:title>
      <sch:rule context="//gmd:EX_Extent">
         <sch:let name="count" value="count(gmd:description[@gco:nilReason!='missing' or not(@gco:nilReason)])&gt;0 or count(gmd:geographicElement)&gt;0 or count(gmd:temporalElement)&gt;0 or count(gmd:verticalElement)&gt;0" />
         <sch:assert test="$count">Extent Value of XML is not valid.</sch:assert>
      </sch:rule>
   </sch:pattern>

</sch:schema>
