<%--
  Created by IntelliJ IDEA.
  User: Nathan Brocherie
  Date: 12/05/2022
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>

<center>

    <div>
        <a href="CoursServlet?action=new">Ajouter un cours</a> <a
            href="CoursServlet?action=list">Lister les cours</a>
    </div>

    <c:if test="${not empty model}">
        <h2>Editer un produit</h2>

        <form action="CoursServlet" method="post">
            <input type="hidden" name="id">
            <div>
                Produit : <input type="text" name="intitule"
                                  value="${model.cours.intitule}" />
            </div>
            <div>
                Coef : <input type="text" name="coef" value="${model.cours.coef}" />
            </div>
            <div>
                Durée : <input type="text" name="duree"
                               value="${model.cours.duree}" />
            </div>
            <div>
                <input type="submit" value="Modifier" name="action" />
            </div>
        </form>

    </c:if>

    <c:if test="${empty model}">
        <h2>Ajouter un cours</h2>

        <form action="CoursServlet" method="post">
            <input type="hidden" name="id">
            <div>
                Intitulé : <input type="text" name="intitule" />
            </div>
            <div>
                Coef : <input type="text" name="coef" />
            </div>
            <div>
                Durée : <input type="text" name="duree" />
            </div>
            <div>
                <input type="submit" value="Ajouter" name="action" />
            </div>
        </form>

    </c:if>

</center>

</body>
</html>
