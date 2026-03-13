<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table { border-collapse: collapse; width: 100%; font-family: Arial, sans-serif; }
          th { background-color: #ff9900; color: white; padding: 10px; border: 1px solid #000; }
          td { border: 1px solid #000; padding: 8px; text-align: left; }
          tr:nth-child(even) { background-color: #f2f2f2; }
        </style>
      </head>
      <body>
        <h2>Lista de Clientes</h2>
        <table>
          <tr>
            <th>Nombre de Cliente</th>
            <th>Teléfono</th>
            <th>Ciudad</th>
            <th>País</th>
            <th>Límite de Crédito</th>
          </tr>
          <xsl:for-each select="customers/customer">
            <tr>
              <td><xsl:value-of select="customerName"/></td>
              <td><xsl:value-of select="phone"/></td>
              <td><xsl:value-of select="adress/city"/></td>
              <td><xsl:value-of select="adress/country"/></td>
              <td><xsl:value-of select="creditLimit"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>