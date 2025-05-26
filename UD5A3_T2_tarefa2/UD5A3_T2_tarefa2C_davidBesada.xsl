<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="/">
    
        <xsl:variable name="title">Táboa máquinas</xsl:variable>
    
        <html>
            <head>
                <title>
                    <xsl:value-of select="$title"/>
                </title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="$title"/>
                </h1>
             
                <table border="1">
                    <tr>
                        <th>Máquina</th>
                        <th>Tipo</th>
                        <th>OS</th>
                        <th>Capacidade HD</th>
                    </tr>
                    <xsl:apply-templates select="equipos/máquina[config/OS]">
                        <xsl:sort select="sum(hardware/disco/@capacidade)" data-type="number" order="descending" />
                    </xsl:apply-templates>
                </table>
             
            </body>
        </html>
    </xsl:template>

    <xsl:template match="máquina">     
            <tr>
                <xsl:if test="starts-with(config/OS,'Windows')">
                    <xsl:attribute name="style">background:yellow</xsl:attribute>
                </xsl:if>
                <td><xsl:value-of select="@nome" /></td>
                <td><xsl:value-of select="hardware/tipo" /></td>
                <td><xsl:value-of select="config/OS" /></td>
                <td>
                    <xsl:choose>
                        <xsl:when test="sum(hardware/disco/@capacidade) &gt;= 1000">
                            <xsl:attribute name="style">color:red</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="sum(hardware/disco/@capacidade) &gt;= 500">
                            <xsl:attribute name="style">color:#FF4500</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">color:#FFA500</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:value-of select="sum(hardware/disco/@capacidade)"/>
                </td>
            </tr>
    </xsl:template>
</xsl:stylesheet>