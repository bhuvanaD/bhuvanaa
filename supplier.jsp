<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Categories</title>
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
  
			

	<c:url var="addAction" value="/supplier/add"></c:url>

	<form:form action="${addAction}" commandName="supplier">
		<table>
			<tr>
				<td><form:label path="supplier_id"  >
						<spring:message text="Supplier ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty supplier.supplier_id}">
						<td><form:input path="supplier_id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="supplier_id" pattern =".{3,7}" required="true" title="id should contains 3 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="supplier_id"  hidden="true"  />
				<td><form:label path="supplier_name">
						<spring:message text="Supplier Name" />
					</form:label></td>
				<td><form:input path="supplier_name" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="supplier_description">
						<spring:message text="Supplier Description" />
					</form:label></td>
				<td><form:input path="supplier_description" required="true" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty supplier.supplier_name}">
						<input type="submit" 
							value="<spring:message text="Edit Supplier"/>" />
					</c:if> <c:if test="${empty supplier.supplier_name}">
						<input type="submit"  value="<spring:message text="Add Supplier"/>" />
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
	
	
	<c:if test="${!empty supplierList}">
		<table class="tg" style="align:center">
			<tr>
				<th>Supplier ID</th>
				<th>Supplier Name</th>
				<th>Supplier Description</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${supplierList}" var="supplier">
				<tr>
					<td>${supplier.supplier_id}</td>
					<td>${supplier.supplier_name}</td>
					<td>${supplier.supplier_description}</td>
					<td><a href="<c:url value='/editsupplier/${supplier.supplier_id}' />">Edit</a></td>
					<td><a href="<c:url value='/removesupplier/${supplier.supplier_id}' />">Delete</a></td>
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