<?xml version"1.0"?>
<xsl: stylesheet version="2.0" xmlns: xls="http://www.w3.org/1999/XSL/Transform">
<xsl: output method="html" indent"no"/>
<xsl:template match="total">
	<html>
		<head></head>
		<body>
			<b>
				<font size="6">
					<p ALIGN=center>Noticias</p>
				</font>
				<font size="4">
					<p ALIGN= center>Tema: Sociedad</p>
				</font>
			</b>
			<xsl:apply-templates select="//rss"/>
		</body>
	</html>
</xsl:template>

<xsl:template name="Imprimir item">
	<xsl:param name="title"/>
	<xsl:param name="link"/>
	<xsl:element name="a">
		<xsl:attribute name="href">
			<xsl:value-of select="$link"/>
		</xsl:attribute>
		<xsl:value-of select="$title"/>
	</xsl:element>
	<BR/>
</xsl:template>

<xsl:template match="//rss">
	<xsl:param name="description" select="//rss/channel/description/text()"/>
	<b>
		<font size="4">
			<xsl:value-of select="$description"/>
		</font>
	</b>
	<xsl:for-each select="//rss/channel/item">
		<xsd:param name="title" select="/title/text()"/>
		<xsd:param name="link" select="/link/text()"/>
			<xsd:call-template name="Imprimir item">
				<xsl:with-param name="title" select="$title"/>
				<xsl:with-param name="title" select="$link"/>
			</xsd:call-template>
		<BR/>
	</xsl:for-each >	
</xsl:template>

