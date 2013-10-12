<%-- 
    Document   : Formulario
    Created on : 06/10/2013, 11:34:43 AM
    Author     : LAB704-00
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <link href="public/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <style>
            body {
                padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
            }
        </style>
        <!-- Bootstrap -->
        <link href="public/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    </head>

    <body>

        <div class="container">

            <h1>EJEMPLO DE FORMULARIO</h1>
            
            <form id="formulario" class="form-horizontal">
                <div class="control-group">
                    <label class="control-label">Tu nombre</label>
                    <div class="controls">
                        <input type="text" id="inputNombre" name="nom" placeholder="jose">
                    </div>
                </div>
                
                <div class="control-group">
                    <label class="control-label">Tu sistema de favorito?</label>
                    <div class="controls">  
                       <select>
                        <option>Linux</option>
                        <option>Windows</option>
                        <option>Mac</option>
                      </select>
                    </div>
                </div>


                <div class="control-group">
                    <label class="control-label">Te gusta en futbol?</label>
                    <div class="controls">  
                       <input type="checkbox" value="">
                    </div>
                </div>

                <div class="control-group">
                  <label class="control-label">Sexo?</label>
                  <div class="controls">  
      
                    <label class="radio">
                      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> Hombre
                    </label>

                    <label class="radio">
                      <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"> Mujer
                    </label>
                  </div>
                </div>

                <div class="control-group">
                    <div class="controls">
                        <button type="submit" class="btn btn-success">Enviar datos</button>
                        <button type="submit" class="btn btn-danger">Restablecer</button>
                    </div>
                </div>

            </form>

        </div> <!-- /container -->


        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="public/bootstrap/js/bootstrap.min.js"></script> 
        <script src="public/jvalidate/jquery.validate.min.js"></script> 
        <script src="public/jvalidate/messages_es.js"></script> 
        
        <script>
        $(function(){
            $("#formulario").validate({
               rules: { 
                nom: {required: true},
                cla: {required: true}
               }
           
            
               
            });
        });
    </script>
        
        
    </body>
</html>
