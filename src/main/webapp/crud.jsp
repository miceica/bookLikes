<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mis libros</title>

    <!-- Enlaza la hoja de estilo de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/crud.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<div class="container mt-5">
    <div class="cabecera">
        <button id="agregar" type="submit">Agregar libro</button>
        <a href="user.jsp">id="nombre" <button type="submit">Volver</button></a>
    </div>
    <h2>Mis libros</h2>

    <!-- Card Deck de Bootstrap para mostrar la lista de libros -->
    <div class="card-deck mt-4">
        <!-- Ejemplo de libro 1 -->
        <div class="card">
            <img src="assets/images/dune.jpg" class="card-img-top" alt="Portada del Libro 1">
            <div class="card-body">
                <h5 class="card-title">Dune</h5>
                <p class="card-text">Autor: Frank Herbert</p>
                <p class="card-text">Descripción: Descripción del Libro 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                <i class="fa-solid fa-heart"></i>likes
                <span class="icon-space"></span>
                <i class="fa-solid fa-user-pen"></i>
                <span class="icon-space"></span>
                <i class="fa-regular fa-trash-can"></i>
            </div>
        </div>




        <!-- Agrega más tarjetas según sea necesario -->

    </div>
</div>

<!-- Incluye la biblioteca Bootstrap JS al final del cuerpo para mejores prácticas de rendimiento -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
