<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:template match="/">
		[ 
		<xsl:for-each select="nastaveni/tiskove-n/kniha-narozeni[@narozeni-c >= 2]"> 
			<xsl:sort select="nazev-knihy" order="descending"/>
			{
			"Název Knihy": "<xsl:value-of select="nazev-knihy"/>",
			"Validní odobí": "<xsl:value-of select="obdobi"/>",
			"Počet řádků pod podpisem": "<xsl:value-of select="pocet-radku"/>",
			"Znak pro proškrtnutí": "<xsl:value-of select="z-proskrtnuti"/>",
			"Podpisový certifikát": "<xsl:value-of select="podpis"/>",
			"Číslo knihy": "<xsl:value-of select="@narozeni-c"/>",
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		] 
	</xsl:template>
</xsl:stylesheet>
