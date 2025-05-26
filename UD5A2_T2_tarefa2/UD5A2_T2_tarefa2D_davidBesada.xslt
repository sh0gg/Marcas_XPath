<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="text"/>

  <xsl:template match="/venda">
    <xsl:for-each select="produtos/produto">
      <xsl:text>Produto da familia </xsl:text>
      <xsl:value-of select="substring(@cod, 1, 4)"/>
      <xsl:text> con código </xsl:text>
      <xsl:value-of select="substring(@cod, 5)"/>
      <xsl:text> para o cliente de código </xsl:text>
      <xsl:value-of select="/venda/cliente/@cod"/>
      <xsl:text>&#10;</xsl:text>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
