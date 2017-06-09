<?xml version="1.0"?>
<xls:stylesheet version="1.0" xmlns:xls="http://www.w3.org/1999/XSL/Transform">
<xls:output method="html" indent="no"/>
	<xls:template match="total">
		<html>
			<head></head>
			<body>
				<b>
					<font size="6">
						<p ALIGN="center">Noticias</p>
					</font>
					<font size="4">
						<p ALIGN="center">Tema: Sociedad</p>
					</font>
				</b>
				<xls:apply-templates select="//rss"/>
			</body>
		</html>
	</xls:template>


	<xls:template match="//rss">
		<xls:param name="description" select="./channel/description/text()"/>
		<b>
			<font size="4">
				<xls:value-of select="$description"/>
			</font>

		</b>
		<br/>
		<xls:for-each select="./item">
			<xls:element name="a">
				<xls:attribute name="href">
					<xls:value-of select="./link/text()"/>
				</xls:attribute>
				<xls:value-of select="./title/text()"/>
			</xls:element>
			<br/>
		</xls:for-each >
		<br/>	
	</xls:template>
	
</xls:stylesheet>
