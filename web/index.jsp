<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
                <div class="panel">
                        <h1 align="center" style="color:darkslategray"><i class="fa fa-slack fa-5x" aria-hidden="true"></i></h1>
                        <h1 align="center" style="color:darkslategray"><i class="fa fa-hand-pointer-o fa-5x" aria-hidden="true"></i></h1>
                        <br><br>
                        <a href="select.jsp" class="btn btn-default btn-lg btn-block" style="background-color:darkslategray;color:white">Play</a>
                </div>
            </form>
        </div>
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
