<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/venda">
        <xsl:element name="/cliente{cod()}">
            <xsl:attribute name="num_productos">
                <xsl:value-of select="/produtos/count(produto)" />
            </xsl:attribute>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
