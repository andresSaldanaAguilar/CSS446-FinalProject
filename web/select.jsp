<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/WEB-INF/head.jsp">
            <jsp:param name="title" value="Home" />
        </jsp:include>
    </head>
    <jsp:useBean id="game" scope="session" class="game.GameController" />
    <body>
        <div class="container">
            <form action="./play" method="post">
                <nav class="page-header">
                    <h1 style="font-family:Pacifico">Tic Tac Toe</h1>
                </nav>
                <div class="panel" align="center">
                        <br><h1 align="center" style="color:darkslategray;font-family:Pacifico">Select your simbol</h1><br>
                        <h1 align="center" style="color:darkslategray; display:inline-block;padding-right:25%;"><i class="fa fa-circle-o fa-5x fa-border" aria-hidden="true"></i></h1>
                        <h1 align="center" style="color:darkslategray; display:inline-block"><i class="fa fa-times fa-5x fa-border" aria-hidden="true"></i></h1>
                        <br><br>
                        
                        <div class="btn-group btn-group-justified" role="group" aria-label="...">
                            <div class="btn-group" role="group">
                              <button type="submit" name="user" value="circle" class="btn btn-default btn-lg" style="background-color:darkslategray;color:white">Circle</button>
                            </div>
                            <div class="btn-group" role="group">
                              <button type="submit" name="user" value="cross" class="btn btn-default btn-lg" style="background-color:darkslategray;color:white">Cross</button>
                            </div>
                        </div>    
                </div>
                
            </form>
        </div>
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
