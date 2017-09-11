<!--plantilla-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta charset="UTF-8" />
<meta name="author" content="Andres Saldana" />
<meta name="description" content="Tic Tac Toe" />
<meta name="robots" content="noindex, nofollow, noarchive" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon"    type="image/x-icon" href="assets/img/favicon.ico" />
<link rel="icon"  type="image/png"    href="assets/img/favicon.png" />
<link rel="stylesheet" href="assets/css/bootstrap.min.css" media="screen" />
<link rel="stylesheet" href="assets/css/tictactoe.css" media="screen" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" media="screen" />
<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet"/>

<%
    String title = "Tic Tac Toe";
    if (request.getParameter("title") != null)
        title = request.getParameter("title") + " &middot; " + title;
%>
    <title><%= title %></title>