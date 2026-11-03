<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    
<head>
     <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 10px;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #ffffff;
            background-color: #245b8f;
            padding: 10px;
            border-radius: 10px;
            margin-bottom: 30px;
        }

        .etudiant {
            background-color: white;
            padding: 20px;
            margin-bottom: 25px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        h2 {
            color: #245b8f;
            border-bottom: 2px solid #dce6f0;
            padding-bottom: 10px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            line-height: 2;
        }

        li {
            padding: 5px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
        }

        th {
            background-color: #245b8f;
            color: white;
            padding: 12px;
        }

        td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        tr:nth-child(even) {
            background-color: #edf3f8;
        }

        tr:hover {
            background-color: #dceaf7;
        }
    </style>
    <title>Bibliothèque</title>
</head>
<body>
    <h1>Gestion de bibliothèque</h1>
    
    <xsl:for-each select="biblio/etudiant">
        <ul>
            <li>code :<xsl:value-of name="code" select="@code"/></li>
            <li>Nom :<xsl:value-of name="code" select="@nom"/></li>
            <li>Prenom :<xsl:value-of name="code" select="@prenom"/></li>
            <li>Age :<xsl:value-of name="code" select="@age"/></li>
           
        </ul>
            
           
    <table border="1" width="90%" cellpadding="10">
        <tr>
            <th>ID</th>
            <th>Titre</th>
            
            <th>Date emprunt</th>
            <th>Rendu</th>
        </tr>

            <xsl:for-each select="livre">
                <tr>
                    <td><xsl:value-of select="@id"/></td>
                    <td><xsl:value-of select="@titre"/></td>
                    <td><xsl:value-of select="@dateEmprunt"/></td>
                    <td><xsl:value-of select="@rendu"/></td>
                </tr>
            </xsl:for-each>
    
    </table>
    </xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>