<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<html>
<head>

<title>Login page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
table, th, td {
	font-size: 22px;
	
}

table {
	background-color: DarkBlue;
}
h2
{
 text-align: center;

}
body
{
background: url(F:\Users\sampleweb\src\main\webapp\images\imag3es.jpg) no-repeat center fixed; 
  background-size: cover;            
}
form
{
width: 500px;
height: 400px;
background-color: lightblue ;
border-radius: 10px;
box-shadow: 0 0 30px #358077;

text-align: center;
margin: 0 auto;
margin-top: 150px;

}
input[type="text"],input[type="password"],input[placeholder="enter your name"]
{
height: 45px;
width: 300px;
font-size: 18px;
margin-bottom: 20px;
background color: #fff;
padding-left: 30px;

}




.btn-login
{padding: 15px 30px;
cursor: pointer;
color: #fff;
border-radius: 4px;
border: none;
background-color: #2ECC71;
border-bottom: 4px solid #27AE60;
}



</style>
<script type="text/javascript">
	function validateForm() {
		var name = document.forms["myform"]["id"].value;
		if (name == null || name == "") {
			alert("userid must be filled out");
			return false;

		}
		var pass = document.forms["myform"]["password"].value;
		if (password == null || password == "") {
			alert("password must be filled out");
			return false;
		} else if (pass.length < 4 && pass.length < 8) {
			alert("must be 6length");
			return false;
		} else {
			alert("login successfully");
			return true;
		}
	}
</script>
</head>

<br />
<br />
<body  >



	<h1 align="center">WELCOME TO MODERN WORLD</h1>

	<h2>LOGIN FORM</h2>
	<br>


	<c:url var="addAction" value="/Login">
	</c:url>



	<form:form name="myform" onsubmit="return validateForm()" method="post"
		action="${addAction}">

${msg }




<div class="table">


			<div class="form-group">
				<label class="control-label col-sm-2"> USERID</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="id" required="true" />
				</div>
			</div>
			<br>


			<div class="form-group">
				<label class="control-label col-sm-2">PASSWORD</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="password"
						required="true" title="password should contain 6 to 8 characters">
				</div>
			</div>
			<br>

			<button type="submit" class="btn btn-success">SUBMIT</button>


		</div>

	</form:form>



<jsp:include page="footer.jsp" />



	<p>Forget Password?</p>


</body>

</html>