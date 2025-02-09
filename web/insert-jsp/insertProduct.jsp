<%-- 
    Document   : insertProduct
    Created on : Oct 7, 2024, 7:54:10 AM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        ResultSet rsSup=(ResultSet)request.getAttribute("rsSup");
        ResultSet rsCat=(ResultSet)request.getAttribute("rsCat");
    %>
    <body>
         <form action="ProductURL" method="post">
        <input type="hidden" name="service" value="insertProduct">
        <table>
            <caption>Insert Product</caption>
            <tr>
                <td><label for="ProductID">Product</label></td>
                <td><input type="hidden" name="ProductID" id="ProductID" readonly></td>
            </tr>
            <tr>
                <td><label for="ProductName">ProductName</label></td>
                <td><input type="text" name="ProductName" id="ProductName"></td>
            </tr>
            <tr>
                <td><label for="SupplierID">Supplier</label></td>
                <td><select name="SupplierID" id="SupplierID">
                       <%while (rsSup.next()) {%>
                            <option value="<%=rsSup.getInt(1)%>"><%=rsSup.getString(2)%></option>
                            <%}%>
                </select></td>
            </tr>
            <tr>
                <td><label for="CategoryID">Category</label></td>
                <td><select name="CategoryID" id="CategoryID">
                        <%while (rsCat.next()) {%>
                            <option value="<%=rsCat.getInt(1)%>"><%=rsCat.getString(2)%></option>
                            <%}%>
                </select></td>
            </tr>
            <tr>
                <td><label for="QuantityPerUnit">QuantityPerUnit</label></td>
                <td><input type="text" name="QuantityPerUnit" id="QuantityPerUnit"></td>
            </tr>
            <tr>
                <td><label for="UnitPrice">UnitPrice</label></td>
                <td><input type="text" name="UnitPrice" id="UnitPrice"></td>
            </tr>
            <tr>
                <td><label for="UnitsInStock">UnitsInStock</label></td>
                <td><input type="text" name="UnitsInStock" id="UnitsInStock"></td>
            </tr>
            <tr>
                <td><label for="UnitsOnOrder">UnitsOnOrder</label></td>
                <td><input type="text" name="UnitsOnOrder" id="UnitsOnOrder"></td>
            </tr>
            <tr>
                <td><label for="ReorderLevel">ReorderLevel</label></td>
                <td><input type="text" name="ReorderLevel" id="ReorderLevel"></td>
            </tr>
            <tr>
                <td><label for="Discontinued">Discontinued</label></td>
                <td><input type="radio" name="Discontinued" id="Discontinued" value="0">Discontinued
                    <input type="radio" name="Discontinued" id="Discontinued" value="1" checked>Continued
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="insertProduct" name="submit"></td>
                <td><input type="reset" value="Clear"></td>
            </tr>
        </table>
    </form>
    </body>
</html>
