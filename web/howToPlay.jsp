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
        .w3-left, .w3-right, .w3-badge {cursor:pointer}
        .w3-badge {height:13px;width:13px;padding:0}
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
                <h1>Instrucciones</h1>
                
                <div style="padding-bottom:3%;padding-top:1%;">
                    <div class="w3-content w3-display-container" style="max-width:800px">
                      <img class="mySlides"  src="http://hbu.h-cdn.co/assets/16/27/1600x800/landscape-1467993669-index-ugliest-home-colors.jpg" style="width:100%;border-radius: 10px;">
                      <img class="mySlides" src="http://assets.teenvogue.com/photos/575051355f45ae912804411c/master/pass/1464813532-syn-svn-1464022582-ugliest-color.jpg" style="width:100%">
                      <img class="mySlides" src="https://www.gannett-cdn.com/-mm-/2a81d64cead9cdaa11f74cfa04454c0f870b159d/c=0-199-434-444&r=x803&c=1600x800/local/-/media/2017/08/14/Phoenix/Phoenix/636383197388875316-prince-announces-pantone-custom-color-purple.jpg" style="width:100%">
                      <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
                        <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
                        <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
                      </div>
                    </div>
                </div>
            </div>
        </div>
        
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
