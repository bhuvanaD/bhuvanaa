<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>home page</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
  


.carousel-inner img {
      width: 50%; 
      margin: auto;
      min-height:50px;
  }



  




</style>

<body>

<div class="container">
  <h2>MODERN WORLD</h2>
  <div class="btn-group">
    <button type="button" class="btn btn-primary" onclick="window.location='#'"> Apple  </button>
    <button type="button" class="btn btn-success">  <a href="#" >  Samsung </a> </button> 
    <button type="button" class="btn btn-warning">Sony</button>


     


<ul class="nav navbar-nav">
 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">women bags</a></li>
          <li><a href="#">women dress</a></li>
          <li><a href="#">women shoes</a></li>
        </ul>
      </li>
</ul>
</div>

 <ul class="nav navbar-nav navbar-right">
        <li><a href="LoginHere"><span class="glyphicon glyphicon-log-in" > </span>  Login</a></li>
      </ul>
 <ul class="nav navbar-nav navbar-right">
        <li><a href="Register"><span class="glyphicon glyphicon-user" > </span>  Register</a></li>
      </ul>

  </div>



<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
         <img src="E:\pictures\1index.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236"> 
      </div>

      <div class="item">
        <img src="E:\pictures\im9ages.jpg" alt="Chania" width="200" height="200">
      </div>
    
      <div class="item">
        <img src="E:\pictures\ind2ex.jpg" alt="Flower" width="200" height="150">
      </div>

      <div class="item">
        <img src="E:\pictures\Shopping-Bag-PNG-Picture-180x180.png" alt="Flower" width="200" height="200">
      </div>
    </div>
 <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  
  </div>
</div>



  </div>
  
  
  <br><br> <br> <br> <br> <br>
  <jsp:include page="footer.jsp" />

</body>
</html>













