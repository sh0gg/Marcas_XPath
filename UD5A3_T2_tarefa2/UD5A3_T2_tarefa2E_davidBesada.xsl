<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/equipos">
        <equipos>
            <xsl:apply-templates select="máquina[starts-with(@nome, 'PC') and not(contains(config/OS, 'Windows'))]"/>
            <xsl:apply-templates select="máquina[starts-with(@nome, 'PC') and contains(config/OS, 'Windows')]">
                <xsl:sort select="sum(hardware/disco/@capacidade)" data-type="number" order="descending"/>
            </xsl:apply-templates>
        </equipos>
    </xsl:template>

    <xsl:template match="máquina">
        <xsl:copy-of select="."/>
    </xsl:template>

</xsl:stylesheet>
