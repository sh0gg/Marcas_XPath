<?xml version="1.0"?>

<!--
    Document   : UD5A3_T1_tarefa1A_davidBesada.xsl
    Created on : 19 de mayo de 2025, 15:03
    Author     : dbesarami
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Lista das máquinas</title>
      </head>
      <body>
        <h1>Máquinas</h1>
        <h3>
            <a href="#máquina/@nome">
                <xsl:value-of select="máquina/@nome" />
            </a>
        </h3>
        <br />
        <xsl:apply-templates select="máquina" />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="máquina">
        <h2 id="{@nome}">
            <xsl:value-of select="@nome"/>
        </h2>
        <br />
        <ul>
            <li>
                <xsl:value-of select="hardware/tipo" />
            </li>
            <li>
                <xsl:value-of select="hardware/fabricante" />
            </li>
            <li>
                <xsl:value-of select="hardware/procesador/@text()" />
            </li>
            <li>
                Memoria: <xsl:value-of select="hardware/memoria" />GB
            </li>
                <xsl:apply-templates select="hardware/disco" />
                <xsl:apply-templates select="hardware/gravadora|hardware/lectora" />
        </ul>
  </xsl:template>
  
  <xsl:template

</xsl:stylesheet>
