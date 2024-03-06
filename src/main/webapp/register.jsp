<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>

    <link rel="stylesheet" type="text/css" href="assets/css/register.css"> <!-- Enlaza tu archivo de estilos si es necesario -->
</head>
<body>

<div class="login-container">
    <h2>Registro</h2>
    <form action="processLogin.jsp" method="post">
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" required>

        <a href="user"><button type="submit">Registrar</button></a>
        <a href="index"><button type="submit">Cancelar</button></a>
    </form>
</div>

</body>
</html>