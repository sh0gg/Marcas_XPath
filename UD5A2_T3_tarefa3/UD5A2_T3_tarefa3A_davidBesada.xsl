<?xml version="1.0"?>

<!--
    Document   : UD5A2_T3_tarefa3A_davidBesada.xsl
    Created on : 13 de mayo de 2025, 8:55
    Author     : dbesarami
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="disco">
        <xsl:element name="disco">
            <xsl:attribute name="tecnoloxía">
                <xsl:value-of select="@tecnoloxía"/>
            </xsl:attribute>
            <xsl:attribute name="capacidade">
                <xsl:value-of select="@capacidade"/>
            </xsl:attribute>
            <xsl:attribute name="máquina">
                <xsl:value-of select="../../@nome"/>
            </xsl:attribute>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="equipos">
        <discos>
            <xsl:apply-templates select="máquina/hardware/disco"/>
        </discos>
    </xsl:template>

</xsl:stylesheet>
