<%@ page import="com.ceica.booklike.models.ModeloBase" %><%
    //Código para evitar el fallo de conexión con la base de datos.
    //Alternativa, configurar un pool de conexiones en el servidor tomcat
    ModeloBase modeloBase=new ModeloBase() {
        @Override
        protected String getNombreTabla() {
            return null;
        }
    };
    modeloBase.getConnection();
%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "BooksLikes" %>
</h1>
<img src="" alt="">
<br/>
<a href="hello-servlet">HelloServlet</a>
</body>
</html>