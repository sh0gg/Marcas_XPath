<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Reclamacións</title>
            </head>
            <body>
                <h1>Reclamaciones desde 2004</h1>
                <xsl:apply-templates select="polizas/poliza[reclamaciones/reclamacion/ano &gt;= 2004]" />
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="polizas/poliza">
        <p>
            Cliente: <xsl:value-of select="cliente" />
            <br/>
            Fecha: 
            <xsl:apply-templates select="reclamaciones/reclamacion" />
        </p>
        <hr/> 
    </xsl:template>
    
    <xsl:template match="reclamaciones/reclamacion">
        <xsl:value-of select="ano"/> 
        <xsl:if test="not(position() = last())">, </xsl:if>
    </xsl:template>
</xsl:stylesheet>
