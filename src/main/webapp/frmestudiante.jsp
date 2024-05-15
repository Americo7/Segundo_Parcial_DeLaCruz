<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Estudiante"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Nuevo Registro</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://th.bing.com/th/id/OIP.3vhxPSUkEuXVwf5lJRrBwAHaEE?w=1024&h=563&rs=1&pid=ImgDetMain');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            max-width: 600px;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333333;
            margin-bottom: 30px;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        td, th {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #cccccc;
        }
        th {
            background-color: #f2f2f2;
        }
        input[type="text"],
        input[type="date"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="checkbox"] {
            margin-top: 5px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .btn-add {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 50%;
            width: 60px;
            height: 60px;
            line-height: 60px;
            text-align: center;
            font-size: 24px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .btn-add:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Nuevo Registro</h1>
        <form action="EstudianteController" method="post">
            <input type="hidden" name="id" value="${est.id}" />
            <table>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value="${est.nombre}" /></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="${est.apellidos}" /></td>
                </tr>
                <tr>
                    <td>Seminario</td>
                    <td><input type="text" name="seminario" value="${est.seminario}" /></td>
                </tr>
                <tr>
                    <td>Confirmado</td>
                    <td><input type="checkbox" name="confirmado" ${est.confirmado ? 'checked' : ''} /></td>
                </tr>
                <tr>
                    <td>Fecha Inscripcion</td>
                    <td><input type="date" name="fecha_inscripcion" value="${est.fecha_inscripcion}" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Guardar" /></td>
                </tr>
            </table>
        </form>
    </div>
    <a href="#" class="btn-add">+</a>
</body>
</html>
