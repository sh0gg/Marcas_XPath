<?xml version="1.0"?>

<!--
    Document   : UD5A3_T1_tarefa1A_davidBesada.xsl
    Created on : 19 de mayo de 2025, 14:50
    Author     : dbesarami
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    
    <xsl:template match="/equipos">
        <almacenamento>
            <discos>
                <xsl:attribute name="num">
                    <xsl:value-of select="count(//disco)"/>
                </xsl:attribute>
                <xsl:apply-templates select="máquina/hardware/disco" />
            </discos>
            <memorias>
                <xsl:attribute name="num">
                    <xsl:value-of select="count(//memoria)"/>
                </xsl:attribute>
                <xsl:apply-templates select="máquina/hardware/memoria" />
            </memorias>
        </almacenamento>   
    </xsl:template>
    
    <xsl:template match="disco">
        <xsl:copy-of select="." />
    </xsl:template>
    
    <xsl:template match="memoria">
        <xsl:copy-of select="." />
    </xsl:template>

</xsl:stylesheet>
