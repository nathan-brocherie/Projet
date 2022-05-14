<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Connexion</title>
</head>
<body>

<font color="red">
    <c:if test="${not empty msg }">

    <c:out value="${msg}">
    </c:out>
</c:if>
</font>

<form method="post" action="LoginServlet">

    <div>
        Numéro : <input type="password" name="num" /> <br />
    </div>

    <input type="submit" value="OK" />

</form>

</body>
</html>
