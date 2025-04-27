<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
        <head>
            <title>Student Results</title>
        </head>
        <body>
            <h2>Student Report</h2>
            <table border="1" cellpadding="5" cellspacing="0">
                <tr bgcolor="#cccccc">
                    <th>Roll No</th>
                    <th>Name</th>
                    <th>Marks</th>
                    <th>Result</th>
                </tr>
                <xsl:for-each select="students/student">
                    <tr>
                        <td><xsl:value-of select="rollno"/></td>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="marks"/></td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="marks &gt;= 75">Distinction</xsl:when>
                                <xsl:when test="marks &gt;= 50">Pass</xsl:when>
                                <xsl:otherwise>Fail</xsl:otherwise>
                            </xsl:choose>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
