<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="documents" select="collection('documents')"/>
    
    <xsl:variable name="acCount" select="count($documents//body//current[@type = 'AC'])"/>
    <xsl:variable name="dcCount" select="count($documents//body//current[@type = 'DC'])"/>
    <xsl:variable name="currentTotal" select="$acCount + $dcCount"/>
    
    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="800" height="800" viewBox="0 0 700 700">
            <g transform="translate(100 500)">
                
                <!--title-->
                <text x="100" y="-350" text-anchor="middle">AC vs. DC</text>
                
                <!--x axis-->
                <line x1="0" y1="0" x2="200" y2="0" stroke="black" stroke-width="4"/>
                <text x="60" y="20" text-anchor="middle">Current</text>
                
                <!--y axis-->
                <line x1="0" y1="0" x2="0" y2="-310" stroke="black" stroke-width="4"/>
                <text x="150" y="-50" text-anchor="middle" transform="rotate(-90)">Number of
                    Mentions</text>
                <text x="-20" y="-20" text-anchor="middle">1</text>
                <text x="-20" y="-60" text-anchor="middle">3</text>
                <text x="-20" y="-100" text-anchor="middle">5</text>
                <text x="-20" y="-140" text-anchor="middle">7</text>
                <text x="-20" y="-180" text-anchor="middle">9</text>
                <text x="-20" y="-220" text-anchor="middle">11</text>
                <text x="-20" y="-260" text-anchor="middle">13</text>
                <text x="-20" y="-300" text-anchor="middle">15</text>
                
            </g>
        </svg>
    </xsl:template>
    
</xsl:stylesheet>