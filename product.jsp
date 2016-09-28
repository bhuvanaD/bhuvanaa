<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #101010;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #101010;
	color: #101010;
	
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: auto;
	word-break: normal;
	border-color: #282828;
	color: #101010;
	background-color:#f0f0f0 ;
	
}

.tg .tg-4eph {
	background-color: ;
}
</style>

</head>
<body>
<div class="container-fluid">
<div class="row">
<center>
<div class="col-sm-12">
  <div class="col-sm-3"></div><div class="col-sm-6">
  
			

	<c:url var="addAction" value="/product/add"></c:url>

	<form:form action="${addAction}" commandName="product">
		<table>
			<tr>
				<td><form:label path="id"  >
						<spring:message text="Product ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty product.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern =".{3,7}" required="true" title="id should contains 3 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="id"  hidden="true"  />
				<td><form:label path="name">
						<spring:message text="Product Name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			
			
			<tr>
				<td><form:label path="price">
						<spring:message text="Product Price" />
					</form:label></td>
				<td><form:input path="price" required="true" /></td>
			</tr>
			
			
			<tr>
				<td><form:label path="supplier_id">
						<spring:message text="Supplier ID" />
					</form:label></td>
				<td><form:input path="supplier_id" required="true" /></td>
			</tr>
			
			<tr>
				<td><form:label path="category_id">
						<spring:message text="Category Id" />
					</form:label></td>
				<td><form:input path="category_id" required="true" /></td>
			</tr>
			
			
			
			
			
			
			
			<tr>
				<td colspan="2"><c:if test="${!empty product.name}">
						<input type="submit" 
							value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${empty product.name}">
						<input type="submit"  value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr>
		</table>
	
	</form:form>
	
	</div>
	</div>
	</div>
	<div class="col-sm-3"></div>
	</div>
	
	<br>
	
	
	<c:if test="${!empty productList}">
		<table class="tg" style="align:center">
			<tr>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Product Price</th>
				<th>Product Description</th>
				<th>Category ID</th>
				<th>Supplier ID</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.description}</td>
					<td>${category.category_id}</td>
					<td>${supplier.supplier_id}</td>
					
					
					<td><a href="<c:url value='/editproduct/${product.id}' />">Edit</a></td>
					<td><a href="<c:url value='/removeproduct/${product.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
	</div>
	</div>
	</center>
	</div>
	</div>
	
</body>

</html>