<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output indent="yes" method="xml" doctype-system="about:legacy-compat"/>

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
        
        <xsl:variable name="radius" select="250"/>
        
        <xsl:variable name="sliceType1" select="50 div $currentTotal"/>
        <xsl:variable name="sliceType2" select="33 div $currentTotal"/>

    </xsl:template>

</xsl:stylesheet>
