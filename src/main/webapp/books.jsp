<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Libros</title>
    <!-- Enlaza la hoja de estilo de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2>Lista de Libros</h2>

    <!-- Card Deck de Bootstrap para mostrar la lista de libros -->
    <div class="card-deck mt-4">
        <!-- Ejemplo de libro 1 -->
        <div class="card">
            <img src="assets/images/dune.jpg" class="card-img-top" alt="Portada del Libro 1">
            <div class="card-body">
                <h5 class="card-title">Dune</h5>
                <p class="card-text">Autor: Frank Herbert</p>
                <p class="card-text">Descripción: Descripción del Libro 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
        </div>

        <!-- Ejemplo de libro 2 -->
        <div class="card">
            <img src="assets/images/angelnegro.jpg" class="card-img-top" alt="Portada del Libro 2">
            <div class="card-body">
                <h5 class="card-title">Angel Negro</h5>
                <p class="card-text">Autor: V.C.Andrews</p>
                <p class="card-text">Descripcion: Descripcion del Libro 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
        </div>
        <div class="card">
            <img src="assets/images/crepusculo.jpg" class="card-img-top" alt="Portada del Libro 2">
            <div class="card-body">
                <h5 class="card-title">Crepusculo</h5>
                <p class="card-text">Autor:Stephany Meyer </p>
                <p class="card-text">Descripcion: Descripcion del Libro 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
        </div>
        <!-- Agrega más tarjetas según sea necesario -->

    </div>
</div>

<!-- Incluye la biblioteca Bootstrap JS al final del cuerpo para mejores prácticas de rendimiento -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
