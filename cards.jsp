<%-- 
    Document   : cards
    Created on : Oct 15, 2017, 12:21:19 PM
    Author     : Nahla
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="icon" type="image/png" href="logo.jpg" sizes="196x196" />
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<header>
<div class="container" style="margin-bottom: 5px; margin-top: 5px;">
    <div class = "row">
        <div class="text-left">
            <div class = "col-sm-1">
                <img class="img-responsive" src="logo.jpg" style = "margin-left:5px;margin-top: 5px;"/>
            </div>
            <div class = "col-sm-4">
                <h1 style="text-align: left !important;">N Handmade Crafts</h1>
            </div>
        </div>	
        <div class="text-right" style="margin-right: 5px;">
            <div class="col-sm-4-4">
                <ul class="pagination pagination-lg">
                  <li><a style="font-size: 32px;" href="index.html">Home</a></li>
                  <li><a style="font-size: 32px;" href="garlands.jsp">Garlands</a></li>
                  <li><a style="font-size: 32px;" href="frames.jsp">Frames</a></li>
                  <li><a style="font-size: 32px;" href="other.jsp">Others</a></li>
                </ul>
            </div>
        </div>	
    </div> 
</div>
</header>
<div class="container" style="">
<div class="text-center">
    <%
    String path2 = "C://Users//Nahla//Documents//NetBeansProjects//NHandmadeCrafts//web//WEB-INF//cards";
    File folder = new File(path2);
    File[] listOfFiles = folder.listFiles();
    ArrayList paths = new ArrayList();
    for(int i=0;i<listOfFiles.length;i++)
    {
        paths.add("http://127.0.0.1:8887/web/WEB-INF/cards/"+"/"+listOfFiles[i].getName());
    }
    int index = 0;
    double loop = 0.0;
        if((paths.size()%3) == 0)
        {
            loop = paths.size()/3;
        }
        else
        {
            loop = Math.ceil(paths.size()/3)+1;
        }
        for(int i =0; i< loop ; i++)
    {
    %>
    <div style="border: 1px solid #bf5521 !important;border-radius: 5px;padding: 5px;margin: 5px;"> 
    <div class="row">
    <%
    for(int j=0; j<3;j++)
    {
        if(index < paths.size())
        {
    %>
        <img class="img-responsive center-block" src= "<%= paths.get(index)%>"/>
    <%
        index++;
        }
        else{
        break;
        }
    }
    %>
    </div> 
    </div>
    <%
    }
    %>
    </div>
</div>
<footer class="footer bg-6">
    <div class="container text-center">
      <a href="https://www.facebook.com/nhandmadecraft/"><i class="fa fa-facebook"></i></a>
      <a href="#"><i class="fa fa-instagram"></i></a>
      <a href="about.html"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
    </div>
</footer>
</body>
</html>
