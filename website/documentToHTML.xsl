<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output indent="yes" method="xml" doctype-system="about:legacy-compat"/>
    
    <xsl:variable name="documents" select="collection('documents')"/>
    
    <xsl:template match="/">
        <html>
            <xsl:comment>#include virtual="menuSSI.html" </xsl:comment>
            
            <xsl:apply-templates select="$documents/*"/>
            <xsl:comment>#include virtual="licenseSSI.html" </xsl:comment>
        </html>
    </xsl:template>
    <xsl:template match="document">
        <div id="NP{descendant::pubDate}"><xsl:apply-templates/>
        </div>
        
    </xsl:template>
    <xsl:template match="titleStmt" mode="toc">
                   
        <xsl:apply-templates/>      
    </xsl:template>
    <xsl:template match="title">
        <h1><xsl:apply-templates/></h1>
    </xsl:template>
    <xsl:template match="subtitle">
        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    <xsl:template match="author">
        <span class="byLine"><xsl:apply-templates/></span>
        <!--2017-12-01 ebb: I'm adding a <span class="byLine"> here so you can control the size you want with CSS. I wasn't sure you wanted one of the HTML head elements here (h1, h2, etc)  -->
    </xsl:template>
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="persName">
        <span class="persName"><xsl:apply-templates/></span>
    </xsl:template>
    
    <!--ebb: I'm leaving this here with just one kind of span in place. Think about how you want to set up the other forms of markup! Remember that your output MUST be valid and well-formed HTML. -->
</xsl:stylesheet>