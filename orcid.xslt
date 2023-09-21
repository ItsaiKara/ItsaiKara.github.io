<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:record="http://www.orcid.org/ns/record"
    xmlns:personal-details="http://www.orcid.org/ns/personal-details"
    xmlns:common="http://www.orcid.org/ns/common">

    <xsl:template match="/">
        <html>
            <head>
                <title>ORCID Profile</title>
            </head>
            <body>
                <h1>ORCID Profile</h1>
                <xsl:apply-templates select="//person:person" />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="person:person">
        <div>
            <h2>Personal Information</h2>
            <p><strong>Given Names:</strong> <xsl:value-of select="personal-details:given-names" /></p>
            <p><strong>Family Name:</strong> <xsl:value-of select="personal-details:family-name" /></p>
        </div>

        <div>
            <h2>History</h2>
            <p><strong>Creation Method:</strong> <xsl:value-of select="//history:creation-method" /></p>
            <p><strong>Submission Date:</strong> <xsl:value-of select="//history:submission-date" /></p>
            <p><strong>Last Modified Date:</strong> <xsl:value-of select="//common:last-modified-date" /></p>
            <p><strong>Claimed:</strong> <xsl:value-of select="//history:claimed" /></p>
            <p><strong>Verified Email:</strong> <xsl:value-of select="//history:verified-email" /></p>
            <p><strong>Verified Primary Email:</strong> <xsl:value-of select="//history:verified-primary-email" /></p>
        </div>
    </xsl:template>

</xsl:stylesheet>
