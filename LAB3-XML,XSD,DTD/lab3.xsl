<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>

        <head>

            <style>
                * {
                    margin: 0;
                    padding: 0;
                }

                table {
                    border-collapse: collapse;
                    width: 100%;
                    font-family: Verdana, Geneva, Tahoma, sans-serif;
                }

                th,
                td {
                    text-align: center;
                    padding: 8px;
                }

                td {
                    margin-top: 10px;
                    color: white;
                }

                tr:nth-child(even) {
                    background-color: #2d80a7
                }

                th {
                    background-color: #4f0808;
                    color: #ffe7e7;
                }
                
            </style>

        </head>

        <body style="color: rgb(173, 32, 32); background-color: black;">
            <table align="center" border-radius="10px" width="1000" cellpadding="5">
                <tr>
                    <th colspan="4" align="centre">AUTOMOBILE SERVICE MANAGEMENT SYSTEM</th>
                </tr>
                <tr>
                    <th>SERVICE ID</th>
                    <th>SERVICE TYPE</th>
                    <th>VEHICLE TYPE</th>
                    <TH>SERVICE CHARGE</TH>
                </tr>
                <xsl:for-each select="Service_centre/Services">
                    <xsl:sort select="SERVICE_ID" />
                    <tr>
                        <td>
                            <xsl:value-of select="SERVICE_ID" />
                        </td>
                        <td>
                            <xsl:value-of select="SERVICE_TYPE" />
                        </td>
                        <td>
                            <xsl:value-of select="VEHICLE_TYPE" />
                        </td>
                        <td>
                            <xsl:value-of select="SERVICE_CHARGE" />
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>

        </html>
    </xsl:template>
    |
</xsl:stylesheet>