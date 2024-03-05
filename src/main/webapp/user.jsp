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
        <button type="submit">Agregar libro</button>
        <button type="submit">Volver</button>
    </div>
    <h2>Nuestra libreria</h2>

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
            </div>
        </div>

        <!-- Ejemplo de libro 2 -->
        <div class="card">
            <img src="assets/images/angelnegro.jpg" class="card-img-top" alt="Portada del Libro 2">
            <div class="card-body">
                <h5 class="card-title">Angel Negro</h5>
                <p class="card-text">Autor: V.C.Andrews</p>
                <p class="card-text">Descripcion: Descripcion del Libro 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
             <i class="fa-solid fa-heart"></i>likes
            </div>
        </div>
        <div class="card">
            <img src="assets/images/crepusculo.jpg" class="card-img-top" alt="Portada del Libro 2">
            <div class="card-body">
                <h5 class="card-title">Crepusculo</h5>
                <p class="card-text">Autor:Stephany Meyer </p>
                <p class="card-text">Descripcion: Descripcion del Libro 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                <i class="fa-solid fa-heart"></i>likes
            </div>
        </div>

        <!-- Agrega más tarjetas según sea necesario -->

    </div>
</div>

<!-- Incluye la biblioteca Bootstrap JS al final del cuerpo para mejores prácticas de rendimiento -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
