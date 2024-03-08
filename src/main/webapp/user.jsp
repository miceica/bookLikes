<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mis libros</title>

    <!-- Enlaza la hoja de estilo de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/user.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<div class="container mt-5">
    <div class="cabecera">
        <a href="crud"><button type="submit">Mis libros</button></a>
        <%--<a href="crud2"><button type="submit">Mis libros</button></a>--%>
        <a href="?logout=salir"><button type="submit">Salir</button></a>
    </div>
    <h2>Nuestra libreria</h2>

    <!-- Card Deck de Bootstrap para mostrar la lista de libros -->
    <div class="card-deck mt-4">

        <c:forEach items="${bookDTOlist}" var="book">
            <div class="card">
                <img src="assets/images/dune.jpg" class="card-img-top" alt="Portada <c:out value="${book.title}"/>">
                <div class="card-body">
                    <h5 class="card-title"><c:out value="${book.title}"/></h5>
                    <p class="card-text">Autor: <c:out value="${book.author}"/></p>
                    <p class="card-text">Descripción: <c:out value="${book.description}"/></p>
                    <i onclick="favorito(${book.idbook})" class="fa-solid fa-heart"></i><label id="fav${book.idbook}"><c:out value="${book.favoritos}"/></label>
                </div>
            </div>
        </c:forEach>

    </div>
</div>

<script>
   function favorito(idbook){
       var baseUrl = window.location.href + "?idbook=" + idbook;

       fetch(baseUrl, {
           method: 'GET', // Puedes cambiar este método según tu necesidad (POST, PUT, DELETE, etc.)
           headers: {
               // Puedes ajustar el tipo de contenido según tu necesidad
               //'Content-Type': 'application/json'
               'Content-Type': 'text',
           },
       })
           .then(response => response.text()) // Procesamos la respuesta como JSON
           .then(data => {
                    let elemento="fav"+idbook;
                    document.getElementById(elemento).innerHTML=data;
          console.log(data);

           })
           .catch(error => {
               console.error('Error:', error);
           });
   }
</script>

<!-- Incluye la biblioteca Bootstrap JS al final del cuerpo para mejores prácticas de rendimiento -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
