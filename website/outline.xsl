<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output indent="yes" method="xml" doctype-system="about:legacy-compat"/>
    
    <xsl:variable name="sonnetsColl" select="collection('documents')"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <title>War of Currents</title>
                <link rel="icon" href="favicon.png" />
                <link rel="stylesheet" type="text/css" href="styling.css" /><script type="text/javascript" src="style.js">/**/</script></head>
            <body>
                <div class="titleImage"><a href="index.html"><img class="title" src="woc.png" alt="War of Currents" /></a></div>
                <div class="sticky">
                    <div id="id" class="title"> War of Currents </div>
                    <div class="menu">
                        <div class="dropdown"><a class="dropbtn" href="index.html">Home</a></div> | 
                        <div class="dropdown"><a class="dropbtn">About</a><div class="dropdown-content"><a href="aboutTeam.html">The Team</a><a href="about.html">The Project</a></div>
                        </div> | 
                        <div class="dropdown"><a class="dropbtn">Analysis</a><div class="dropdown-content"><a href="outline.html">Outline</a><a href="#">Timeline</a></div>
                        </div>
                    </div>
                </div>
                <h2>Table of Contents</h2>
                <ul>
                    <xsl:apply-templates select="$sonnetsColl//head//titleStmt" mode="toc"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="titleStmt" mode="toc">
        <li>
            <a href="">
                <xsl:apply-templates select="title[1]" mode="toc"/>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>