<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!--PLantilla del head-->
        <jsp:include page="/WEB-INF/head.jsp">
            <jsp:param name="title" value="Home" />
        </jsp:include>
    </head>
    <!--sesion-->
    <jsp:useBean id="game" scope="session" class="game.GameController" />
    <body>
        

        
        <div class="container">
            
        <!--cabecera-->
        <nav class="page-header">
                    <h4><a href="howToPlay.jsp" class="pull-right" style="color:darkslategray"><i class="fa fa-question-circle fa-3x" aria-hidden="true"></i></a></h4>
                    <h1 style="font-family:Pacifico">Tic Tac Toe</h1>            
        </nav>
            
                <div class="panel">
                        <h1 align="center" style="color:darkslategray"><i class="fa fa-slack fa-5x" aria-hidden="true"></i></h1>
                        <h1 align="center" style="color:darkslategray"><i class="fa fa-hand-pointer-o fa-5x" aria-hidden="true"></i></h1>
                        <br><br>
                        <a href="select.jsp" class="btn btn-default btn-lg btn-block" style="background-color:darkslategray;color:white">Play</a>
                </div>
        </div>
        <!--PLantilla del footer-->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
