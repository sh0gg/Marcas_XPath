<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/horario">
    <materias>
      <xsl:apply-templates select="dia" />
    </materias>
  </xsl:template>
  
  <xsl:template match="dia">
      <dia num="{@num}">
          <xsl:apply-templates select="materia" />
      </dia>
  </xsl:template>
  
  <xsl:template match="materia">
      <materia>
          <xsl:attribute name="hora">
                <xsl:value-of select="@hora"/>
          </xsl:attribute>
        <xsl:attribute name="nome">
          <xsl:value-of select="@nome"/>
        </xsl:attribute>
      </materia>
  </xsl:template>
  
</xsl:stylesheet>
