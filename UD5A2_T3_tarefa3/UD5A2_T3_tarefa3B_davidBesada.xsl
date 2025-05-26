<?xml version="1.0"?>

<!--
    Document   : UD5A2_T3_tarefa3B_davidBesada.xsl
    Created on : 13 de mayo de 2025, 9:16
    Author     : dbesarami
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Táboa máquinas</title>
            </head>
            <body>
                <h1>
                    Táboa das máquinas
                </h1>
                <table border="1">
                    <tr>
                        <th>
                            Máquina
                        </th>
                        <th>
                            Procesador
                        </th>
                        <th>
                            Memoria
                        </th>
                    </tr>
                    <xsl:apply-templates select="equipos/máquina" />
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="máquina">
                        <tr>
                            <td>
                                <xsl:value-of select="@nome"/>
                            </td>
                            <td>
                                <xsl:value-of select="concat(./hardware/procesador/@marca,' ', ./hardware/procesador/text())"/>
                            </td>
                            <td>
                                <xsl:value-of select="concat(./hardware/memoria/text(),'GB ',./hardware/memoria/@tecnoloxía)"/>
                            </td>
                        </tr>                        
                        
    </xsl:template>

</xsl:stylesheet>
