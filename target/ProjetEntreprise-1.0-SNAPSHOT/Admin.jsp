<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="font.css"/>
    <title>Admin</title>
</head>
<body>

<center>

    <div>
        <h4><a href="Recherche.jsp<%--?action=list--%>">Lister les paniers</a></h4>
    </div>

    <div>

        <c:if test="${not empty model}">
            <h2>Gestion des commercants</h2>

            <form action="CommercantServlet" method="post">
                <input type="hidden" name="id">

                <div>
                    Commerçant : <input type="text" name="commercant" <%--value="${model.commercant}--%>"/>
                </div>

                </br>

                <input type="submit" value="Modifier" name="action"/>

            </form>

        </c:if>
    </div>

    <div>
        <c:if test="${empty model}">
            <h2>Ajouter un panier</h2>

            <form action="PanierServlet" method="post">
                <input type="hidden" name="id">
                <div>
                    Panier : <input type="text" name="panier"/>
                </div>
                <div>
                    Commerçant : <input type="text" name="commercant"/>
                </div>
                <div>
                    Localisation : <input type="text" name="localisation"/>
                </div>
                <div>
                    Catégorie : <input type="text" name="categorie"/>
                </div>
                </br>
                <div>
                    <input type="submit" value="Ajouter" name="action"/>
                </div>
            </form>

        </c:if>

    </div>
</center>

</body>
</html>
