<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" />

  <xsl:template match="/horario">
    <html>
      <head>
        <title>Horario de <xsl:value-of select="@ciclo" /></title>
      </head>
      <body>
        <h1>Horario de <xsl:value-of select="@ciclo" />, ano <xsl:value-of select="@ano" /></h1>
        <table border="1">
          <tr>
            <th></th>
            <th>
                <b>Inicio</b>
            </th>
            <th>
                <b>Fin</b>
            </th>
          </tr>
          <xsl:apply-templates select="horas/hora" />
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="hora">
      <tr>
                <td>
                    <b>
                        <xsl:value-of select="@id" /> Hora</b>
                </td>
              <td><xsl:value-of select="inicio" /></td>
              <td><xsl:value-of select="fin" /></td>
            </tr>
  </xsl:template>
</xsl:stylesheet>
