"# TpXml1" 
"# TpXml1" 
Ce projet consiste à réaliser une application de gestion de bibliothèque en utilisant les technologies XML, DTD et XSL.

L'application permet d'afficher les informations des étudiants ainsi que les livres qu'ils ont empruntés.

<img width="1900" height="797" alt="image" src="https://github.com/user-attachments/assets/8ab90324-8e72-4be2-8980-0878619b50ea" />
=======
#TP XML – Gestion de bibliothèque
1. Présentation du projet
Ce projet est une petite application de gestion de bibliothèque réalisée avec XML, DTD et XSLT. Le fichier XML contient les étudiants et les livres qu’ils ont empruntés. La DTD définit la structure et les règles du document XML. La feuille XSL transforme les données XML en une page HTML présentée sous forme de fiches étudiants et de tableaux de livres.
2. Technologies utilisées
- XML : stockage des données des étudiants et de leurs emprunts.
- DTD : validation de la structure du document XML.
- XSLT : transformation du document XML en HTML.
- HTML / CSS : affichage et mise en forme du résultat.
3. Structure du projet
TpXml1-main/
├── tp.xml       # Données de la bibliothèque
├── tp.dtd       # Règles et structure du document XML
├── tp.xsl       # Transformation XML vers HTML
├── resultat.html # Résultat HTML généré
└── README.md    # Documentation du projet
4. Code du projet
4.1 Fichier tp.xml
Le fichier XML contient deux étudiants et leurs emprunts. Il fait référence à la feuille de style XSL et à la DTD.
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="tp.xsl"?>
<!DOCTYPE biblio SYSTEM "tp.dtd">

<biblio>
    <etudiant code="E01" nom="Ali" prenom="Ahmed" age="22">
        <livre id="L01" titre="XML" dateEmprunt="2026-10-01" rendu="oui"/>
        <livre id="L02" titre="Java" dateEmprunt="2026-10-10" rendu="non"/>
    </etudiant>
    <etudiant code="E02" nom="Sara" prenom="Nadia" age="23">
        <livre id="L01" titre="Python" dateEmprunt="2026-10-15" rendu="oui"/>
        <livre id="L03" titre="Oracle" dateEmprunt="2026-10-15" rendu="non"/>
    </etudiant>
</biblio>
4.2 Fichier tp.dtd
La DTD impose au moins un étudiant dans biblio, au moins un livre par étudiant et définit les attributs obligatoires. L'attribut rendu accepte oui ou non et prend non par défaut.
<!ELEMENT biblio (etudiant+)>
<!ELEMENT etudiant (livre+)>
<!ELEMENT livre EMPTY>

<!ATTLIST etudiant
    code CDATA #REQUIRED
    nom CDATA #REQUIRED
    prenom CDATA #REQUIRED
    age CDATA #REQUIRED
>

<!ATTLIST livre
    id NMTOKEN #REQUIRED
    titre CDATA #REQUIRED
    dateEmprunt CDATA #REQUIRED
    rendu (oui | non) "non"
>
4.3 Fichier tp.xsl
La feuille XSL parcourt les étudiants avec xsl:for-each, affiche leurs informations puis parcourt leurs livres pour construire un tableau HTML. Le CSS intégré donne une présentation visuelle à la page.
La feuille utilise XSLT 1.0 pour être compatible avec les moteurs XSLT intégrés aux navigateurs courants. Les instructions utilisées dans ce projet sont compatibles avec XSLT 1.0.

Extrait principal :
<xsl:for-each select="biblio/etudiant">
    <ul>
        <li>Code : <xsl:value-of select="@code"/></li>
        <li>Nom : <xsl:value-of select="@nom"/></li>
        <li>Prénom : <xsl:value-of select="@prenom"/></li>
        <li>Âge : <xsl:value-of select="@age"/></li>
    </ul>

    <table>
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
5. Résultat obtenu

![alt text](image.png)
(Ajout du README et du resultat HTML)
