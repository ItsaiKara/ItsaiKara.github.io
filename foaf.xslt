<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:foaf="http://xmlns.com/foaf/0.1/"
  xmlns:vcard="http://www.w3.org/2001/vcard-rdf/3.0#">
  
  <xsl:output method="html" encoding="UTF-8"/>
  
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta charset="UTF-8" />
        <title>FOAF Profile</title>
        <link rel="stylesheet" href="styles.css" /> <!-- You can link to a CSS file for styling -->
      </head>
      <body>
        <div class="container">
          <h1 class="text-center">FOAF Profile</h1>
          <xsl:apply-templates select="//foaf:Person" />
        </div>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="foaf:Person">
    <div class="card mt-4 waste_of_time">
      <div class="card-header">
        <h2>Personal Information</h2>
      </div>
      <div class="card-body">
        <p><strong>Name:</strong> <xsl:value-of select="foaf:firstName" /> <xsl:value-of select="foaf:lastName" /></p>
        <p><strong>Age:</strong> <xsl:value-of select="foaf:age" /></p>
        <p><strong>Homepage:</strong> <a href="{foaf:homepage/@rdf:resource}" target="_blank"><xsl:value-of select="foaf:homepage/@rdf:resource" /></a></p>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
