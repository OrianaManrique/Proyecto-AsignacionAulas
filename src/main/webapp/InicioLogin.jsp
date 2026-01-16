<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import = "entidad.Aula"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Inicio de sesión</title>
 </head>
    <style>
        :root {
            --color-fondo: #6CB2EB; /* Color Fondo */
            --color-header: #2C3E50; /* Color fondo encabezado*/
            --color-boton: #3490dc; /* Color boton*/
            --color-boton-hover: #2779bd; /* Color boton 2 hover */
            --color-textbox: #ddd;
            --color-error: #ff6347; /* Color de texto de error */
            --color-fondo-error: #f8d7da; /* Fondo del error */
            --radio-borde: 8px; /* Radio de borde general */
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        html, body {
            height: 100%;
        }

        body {
            background-color: var(--color-fondo);
            display: flex;
            flex-direction: column;
        }

        header {
            background-color: var(--color-header);
            padding: 20px;
            color: white;
        }

        .titulo {
            font-size: 20px;
            font-weight: bold;
        }

        .contenedor {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .login {
            width: 400px;
            background: white;
            padding: 30px;
            border-radius: var(--radio-borde);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .logo {
            margin: 0 auto 10px;
        }

        .logo img {
            max-width: 100%;
            width: 90px;
            height: 89px;
            border-radius: 50%; 
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); 
        }

        .form-control {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid var(--color-textbox);
            border-radius: 4px;
            font-size: 14px;
        }

        .btn-iniciar {
            width: 100%;
            padding: 12px;
            background-color: var(--color-boton);
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            margin: 15px 0;
        }

        .btn-iniciar:hover {
            background-color: var(--color-boton-hover);
        }

        .links {
            margin-top: 15px;
            font-size: 14px;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .hyperlink {
            color: var(--color-boton);
            text-decoration: none;
            display: block;
        }

        .hyperlink:hover {
            text-decoration: underline;
        }

        form {
            height: 100%;
            display: flex;
            flex-direction: column;
        }

        .error-message {
            color: var(--color-error);
            border-radius: 4px;
            font-size: 14px;
        }

    </style>
</head>
<body>
    <form id="form1">
        <header>
            <div class="titulo">Asignación de Aulas</div>
        </header>
        
        <div class="contenedor">
            <div class="login">
                <div class="logo">
                    <img src="${pageContext.request.contextPath}/imagenes/logo.jpg"
     alt="Logo" />
                </div>
                
                <input type="text" runat="server" class="form-control" placeholder="Ingrese su polo" />
                <input type="text" runat="server" TextMode="Password" class="form-control" placeholder="Ingrese su contraseña" />
                
                <input type="submit" value="Ingresar" name = "Ingresar" class="btn-iniciar" OnClick="" />

                <div class="error-message">
                    <Label>  </Label>
                </div>

                <div class="links">
                <div class="hyperlink">
                    <label> Para consultas o inconvenientes con el acceso, comuníquese a:omanrique@red.frgp.utn.edu.ar</label>
                </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>