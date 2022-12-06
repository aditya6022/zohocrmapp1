<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
       <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   
           <h2>All Bills</h2>
	           <table>
	           
		             <tr>
		              <th>InvoiceNumber</th>
		                <th>FirstName</th>
		                <th>LastName</th>
		                <th>Email</th>
		                <th>Mobile</th>
		                <th>Product</th>
		                <th>Amount</th>
		                
		             </tr>
		            
		            <c:forEach var = "billings" items = "${billings}">
			             
			             <tr>
			                <td>${billings.invoiceNumber}</td>
			                <td>${billings.firstName}</td>
			                <td>${billings.lastName}</td>
			                <td>${billings.email}</td>
			                <td>${billings.mobile}</td>
			                <td>${billings.product}</td>
			                <td>${billings.amount}</td>
			                
			                
			                
			                
			             </tr>
		            
		             </c:forEach>
	           </table>
</body>
</html>