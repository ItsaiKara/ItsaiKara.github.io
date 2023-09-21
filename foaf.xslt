<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:foaf="http://xmlns.com/foaf/0.1/">

<xsl:template match="/">
  <html>
    <head>
      <title>FOAF Profile</title>
    </head>
    <body>
      <h1>FOAF Profile</h1>
      <!-- Appliquer le modèle pour les personnes que vous connaissez -->
      <xsl:apply-templates select="//foaf:Person"/>
      <!-- Appliquer le modèle pour les collègues que vous connaissez -->
      <h2> Conaissances</h2>
      <xsl:apply-templates select="//foaf:knows/foaf:Person"/>
    </body>
  </html>
</xsl:template>
<xsl:template match="foaf:Person">
  <div>
    <h2><xsl:value-of select="foaf:title"/> <xsl:value-of select="foaf:name"/></h2>
    <p>
      <strong>Given Name:</strong> <xsl:value-of select="foaf:givenname"/><br/>
      <strong>Family Name:</strong> <xsl:value-of select="foaf:family_name"/><br/>
      <strong>Homepage:</strong> <a href="{foaf:homepage/@rdf:resource}"><xsl:value-of select="foaf:homepage/@rdf:resource"/></a><br/>
      <strong>Email:</strong> <a href="{foaf:mbox/@rdf:resource}"><xsl:value-of select="foaf:mbox/@rdf:resource"/></a><br/>
    </p>
  </div>
</xsl:template>

</xsl:stylesheet>
