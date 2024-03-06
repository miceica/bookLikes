<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesión</title>
    <link rel="stylesheet" type="text/css" href="assets/css/login.css"> <!-- Enlaza tu archivo de estilos si es necesario -->
</head>
<body>

<div class="login-container">
    <h2>Iniciar Sesión</h2>
    <form action="" method="post">
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Iniciar Sesión</button>
        <button type="submit">Cancelar</button>
    </form>
</div>

</body>
</html>
