<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>

<center>

    <div>
        <a href="CoursServlet?action=new">Ajouter un Panier</a> <a
            href="CoursServlet?action=list">Lister les paniers</a>
    </div>

    <c:if test="${not empty model}">
        <h2>Editer un panier</h2>

        <form action="CoursServlet" method="post">
            <input type="hidden" name="id">
            <div>
                Produit : <input type="text" name="intitule"
                                  value="${model.cours.intitule}" />
            </div>
            <div>
                Commerçant : <input type="text" name="coef" value="${model.cours.coef}" />
            </div>
            <div>
                Localisation : <input type="text" name="duree"
                               value="${model.cours.duree}" />
            </div>
            <div>
                Catégorie : <input type="text" name="categorie" />
            </div>
            <div>
                <input type="submit" value="Modifier" name="action" />
            </div>
        </form>

    </c:if>

    <c:if test="${empty model}">
        <h2>Ajouter un panier</h2>

        <form action="CoursServlet" method="post">
            <input type="hidden" name="id">
            <div>
                Panier : <input type="text" name="intitule" />
            </div>
            <div>
                Commerçant : <input type="text" name="coef" />
            </div>
            <div>
                Localisation : <input type="text" name="duree" />
            </div>
            <div>
                Catégorie : <input type="text" name="categorie" />
            </div>
            <div>
                <input type="submit" value="Ajouter" name="action" />
            </div>
        </form>

    </c:if>

</center>

</body>
</html>
