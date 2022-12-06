<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Lead</title>
</head>
<body>

    <h2>Create | Lead</h2>
    <hr>
    <form action="save" method="post">
    
        <pre>
             FirstName<input type="text" name="firstName"/>
             LastName<input type="text" name="lastName"/>
             Email<input type="text" name="email"/>
             Mobile<input type="text" name="mobile"/>
             
             source:
             
             <select name="source">
               
               <option value="radio">1.Radio</option>
               <option value="newspaper">2.NewsPaper</option>
               <option value="tradehow">3.TradeShow</option>
               <option value="website">4.WebSite</option>
               
             </select>
             
             <input type="submit" value="save"/>
        
        </pre>
    
    </form>
</body>
</html>