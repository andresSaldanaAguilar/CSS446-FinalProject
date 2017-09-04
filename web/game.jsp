<%@page import="game.Game"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="/WEB-INF/head.jsp">
            <jsp:param name="title" value="Game" />
        </jsp:include>
    </head>
    <jsp:useBean id="game" scope="session" class="game.GameController" />
    <body>
        <div class="container">

                <div class="page-header">
                    <h4><a href="./" class="pull-right" style="color:darkslategray"><i class="fa fa-home fa-3x" aria-hidden="true"></i></a></h4>
                    <h1 style="font-family:Pacifico">Tic Tac Toe</h1>
                </div>

            <%
                //muestra quien gano si el juego termino
                if (game.isGameEnded()) {
                    out.println("<div class=\"row\"><div class=\"col-md-6 col-md-offset-3 text-center\">");
                    switch (game.getWinner()) {
                        case User:
                            out.println("<div class=\"alert\" style=\"background-color:#84EE89\"><p><span class=\"glyphicon glyphicon-thumbs-up text-lg\"></span></p>You win!</div>");
                            break;
                        case Computer:
                            out.println("<div class=\"alert\" style=\"background-color:#DA6666\"><p><span class=\"glyphicon glyphicon-thumbs-down text-lg\"></span></p>You lose!</div>");
                            break;
                        case NoBody:
                        default:
                            out.println("<div class=\"alert\" style=\"background-color:#FAFF84\">Tie!</div>");
                    }
                    out.println("</div></div>");
                }
            %>

            <!--dibuja el tablero 3x3-->

                <table class="ttt-table" style="display:in">
                <%
                    int position = 1;
                    for (int i = 0; i < Game.ROWS; i++) {
                        out.println("<tr>");
                        for (int j = 0; j < Game.COLS; j++) {
                            out.print(game.getCellHTML(position++));
                        }
                        out.println("</tr>");
                    }
                %>
            </table>

            <%
                if (game.isGameEnded()) {
                   
                    out.println("<form action=\"./play\" method=\"post\"><div class=\"espace-top-lg row\"><div class=\"col-md-6 col-md-offset-3\"><button type=\"submit\" name=\"user\" class=\"btn btn-primary btn-lg btn-block\"><i class=\"fa fa-repeat\" aria-hidden=\"true\"></i> &nbsp &nbsp Play again</button></div></div></form>");
                }
            %>
 
        </div>
        
        
    <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
