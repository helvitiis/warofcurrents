<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output indent="yes" method="xml" doctype-system="about:legacy-compat"/>
    
    <xsl:variable name="documents" select="collection('documents')"/>
    
    <xsl:template match="/">
        <html>
            <xsl:comment>#include virtual="menuSSI.html" </xsl:comment>
            <h2>Table of Contents</h2>
            <ul>
                <xsl:apply-templates select="$documents/*" mode="toc"/>
            </ul>
            <xsl:apply-templates select="$documents/*"/>
            <xsl:comment>#include virtual="licenseSSI.html" </xsl:comment>
        </html>
    </xsl:template>
    <xsl:template match="document" mode="toc">
        <li>
            <div id="NP{descendant::pubDate}">
                <xsl:apply-templates select="descendant::titleStmt/title[1]" mode="toc"/>
                </div>
        </li>
    </xsl:template>
    <xsl:template match="document">
        <div id="NP{descendant::pubDate}">
            <xsl:apply-templates select="descendant::titleStmt"/>
            <xsl:apply-templates select="descendant::body"/>
        </div>
        
    </xsl:template>
    <xsl:template match="titleStmt">     
        <xsl:apply-templates select="descendant::title"/>    
        <xsl:apply-templates select="descendant::subtitle"/>
        <xsl:apply-templates select="descendant::author"/>
        <br/>
        <xsl:apply-templates select="descendant::encodingHistory/work[@role='encoder']"/>
        <br/>
        <xsl:apply-templates select="descendant::encodingHistory/work[@role='transcriber']"/>
        <br/>
        <xsl:apply-templates select="descendant::encodingHistory/work[@role='copyEditor']"/>
    </xsl:template>
    <xsl:template match="title">
        <h1><xsl:apply-templates/></h1>
    </xsl:template>
    <xsl:template match="subtitle">
        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    <xsl:template match="author">
        Author: <span class="byLine"><xsl:apply-templates/></span>
        <!--2017-12-01 ebb: I'm adding a <span class="byLine"> here so you can control the size you want with CSS. I wasn't sure you wanted one of the HTML head elements here (h1, h2, etc)  -->
    </xsl:template>
    <xsl:template match="work[@role='encoder']">
        Encoder(s): <span class="encoder"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="work[@role='transcriber']">
        Transcriber(s): <span class="transcriber"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="work[@role='copyEditor']">
        Copy Editor: <span class="copyEditor"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="persName">
        <span class="persName"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="loc">
        <span class="loc"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="current">
        <span class="current"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="date">
        <span class="date"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="company">
        <span class="company"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="event">
        <span class="event"><xsl:apply-templates/></span>
    </xsl:template>
    <!--ebb: I'm leaving this here with just one kind of span in place. Think about how you want to set up the other forms of markup! Remember that your output MUST be valid and well-formed HTML. -->
</xsl:stylesheet>