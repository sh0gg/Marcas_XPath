<?xml version="1.0"?>

<!--
    Document   : UD5A2_T3_tarefa3B_davidBesada.xsl
    Created on : 18 de mayo de 2025, 22:25
    Author     : dbesarami
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" indent="yes"/>
  
  <!-- Att set para maquina -->
  
  <xsl:attribute-set name="atrib_maquina">
      <xsl:attribute name="tipo">
        <xsl:value-of select="hardware/tipo"/>
      </xsl:attribute>
      <xsl:attribute name="fabricante">
        <xsl:value-of select="hardware/fabricante"/>
      </xsl:attribute>
      <xsl:attribute name="procesador">
        <xsl:value-of select="concat(hardware/procesador/@marca, ' ', hardware/procesador/@num_nucleos, ' núcleos a ', hardware/procesador/@velocidade, ' GHz')"/>
      </xsl:attribute>
      <xsl:attribute name="discos">
        <xsl:value-of select="count(hardware/disco)"/>
        <xsl:text> con </xsl:text>
        <xsl:value-of select="count(hardware/disco) * hardware/disco[1]/@capacidade"/>
        <xsl:text>GB</xsl:text>
      </xsl:attribute>
  </xsl:attribute-set>

  <!-- Plantilla raíz -->
  <xsl:template match="/equipos">
    <máquinas>
      <xsl:apply-templates select="máquina"/>
    </máquinas>
  </xsl:template>

  <!-- Plantilla para cada máquina -->
  <xsl:template match="máquina">
    <xsl:element name="máquina" use-attribute-sets="atrib_maquina" />
  </xsl:template>
  
</xsl:stylesheet>
