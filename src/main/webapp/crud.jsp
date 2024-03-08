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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>

<div class="container mt-5">
    <div class="cabecera">
        <a href="?logout=salir">
            <button type="submit">Salir</button>
        </a>
        <a href="user">
            <button type="submit">Volver</button>
        </a>
        <button type="button" data-bs-toggle="modal" onclick="agregarLibro()">
            Agregar
        </button>
    </div>
    <h2>Tu libreria</h2>

    <!-- Card Deck de Bootstrap para mostrar la lista de libros -->
    <div class="card-deck mt-4">

        <c:forEach items="${booklist}" var="book">
            <div class="card">
                <img src="assets/images/dune.jpg" class="card-img-top" alt="Portada <c:out value="${book.title}"/>">
                <div class="card-body">
                    <h5 class="card-title"><label id="title${book.idbook}"><c:out value="${book.title}"/></label></h5>
                    <p class="card-text"><label id="author${book.idbook}"><c:out value="${book.author}"/></label></p>
                    <p class="card-text"><label id="description${book.idbook}"><c:out value="${book.description}"/></label></p>
                    <p class="card-text"><label id="isbn${book.idbook}"><c:out value="${book.isbn}"/></label></p>
                    <span class="icon-space"></span>
                    <i onclick="editarLibro(${book.idbook})" class="fa-solid fa-pen-to-square"></i>
                    <span class="icon-space"></span>
                    <i onclick="eliminarLibro(${book.idbook})" class="fa-regular fa-trash-can"></i>
                </div>
            </div>
        </c:forEach>

    </div>
</div>

<div class="modal fade" id="editarLibroModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editarModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="crud" method="post">
                <div class="modal-body">
                    <input type="hidden" name="idbook" id="idbook">
                    <input type="text" name="title" id="title">
                    <input type="text" name="author" id="author">
                    <input type="text" name="description" id="description">
                    <input type="text" name="isbn" id="isbn">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="agregarLibroModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="agregarModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="crud" method="post">
                <div class="modal-body">
                    <input type="text" name="newTitle" id="newTitle" placeholder="Titulo">
                    <input type="text" name="newAuthor" id="newAuthor" placeholder="Autor">
                    <input type="text" name="newDescription" id="newDescription" placeholder="descripción">
                    <input type="text" name="newIsbn" id="newIsbn" placeholder="ISBN">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function eliminarLibro(idbook) {
        var baseUrl = window.location.href + "?borraridbook=" + idbook;

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
                console.log(data);
                location.reload();
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }

    function editarLibro(idbook) {
        document.getElementById("idbook").value = idbook;

        let element = "title" + idbook;
        document.getElementById("title").value = document.getElementById(element).innerHTML;
        element = "author" + idbook;
        document.getElementById("author").value = document.getElementById(element).innerHTML;
        element = "description" + idbook;
        document.getElementById("description").value = document.getElementById(element).innerHTML;
        element = "isbn" + idbook;
        document.getElementById("isbn").value = document.getElementById(element).innerHTML;

        // Abre el modal
        var myModal = new bootstrap.Modal(document.getElementById('editarLibroModal'));
        myModal.show();
    }

    function agregarLibro() {
        // Abre el modal
        var myModal = new bootstrap.Modal(document.getElementById('agregarLibroModal'));
        myModal.show();
    }
</script>


<!-- Incluye la biblioteca Bootstrap JS al final del cuerpo para mejores prácticas de rendimiento -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
