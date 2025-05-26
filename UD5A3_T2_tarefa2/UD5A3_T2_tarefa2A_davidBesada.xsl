<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
<xsl:template match="/">
    
    <xsl:variable name="title">Táboa máquinas</xsl:variable>
    
    <html>
         <head>
             <title><xsl:value-of select="$title"/></title>
         </head>
         <body>
             <h1><xsl:value-of select="$title"/></h1>
             
             <table border="1">
                <tr>
                    <th>Máquina</th>
                    <th>Tipo</th>
                </tr>
                <xsl:apply-templates select="equipos/máquina[not(starts-with(hardware/tipo, 'Impresora'))]" />
             </table>
             
         </body>
     </html>
</xsl:template>
<xsl:template match="máquina">
    <tr>
        <xsl:if test="hardware/tipo='Semitorre' or hardware/tipo='PC Sobremesa'">
            <xsl:attribute name="style">background:yellow</xsl:attribute>
        </xsl:if>
        <td><xsl:value-of select="@nome"/></td>
        <td><xsl:value-of select="hardware/tipo"/></td>
    </tr>
</xsl:template>

</xsl:stylesheet>