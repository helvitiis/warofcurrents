<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    
    <xsl:output method="xml" indent="yes"/>

    <xsl:variable name="documents" select="collection('documents')"/>

    <xsl:template match="/">

        <xsl:variable name="acCount" select="count($documents//body//current[@type = 'AC'])"/>
        <xsl:variable name="dcCount" select="count($documents//body//current[@type = 'DC'])"/>
        <xsl:variable name="currentTotal" select="$acCount + $dcCount"/>

        <xsl:comment>The total number of ac is: <xsl:value-of select="$acCount"/>.</xsl:comment>
        <xsl:comment>The total number of dc is: <xsl:value-of select="$dcCount"/>.</xsl:comment>
        <xsl:comment>The total number of all is: <xsl:value-of select="$currentTotal"/>.</xsl:comment>
        
        <!--The total number of ac is: 50.-->
        <!--The total number of dc is: 33.-->
        
    </xsl:template>

</xsl:stylesheet>
