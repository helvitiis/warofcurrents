<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:variable name="documents" select="collection('documents')"/>

    <xsl:variable name="company" select="count($documents//body//company)"/>
    <xsl:variable name="edison" select="count($documents//body//company[@name='Edison'])"/>
    <xsl:variable name="westinghouse" select="count($documents//body//company[@name='Westinghouse'])"/>
    <xsl:variable name="thomson-houston" select="count($documents//body//company[@name='Thomson-Houston'])"/>
    <xsl:variable name="siemens" select="count($documents//body//company[@name='Siemens'])"/>
    <xsl:variable name="other" select="count($documents//body//company[@name='Other'])"/>
    

    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="800" height="800" viewBox="0 0 700 700">
            <g transform="translate(100 500)">

                <!--title-->
                <text x="100" y="-250" text-anchor="middle">Number of Companies Mentioned</text>

                <!--x axis-->
                <line x1="0" y1="0" x2="160" y2="0" stroke="#ac782d" stroke-width="4"/>

                <!--y axis-->
                <line x1="0" y1="0" x2="0" y2="-220" stroke="#ac782d" stroke-width="4"/>
                <text x="120" y="-50" text-anchor="middle" transform="rotate(-90)">Number of
                    Mentions</text>
                <text x="-20" y="-0" text-anchor="middle">0</text>
                <text x="-20" y="-50" text-anchor="middle">5</text>
                <text x="-20" y="-100" text-anchor="middle">10</text>
                <text x="-20" y="-150" text-anchor="middle">15</text>
                <text x="-20" y="-200" text-anchor="middle">20</text>

                <rect x="10" y="{-$edison * 10}" height="{$edison * 10}" width="20" fill="teal"/>
                <text x="20" y="20" fill="teal"
                    style="font-family: 'Josefin Slab';font-size:12px; writing-mode: tb; glyph-orientation-vertical: 1"
                    >Edison</text>
                <rect x="40" y="{-$westinghouse * 10}" height="{$westinghouse * 10}" width="20" fill="maroon"/>
                <text x="50" y="20" fill="maroon"
                    style="font-family: 'Josefin Slab';font-size:12px; writing-mode: tb; glyph-orientation-vertical: 1"
                    >Westinghouse</text>
                <rect x="70" y="{-$thomson-houston * 10}" height="{$thomson-houston * 10}" width="20" fill="darkslateblue"/>
                <text x="80" y="20" fill="darkslateblue"
                    style="font-family: 'Josefin Slab';font-size:12px; writing-mode: tb; glyph-orientation-vertical: 1"
                    >Thomson-Houston</text>
                <rect x="100" y="{-$siemens * 10}" height="{$siemens * 10}" width="20" fill="goldenrod"/>
                <text x="110" y="20" fill="goldenrod"
                    style="font-family: 'Josefin Slab';font-size:12px; writing-mode: tb; glyph-orientation-vertical: 1"
                    >Siemens</text>
                <rect x="130" y="{-$other * 10}" height="{$other * 10}" width="20" fill="sienna"/>
                <text x="140" y="20" fill="sienna"
                    style="font-family: 'Josefin Slab';font-size:12px; writing-mode: tb; glyph-orientation-vertical: 1"
                    >Other</text>
            </g>
        </svg>
    </xsl:template>

</xsl:stylesheet>
