<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:record="http://www.orcid.org/ns/record"
    xmlns:common="http://www.orcid.org/ns/common"
    xmlns:personal-details="http://www.orcid.org/ns/personal-details"
    xmlns:researcher-url="http://www.orcid.org/ns/researcher-url"
    xmlns:email="http://www.orcid.org/ns/email"
    xmlns:address="http://www.orcid.org/ns/address"
    xmlns:keyword="http://www.orcid.org/ns/keyword"
    xmlns:external-identifier="http://www.orcid.org/ns/external-identifier"
    xmlns:activities="http://www.orcid.org/ns/activities">

  <xsl:template match="/">
    <html>
      <head>
        <title>ORCID Record</title>
      </head>
      <body>
        <h1>ORCID Record</h1>
        <xsl:apply-templates select="//record:record"/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="record:record">
    <div>
      <h2>ORCID Identifier</h2>
      <p>
        URI: <xsl:value-of select="common:orcid-identifier/common:uri"/><br/>
        Path: <xsl:value-of select="common:orcid-identifier/common:path"/><br/>
        Host: <xsl:value-of select="common:orcid-identifier/common:host"/><br/>
      </p>
      
      <h2>Preferences</h2>
      <p>
        Locale: <xsl:value-of select="preferences:preferences/preferences:locale"/><br/>
      </p>
      
      <h2>History</h2>
      <p>
        Creation Method: <xsl:value-of select="history:history/history:creation-method"/><br/>
        Submission Date: <xsl:value-of select="history:history/history:submission-date"/><br/>
        Last Modified Date: <xsl:value-of select="common:last-modified-date"/><br/>
        Claimed: <xsl:value-of select="history:history/history:claimed"/><br/>
        Verified Email: <xsl:value-of select="history:history/history:verified-email"/><br/>
        Verified Primary Email: <xsl:value-of select="history:history/history:verified-primary-email"/><br/>
      </p>
      
      <h2>Person</h2>
      <p>
        Given Names: <xsl:value-of select="person:person/person:name/personal-details:given-names"/><br/>
        Family Name: <xsl:value-of select="person:person/person:name/personal-details:family-name"/><br/>
      </p>
      
      <!-- Ajoutez d'autres sections pour d'autres informations si nécessaire -->
    </div>
  </xsl:template>
  
</xsl:stylesheet>
