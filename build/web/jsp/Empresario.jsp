<%-- 
    Document   : Empresario
    Created on : 22/09/2021, 02:11:07 PM
    Author     : Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <!-- Vamos a inciar el cuerpo de la información a solicitar -->
        <form  method="get" action="RegistroEmpresario" >
            <section class="container">
                <h2>Datos del Empresario</h2>
                <div>
                    <s:label> Nick: </s:label>
                        <input type="text" maxlength="20" name="nickUsr" placeholder="Juárez"> 
                        <br/>
                     <s:label >Nombre(s):</s:label>
                        <input type="text" maxlength="70" name="nombreUsr">
                        <br/>
                    <s:label> Apellido Paterno: </s:label>
                        <input type="text" maxlength="70" name="apaternoUsr" placeholder="Juárez"> 
                        <br/>
                    <s:label >Apellido Paterno:</s:label>
                        <input type="text" maxlength="70" name="amaternoUsr">
                        <br/>
                        <s:label >Correo:</s:label>
                    <input type="text" maxlength="70" name="correoUsr">
                    <br/>
                    <s:label >Teléfono:</s:label>
                        <input type="text" maxlength="70" name="telefonoUsr">
                        <br/>
                    
                    <s:label >Contraseña:</s:label>
                        <input type="text" maxlength="10" name="passwdUsr">
                        <br/>
                    <input type="submit" value="Registrarme" >
                </div>

            </section>


        </form>
                    <h3>Nuestros Empresarios</h3>
                    <!-- Se realiza la presentación de esta información 
                    cuando se carga sin necesidad de iniciar sesión -->
                    <s:iterator value="Empresario" status="rowStatus">
                        <s:property value="nombre"/>
                        <s:property value="apaterno"/>
                        <s:property value="amaterno"/>
                        <s:property value="telefono"/>
                        <s:property value="correo"/>
                     
                    </s:iterator>
                    
                    <!-- Colocar una lista desplegable de un arreglo
                    de las empresas de un empresarios-->
                    
                <!--Sección demodificación-->
                
                <form action="ListadoEmpresas" method="post">
                <!--s:select label= "Clave o nombre de la empresa"
                          headerKey="-1" 
                          headerValue="--Seleccionar la empresa --"
                          list="Empresa" name="Empresa"/-->
                    
                
                    
                </form>
                    
                <!--form action="ModificaDatos" method="post" >
                <s:textfield label="Nombre de la empresa"
                             name="nombreEmp" readonly="true"/>
                <br/>
                <s:textfield label="Descripción"
                             name="desEmpresa"/>
                <br/>
                <s:textfield label="Dirección empresa"
                             name="dirEmpresa"/>
                <br/>
                <s:textfield label="Teléfono"
                             name="telEmpresa"/>
                <br/>
                <input type="submit" value="Actualizar datos"/>
                </form
                -->
                
                    
    </body>
</html>
