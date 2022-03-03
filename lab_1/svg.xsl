<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title />
            </head>
            <body>
                <xsl:apply-templates select="root"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="root">
        <xsl:apply-templates select="*"/>
    </xsl:template>
    <xsl:template match="графика">
        <xsl:variable name="width">
            <xsl:value-of select="@ширина"/>
        </xsl:variable>
        <xsl:variable name="height">
            <xsl:value-of select="@высота"/>
        </xsl:variable>
            <svg height="{$height}" width="{$width}" xmlns="http://www.w3.org/2000/svg">
                <xsl:apply-templates select="эллипс"/>
            </svg>
    </xsl:template>
    <xsl:template match="эллипс">
        <xsl:variable name="id">
            <xsl:value-of select="@id"/>
        </xsl:variable>
        <xsl:variable name="color">
            <xsl:value-of select="@заливка"/>
        </xsl:variable>
        <xsl:variable name="stroke">
            <xsl:value-of select="@ободок"/>
        </xsl:variable>
        <xsl:variable name="stroke-width">
            <xsl:value-of select="@ширина-ободка"/>
        </xsl:variable>
        <xsl:variable name="cx">
            <xsl:value-of select="@cx"/>
        </xsl:variable>
        <xsl:variable name="cy">
            <xsl:value-of select="@cy"/>
        </xsl:variable>
        <xsl:variable name="rx">
            <xsl:value-of select="@rx"/>
        </xsl:variable>
        <xsl:variable name="ry">
            <xsl:value-of select="@ry"/>
        </xsl:variable>
            <ellipse id="{$id}" cx="{$cx}" cy="{$cy}" rx="{$rx}" ry="{$ry}" style="fill: {$color}; stroke: {$stroke}; stroke-width: {$stroke-width}; width: 50%; height: 50%" />
    </xsl:template>
</xsl:stylesheet>