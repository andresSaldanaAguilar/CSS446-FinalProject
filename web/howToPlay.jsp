<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!--PLantilla del head-->
        <jsp:include page="/WEB-INF/head.jsp">
            <jsp:param name="title" value="howToPlay" />
        </jsp:include>
        <!--no estan en sus respectivos lugares porque pierden formato :(-->
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <style>
        .mySlides {display:none}
        .w3-left, .w3-right, .w3-badge {cursor:pointer;color:darkslategray;}
        .w3-badge {height:20px;width:20px;padding:0}
        </style>
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
        
            <!--slider-->
            <div class="panel panel-header">
                <h1 style="text-align:center;font-family:Pacifico">Instrucciones</h1>
                
                <div style="padding-bottom:3%;padding-top:1%;">
                    <div class="w3-content w3-display-container" style="max-width:800px">
                      <img class="mySlides" src="assets/img/inicio.jpg" style="width:800px;height:500px">
                      <img class="mySlides" src="assets/img/Seleccion.jpg" style="width:800px;height:500px">
                      <img class="mySlides" src="assets/img/PArtida1.jpg" style="width:800px;height:500px">
                      <img class="mySlides" src="assets/img/PArtida2.jpg" style="width:800px;height:500px">
                      <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
                        <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
                        <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>

                      </div>
                    </div>
                </div>
            </div>
        </div>
        <img src="assets/img/inicio.png" style="width:100%">
        <!--PLantilla del footer-->
        <jsp:include page="/WEB-INF/footer.jsp" />
        <script>
            var slideIndex = 1;
            showDivs(slideIndex);

            function plusDivs(n) {
              showDivs(slideIndex += n);
            }

            function currentDiv(n) {
              showDivs(slideIndex = n);
            }

            function showDivs(n) {
              var i;
              var x = document.getElementsByClassName("mySlides");
              var dots = document.getElementsByClassName("demo");
              if (n > x.length) {slideIndex = 1}    
              if (n < 1) {slideIndex = x.length}
              for (i = 0; i < x.length; i++) {
                 x[i].style.display = "none";  
              }
              for (i = 0; i < dots.length; i++) {
                 dots[i].className = dots[i].className.replace(" w3-white", "");
              }
              x[slideIndex-1].style.display = "block";  
              dots[slideIndex-1].className += " w3-white";
            }
        </script>
    </body>
</html>
