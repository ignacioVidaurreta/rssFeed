<?xml version="1.0"?>
<xls:stylesheet version="1.0" xmlns:xls="http://www.w3.org/1999/XSL/Transform">
<xls:output method="html" indent="no"/>
	<xls:template match="total">
		<html>
			<head>  </head>
			<body bgcolor="#EFE183">
				<IMG src="Maggie_newspaper.gif" alt="TP de XML!" STYLE="position:absolute; TOP:150px; LEFT:35%;  WIDTH:30%; HEIGHT:30%"/>		
				<b>
					<font size="6" style="font-family:verdana">
						<p ALIGN="center">Noticias</p>
					</font>
					<font size="4" style="font-family:verdana">
						<p ALIGN="center">Tema: Sociedad</p>
					</font>
				</b>
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
				<xls:apply-templates select="//rss"/>
			</body>
		</html>
	</xls:template>


	<xls:template match="//rss">
		<xls:param name="description" select="./channel/description/text()"/>
		<b>
			<font size="4" style="font-family:verdana">
				<xls:value-of select="$description"/>
			</font>
			<br/>

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
