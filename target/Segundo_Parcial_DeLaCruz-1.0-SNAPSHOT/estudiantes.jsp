<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Estudiante"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro Día del Internet</title>
    <style>
        /* Estilos CSS */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://ardos.com.br/wp-content/uploads/2020/08/Depositphotos_83082692_xl-2015-scaled.jpg ');
            background-size: cover;
            background-position: center;
            height: 100vh;
        }
        .overlay {
            background-color: rgba(0, 0, 0, 0.5);
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
        header {
            background-color: rgba(0, 0, 0, 0.7);
            color: #fff;
            padding: 20px;
            text-align: center;
            position: relative;
            z-index: 1;
        }
        header h1 {
            margin: 0;
            font-size: 32px;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: relative;
            z-index: 1;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        .edit-link, .delete-link {
            text-decoration: none;
            color: #007bff;
            margin-right: 10px;
        }
        .edit-link:hover, .delete-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <header>
        <h1>Registro Día del Internet</h1>
        <p>SEGUNDO PARCIAL <br> 
        Nombre: Rodrigo Americo De La Cruz <br>
        CI: 138584969 LP</p>
    </header>
    <div class="container">
        <a href="EstudianteController?action=add" class="btn">Nuevo Estudiante</a>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Seminario</th>
                    <th>Confirmado</th>
                    <th>Fecha Inscripcion</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${estudiantes}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nombre}</td>
                        <td>${item.apellidos}</td>
                        <td>${item.seminario}</td>
                        <td>
                            <input type="checkbox" disabled="disabled" ${item.confirmado ? 'checked' : ''} />
                        </td>
                        <td>${item.fecha_inscripcion}</td>
                        <td><a href="EstudianteController?action=edit&id=${item.id}" class="edit-link">Editar</a></td>
                        <td><a href="EstudianteController?action=delete&id=${item.id}" class="delete-link">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
