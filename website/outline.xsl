<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output indent="yes" method="xml" doctype-system="about:legacy-compat"/>

    <xsl:variable name="documents" select="collection('documents')"/>

    <xsl:template match="/">
        <html>
            <xsl:comment>#include virtual="menuSSI.html" </xsl:comment>
            <h2>Table of Contents</h2>
            <xsl:apply-templates select="$documents/*" mode="toc"/>
            <xsl:apply-templates select="$documents/*"/>
            <xsl:comment>#include virtual="licenseSSI.html" </xsl:comment>
        </html>
    </xsl:template>
    <xsl:template match="document" mode="toc">
        <div id="NP{descendant::pubDate}">
            <!-- 2017-12-05 ajn: we need to manually edit the id so that it says 'aboutopt0, aboutopt1, aboutopt2, etc.' -->
            <button class="button" id="opt0">
                <xsl:apply-templates select="descendant::titleStmt/title[1]" mode="toc"/>
            </button>
        </div>
    </xsl:template>
    <xsl:template match="document">
        <!-- 2017-12-05 ajn: we need to manually edit the id so that it says 'aboutopt0, aboutopt1, aboutopt2, etc.' -->
        <div class="main" id="aboutopt0" style="background-color: #F2DC9A;">
            <xsl:apply-templates select="descendant::titleStmt"/>
            <xsl:apply-templates select="descendant::body"/>
        </div>
    </xsl:template>
    <xsl:template match="titleStmt">
        <xsl:apply-templates select="descendant::title"/>
        <xsl:apply-templates select="descendant::subtitle"/>
        <xsl:apply-templates select="descendant::author"/>
        <xsl:apply-templates select="descendant::encodingHistory/work[@role = 'encoder']"/>
        <xsl:apply-templates select="descendant::encodingHistory/work[@role = 'transcriber']"/>
        <xsl:apply-templates select="descendant::encodingHistory/work[@role = 'copyEditor']"/>
    </xsl:template>
    <xsl:template match="title">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    <xsl:template match="subtitle">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    <xsl:template match="author"> Author: <span class="byLine"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="work[@role = 'encoder']">
        <p>Encoder(s): <xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="work[@role = 'transcriber']">
        <p>Transcriber(s): <xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="work[@role = 'copyEditor']">
        <p>Copy Editor: <xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="persName">
        <span class="persName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="loc">
        <span class="loc">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="current">
        <span class="current">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="date">
        <span class="date">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="company">
        <span class="company">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="event">
        <span class="event">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
</xsl:stylesheet>
