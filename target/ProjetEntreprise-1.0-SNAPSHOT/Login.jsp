<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="font.css"/>
    <title>Connexion</title>
</head>
<body>
<center>
    <div>
        <font color="red">
            <c:if test="${not empty msg }">

                <c:out value="${msg}">
                </c:out>
            </c:if>
        </font>

        <form method="post" action="LoginServlet">

            <div>
                Numéro : <input type="password" name="num"/> <br/>
            </div>

            <input type="submit" value="OK"/>

        </form>
    </div>
</center>
</body>
</html>
