<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:variable name="documents" select="collection('documents')"/>

    <xsl:variable name="acCount" select="count($documents//body//current[@type = 'AC'])"/>
    <xsl:variable name="dcCount" select="count($documents//body//current[@type = 'DC'])"/>
    <xsl:variable name="currentTotal" select="$acCount + $dcCount"/>

    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="800" height="800" viewBox="0 0 700 700">
            <g transform="translate(100 500)">

                <!--title-->
                <text x="100" y="-300" text-anchor="middle">AC vs. DC</text>

                <!--x axis-->
                <line x1="0" y1="0" x2="200" y2="0" stroke="#ac782d" stroke-width="4"/>
                <text x="70" y="20" fill="teal" text-anchor="middle">AC</text>
                <text x="120" y="20" fill="maroon" text-anchor="middle">DC</text>

                <!--y axis-->
                <line x1="0" y1="0" x2="0" y2="-270" stroke="#ac782d" stroke-width="4"/>
                <text x="150" y="-50" text-anchor="middle" transform="rotate(-90)">Number of
                    Mentions</text>
                <text x="-20" y="-0" text-anchor="middle">0</text>
                <text x="-20" y="-50" text-anchor="middle">10</text>
                <text x="-20" y="-100" text-anchor="middle">20</text>
                <text x="-20" y="-150" text-anchor="middle">30</text>
                <text x="-20" y="-200" text-anchor="middle">40</text>
                <text x="-20" y="-250" text-anchor="middle">50</text>

                <rect x="60" y="{-$acCount * 5}" height="{$acCount * 5}" width="20" fill="teal"/>
                <rect x="110" y="{-$dcCount * 5}" height="{$dcCount * 5}" width="20" fill="maroon"/>
            </g>
        </svg>
    </xsl:template>

</xsl:stylesheet>
