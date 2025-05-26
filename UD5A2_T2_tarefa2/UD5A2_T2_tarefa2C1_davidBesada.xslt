<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/venda">
    <html>
      <head>
        <title>Cliente: <xsl:value-of select="cliente/@cod"/> </title>
      </head>
      <body>
          <p>Cliente: <xsl:value-of select="cliente/@cod"/></p>
          <p>Número de productos: <xsl:value-of select="count(//produto)" /></p>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
