<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="font.css"/>
    <title>Recherche</title>
</head>
<body>

<center>

    <div>
        <h2>Fais ton choix</h2>

        <form method="post" action="Recherche.jsp">
            Localisation:
            <select name="localisation">
                <option>Grandmont</option>
                <option>Tanneur</option>
            </select>
            Catégorie :
            <select name="Categorie">
                <option>Fruits et Légumes</option>
                <option>Repas</option>
            </select>
            Commerçant :
            <select name="commercant">
                <option>RU</option>
                <option>Supermarché</option>
                <option>Grossiste</option>
            </select>
        </form>
    </div>

    </br>

    <div>
        <table border="2">
            <thead>Liste de recherche</thead>
            <tbody>
            <tr>
                <td>Commerçant</td>
                <td>Localisation</td>
                <td>Catégorie</td>
                <td>Produit</td>
                <td>Réservé</td>
            </tr>
            <tr>
               <%-- <c:forEach var="panier" items="${model.panier}"> --%>
            <tr>
                <td><c:out value="${panier.commercant}"></c:out></td>
                <td><c:out value="${panier.localisation}"></c:out></td>
                <td><c:out value="${panier.categorie}"></c:out></td>
                <td><c:out value="${panier.produit}"></c:out></td>
                <td><input type="checkbox"></td>
            </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>

</center>

</body>
</html>
