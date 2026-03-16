<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Llista d'empleats</title>
<style>
h2{ font-size:28px; }
h3{ color:blue; font-size:22px; }
.nom{ font-size:18px; }
.oficina{ color:red; font-style:italic; }
</style>
</head>
<body>
<h2>Llista d'empleats</h2>
<ul>
<xsl:for-each select="employees/employee">
<xsl:sort select="firstName"/>
<li>
<h3>Empleat amb id <xsl:value-of select="@id"/></h3>
<ul>
<li class="nom"><b>Nom:</b> <xsl:value-of select="firstName"/> <xsl:value-of select="lastName"/></li>
<li><b>Correu:</b> <xsl:value-of select="email"/></li>
<li><b>Id del seu superior:</b> <xsl:value-of select="reportsTo"/></li>
<li><b>Posició:</b> <xsl:value-of select="jobTitle"/></li>
<li><b>Oficina amb codi:</b> <xsl:value-of select="officeCode"/>
<ul class="oficina">
<li><b>Telèfon:</b> <xsl:value-of select="office/phone"/></li>
<li><b>Adreça:</b> <xsl:value-of select="office/addressLine1"/></li>
<li><b>Estat:</b> <xsl:value-of select="office/state"/></li>
<li><b>País:</b> <xsl:value-of select="office/country"/></li>
<li><b>Codi Postal:</b> <xsl:value-of select="office/postalCode"/></li>
<li><b>Territori:</b> <xsl:value-of select="office/territory"/></li>
</ul>
</li>
</ul>
</li>
</xsl:for-each>
</ul>
</body>
</html>
</xsl:template>
</xsl:stylesheet>