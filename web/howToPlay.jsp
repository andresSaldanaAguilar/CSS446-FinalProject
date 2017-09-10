<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!--PLantilla del head-->
        <jsp:include page="/WEB-INF/head.jsp">
            <jsp:param name="title" value="howToPlay" />
        </jsp:include>
    </head>
    <!--sesion-->
    <jsp:useBean id="game" scope="session" class="game.GameController" />
    <body>
        

        
        
        <div class="container">
            
        <!--cabecera-->
        <nav class="page-header">
                    <h4><a href="./" class="pull-right" style="color:darkslategray"><i class="fa fa-question-circle fa-3x" aria-hidden="true"></i></a></h4>
                    <h1 style="font-family:Pacifico">Tic Tac Toe</h1>            
        </nav>
        
        <div class="panel">
            <!--mostrar imagenes aqui-->
        </div>
        </div>
        <!--PLantilla del footer-->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
