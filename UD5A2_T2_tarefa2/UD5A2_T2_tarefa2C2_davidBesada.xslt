<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/venda">
    <xsl:element name="html">
      <xsl:element name="head">
        <xsl:element name="title">
          <xsl:text>Produtos do cliente</xsl:text>
        </xsl:element>
      </xsl:element>
      <xsl:element name="body">
        <xsl:element name="h1">
          <xsl:text>Produtos do cliente </xsl:text>
          <xsl:value-of select="cliente/@cod"/>
        </xsl:element>
        <xsl:element name="ul">
          <xsl:for-each select="produtos/produto">
            <xsl:element name="li">
              <xsl:value-of select="@cod"/>
            </xsl:element>
          </xsl:for-each>
        </xsl:element>
      </xsl:element>
    </xsl:element>
  </xsl:template>

</xsl:stylesheet>
