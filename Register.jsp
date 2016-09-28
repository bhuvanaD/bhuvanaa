
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>



.container
{
 padding:20px 50px;
	font-size: 20px;
	text-align: center;
	position: relative;
    left: 200px;
 color: rgb(75, 113, 188);

}
p
{

 text-align: center;
font-size: 24px;
position: relative;
    left: 20px;
 color: green;

}
button

{
 text-align: center;
position: relative;
    left: 280px;

}





</style>


<body background ="F:\Users\sampleweb\src\main\webapp\images\maxresdefault.jpg">

<script type="text/javascript">


function validateForm() {
    var x = document.forms["myForm"]["name"].value;
    if (x == null || x == "") {
        alert("Name must be filled out");
        return false;
    }

    var y = document.forms["myForm"]["id"].value;
    if (y == null || y == "") {
        alert("userid must be filled out");
        return false;
    }
 if (!(/(\w+)\@(\w+)\.[a-zA-Z]/g ).test(document.myForm.email.value) )  
      {  
        alert("You have entered an invalid email address!")  
        return (false)   
      }  
     
    var phoneno = document.forms["myForm"]["mobile"].value;
    if (phoneno == null || phoneno == "") {
        alert("phone number  must be filled out");
        return false;
    }

   else if(phoneno.length<10)
   {
   alert("must be 10 digits");
    return false;
     }

    var add = document.forms["myForm"]["address"].value;
    if (add == null || add == "") {
        alert("address must be filled out");
        return false;
    }

    var pass = document.forms["myForm"]["password"].value;
    if (pass == null || pass == "") {
        alert("password must be filled out");
        return false;
    }

   else if(pass.length<4)
   {
   alert("password must be 7 digits");
  return false;
   }

   var cpass = document.forms["myForm"]["confirmpass"].value;
  if (cpass == null || cpass == "") {
    alert("confirm password must be filled out");
    return false;
    }

   else if(pass == cpass)
   {
   alert("login succssfullly");
   return true;
   }

  else
  {
   alert("password doest not match");
   return false;
   }  



  }



</script>

</head>







	<p>  REGISTRATION FORM </p> <br> <br>


<c:url var="addAction" value="RegisterSuccess">
		</c:url>
       

<form:form  method="post" action="${addAction}"  commandName="Userdetails" name="myForm" onsubmit="return validateForm()"    > 
 <div class="container">
	<div class="form-group">
    <label class="control-label col-sm-2">  Name</label>
    <div class="col-sm-4">
    <input type="text" class="form-control" name="name" required="true"/>
     </div>
     
</div><br> <br>

<div class="form-group">
    <label class="control-label col-sm-2"> Id</label>
    <div class="col-sm-4">
    <input type="text" class="form-control" name="id" required="true"/>
     </div>
</div><br> <br>
		
        
        <div class="form-group">
    <label class="control-label col-sm-2"> Email</label>
    <div class="col-sm-4">
    <input type="text" class="form-control" name="email" required="true"/>
     </div>
</div><br><br>

        <div class="form-group">
    <label class="control-label col-sm-2"> Phoneno</label>
    <div class="col-sm-4">
    <input type="text" class="form-control" name="mobile" required="true"/>
     </div>
</div><br><br>

       <div class="form-group">
    <label class="control-label col-sm-2"> Address</label>
    <div class="col-sm-4">
    <input type="text" class="form-control" name="address" required="true"/>
     </div>
</div><br><br>


	<div class="form-group">
    <label class="control-label col-sm-2">Password</label>
    <div class="col-sm-4">
    <input type="text" class="form-control" name="password" required="true"/>
     </div>
</div><br><br>

		<div class="form-group">
    <label class="control-label col-sm-2"> Confirm Password</label>
    <div class="col-sm-4">
    <input type="text" class="form-control" name="confirmpass" required="true"/>
     </div>
</div><br><br>
		

        <div class="button">

       <center><button type="submit" class="btn btn-success btn-lg pull-left">SUBMIT</button></center>
</div>

</div>
 </form:form>


</body>
</html>
