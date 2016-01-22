<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xalan="http://xml.apache.org/xslt">
	<xsl:output method="xml" indent="yes" xalan:indent-amount="4" />
	<xsl:template match="/personeel">
		<xsl:element name="personeel">
			<xsl:apply-templates select="afdeling/werknemer" />
		</xsl:element>
	</xsl:template>
	<xsl:template match="werknemer">
		<xsl:element name="werknemer">
			<xsl:copy-of select="naam" />
			<xsl:element name="afdeling">
				<xsl:value-of select="../naam" />
			</xsl:element>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>