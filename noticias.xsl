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
			<xsl:apply-templates/>
		</body>
	</html>
</xsl:template>

<xsl:template name="Imprimir item">
	<xsl:param name="title"/>
	<xsl:param name="link"/>
	<p>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="$link"/>
			</xsl:attribute>
			<xsl:value-of select="$title"/>
		</xsl>	
	</p>
</xsl:template>

<xsl:template name="Imprimir rss">
	<xsl:for-each select="rss">
		<xsl:param name="description" select="//rss/channel/description/text()"
		<b>
			<font size="4">

			</font>
		</b>
		<p>
			<xsl:for-each select="//rss">
			<xsd:param name="title" select="//title"/>
			<xsd:param name="link" select="/link">


			<xsd:call-template name="Imprimir item">

			</xsd:call-template>
		</p>
	</xsl:for-each>


</xsl:template>

