<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />

<xsl:template match="/horario">
    <html>
      <head>
        <title>Horario de <xsl:value-of select="@ciclo" /></title>
      </head>
      <body>
        <h1>Asignaturas por día</h1>
        <ul>
            <xsl:apply-templates select="dia"/>
        </ul>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="dia">
            <li>
              Día <xsl:value-of select="@num" />
              <ul>
                <xsl:apply-templates select="materia"/>
              </ul>
            </li>
    </xsl:template>

    <xsl:template match="materia">
        <li><xsl:value-of select="@nome" /></li>
    </xsl:template>

</xsl:stylesheet>


