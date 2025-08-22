<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
    <xsl:template match="/">
        <html>
            <head>
                <title>Sitemap</title>
                <style>
                    body { font-family: Arial, sans-serif; margin: 20px; }
                    h1 { color: #2d487a; }
                    table { width: 100%; border-collapse: collapse; margin-top: 20px; }
                    th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                    tr:nth-child(even) { background-color: #f9f9f9; }
                    a { color: #2d487a; text-decoration: none; }
                    a:hover { text-decoration: underline; }
                </style>
            </head>
            <body>
                <h1>Sitemap</h1>
                <table>
                    <tr>
                        <th>URL</th>
                        <th>Last Modified</th>
                        <th>Change Frequency</th>
                        <th>Priority</th>
                    </tr>
                    <xsl:for-each select="sitemap:urlset/sitemap:url">
                        <tr>
                            <td><a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a></td>
                            <td><xsl:value-of select="sitemap:lastmod"/></td>
                            <td><xsl:value-of select="sitemap:changefreq"/></td>
                            <td><xsl:value-of select="sitemap:priority"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>