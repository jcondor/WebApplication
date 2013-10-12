<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <link href="public/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <style type="text/css">
            body {
              padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
            }
        </style>
        <!-- Bootstrap -->
        <link href="public/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
        
    </head>
    
    <body>
        
      <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
     <!--     <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
     -->
          <a class="brand" href="#">WebbApp</a>
          
  
        </div>
      </div>
    </div>

    <div class="container">

      <h1>EJEMPLO DE FORMULARIO</h1>
      <p>Este es un ejemplo de formulario.</p>

      <form id="formulario" class="form-horizontal">
            <div class="control-group">
              <label class="control-label" for="inputNombre">Nombre</label>
              <div class="controls">
                <input type="text" id="inputNombre" name="nom" placeholder="Ingresa Nombre">
              </div>
            </div>
          
            <div class="control-group">
              <label class="control-label" for="inputClave">Clave</label>
              <div class="controls">
                <input type="password" id="inputClave" name="cla" placeholder="Ingresa Clave">
              </div>
            </div>
          
            <div class="control-group">
              <div class="controls">
                <button type="submit" class="btn">Enviar</button>
              </div>
            </div>
    </form>
      
    </div> <!-- /container -->
     
    
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="public/bootstrap/js/bootstrap.min.js"></script> 
    <script src="public/jvalidate/jquery.validate.min.js"></script> 
    <script src="public/jvalidate/messages_es.js"></script> 
    
    <script type="text/javascript">
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
