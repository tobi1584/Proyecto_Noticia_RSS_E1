<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <!-- Definición de estilos -->
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4" page-width="210mm" page-height="297mm" margin="20mm">
                    <fo:region-body margin="20mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="A4">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-family="Garamond" font-size="12pt" font-weight="bold" text-align="center">
                        <fo:block>Trabajo para el caso PBL</fo:block>
                        <fo:block>Sindicación de Contenidos con RSS</fo:block>
                        <fo:block>Lenguajes de Marcas y Sistemas de Gestión de la Información</fo:block>
                    </fo:block>
                    <fo:block margin-top="10mm" font-size="18px" font-weight="bold" padding="5px" text-align="center"
                              font-family="Arial" text-decoration="underline">POOL DE NOTICIAS SINDICADAS
                    </fo:block>
                    <xsl:apply-templates select="//item"/>
                    <fo:table width="100%" font-size="12px" font-family="TimesNewRoman" font-weight="bold" margin-top="10mm">
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell text-align="left">
                                    <fo:block>Componentes del grupo:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="right" margin-top="-5mm">
                                    <fo:block>Francisco Javier Montes Estrabón</fo:block>
                                    <fo:block>Ricardo Tovar Fernández</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

    <xsl:template match="item">
        <fo:block border="1px solid grey" padding="10px" margin="7mm">
            <fo:table width="100%" text-align="left">
                <fo:table-body>
                    <fo:table-row>
                        <!-- Celda para la imagen -->
                        <fo:table-cell padding="4px" number-columns-spanned="4">
                            <fo:block>
                                <!-- Incluye la imagen -->
                                <fo:external-graphic src="{enclosure/@url}" content-width="100px"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <!-- Celda para la categoría -->
                        <fo:table-cell padding="4px" number-columns-spanned="2">
                            <fo:block font-family="Trebuchet" font-weight="bold" font-size="12px">
                                <xsl:value-of select="category"/>
                            </fo:block>
                        </fo:table-cell>
                        <!-- Celda para la fecha de publicación -->
                        <fo:table-cell padding="4px" number-columns-spanned="2">
                            <fo:block font-family="Trebuchet" font-weight="bold" font-size="10px">
                                <xsl:value-of select="pubDate"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <!-- Celda para el título y el autor -->
                        <fo:table-cell padding="4px" number-columns-spanned="4">
                            <fo:block font-family="Times New Roman" font-size="12px">
                                <xsl:value-of select="title"/>
                                <fo:inline font-family="Verdana" font-size="8px">
                                    <xsl:text> (</xsl:text>
                                    <xsl:value-of select="author"/>
                                    <xsl:text>)</xsl:text>
                                </fo:inline>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <!-- Celda para el enlace -->
                        <fo:table-cell padding="4px" number-columns-spanned="4">
                            <fo:block font-family="Times New Roman" font-size="12px">
                                <xsl:value-of select="link"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>