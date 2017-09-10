<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--plantilla del head-->
        <jsp:include page="/WEB-INF/head.jsp">
            <jsp:param name="title" value="Select" />
        </jsp:include>
    </head>
    <!--sesion-->
    <jsp:useBean id="game" scope="session" class="game.GameController" />
    <body>
        <div class="container">
                          
                <!--cabecera-->
                <nav class="page-header">
                    <h4><a href="./" class="pull-right" style="color:darkslategray"><i class="fa fa-home fa-3x" aria-hidden="true"></i></a></h4>
                    <h1 style="font-family:Pacifico">Tic Tac Toe</h1>
                </nav>
                
                <!--formulario-->
                <form action="./play" method="post">
                <div class="panel" align="center">
                        <h1 align="center" style="color:darkslategray; display:inline-block;padding-right:25%;"><i class="fa fa-circle-o fa-5x fa-border" aria-hidden="true"></i></h1>
                        <h1 align="center" style="color:darkslategray; display:inline-block"><i class="fa fa-times fa-5x fa-border" aria-hidden="true"></i></h1>
                        <br><br>
                        
                        <div class="btn-group btn-group-justified" role="group" aria-label="...">
                            <div class="btn-group" role="group">
                              <button type="submit" name="token" value="circle" class="btn btn-default btn-lg" style="background-color:darkslategray;color:white">Circle</button>
                            </div>
                            <div class="btn-group" role="group">
                              <button type="submit" name="token" value="cross" class="btn btn-default btn-lg" style="background-color:darkslategray;color:white">Cross</button>
                            </div>
                        </div>    
                </div>             
            </form>
                
        </div>
        <!--plantilla del footer-->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
