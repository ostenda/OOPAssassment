<%-- 
    Document   : terminal
    Created on : 28 Oct 2021, 19:29:31
    Author     : osten
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   request.setAttribute("selectedPage","PosTerminal");
%>
<%@page import="dao.WebObjectFactory"%>
<%@page import="dao.PropertiesDao"%>
<%@ page import="org.apache.logging.log4j.Logger" %>
<%@ page import="org.apache.logging.log4j.LogManager" %>
<%@page import="service.RestController"%>

<%
   PropertiesDao propertiesDao = WebObjectFactory.getPropertiesDao();
   // User card details taken in here
   String cardfrom_name = propertiesDao.getProperty("cardfrom_name");
   String cardfrom_number = propertiesDao.getProperty("cardfrom_number");
   String cardfrom_issue_number = propertiesDao.getProperty("cardfrom_issue_number");
   String cardfrom_expiry_date = propertiesDao.getProperty("cardfrom_expiry_date");
   String cardfrom_ccv_number = propertiesDao.getProperty("cardfrom_ccv_number");
 %>
<%-- CRUD Operations--%>
<%
String reply = "";
if ("POST".equals(request.getMethod())) {
    reply = RestController.posDevice(request);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/css/style.css"/>
        <title>Terminal</title>
    </head>
    <body>

    <table class="terminal" >
            
        <tr>
            <td colspan="3">
                <div id="terminalscreen" class="display-box">
                    <form method="POST" >                    
                        <input type="text" placeholder="FullName" name = "cardName" value = "ca">                                       
                        <input type="number" placeholder="Card number" name = "cardNumber" value = "scard_number">                                       
                        <input type="number"  size="3" placeholder="Month" name = "cardMonth" value = "scard_month"> /
                        <input type="number" size="3" maxlength="2" placeholder="Year" name = "cardYear" value = "scard_year">                   
                        <input type="number" placeholder="CCV Number"value = "sccv_number">
                    </form>
                   
                </div>
            </td>
        </tr>
        
        <tr>
            <!-- display() function display the value of clicked button -->
            <td><input class="button" type="button" value="1" onclick="display('1')" /> </td>
            <td><input class="button" type="button" value="2" onclick="display('2')" /> </td>
            <td><input class="button" type="button" value="3" onclick="display('3')" /> </td>
            
        </tr>
        <tr>
            <td><input class="button" type="button" value="4" onclick="display('4')" /> </td>
            <td><input class="button" type="button" value="5" onclick="display('5')" /> </td>
            <td><input class="button" type="button" value="6" onclick="display('6')" /> </td>
            
        </tr>
        <tr>
            <td><input class="button" type="button" value="7" onclick="display('7')" /> </td>
            <td><input class="button" type="button" value="8" onclick="display('8')" /> </td>
            <td><input class="button" type="button" value="9" onclick="display('9')" /> </td>
            
        </tr>
        <tr>
            <td><input class="button" type="button" value="Enter" onclick="addition()" style="background-color:#02A824" /> </td>
            <td><input class="button" type="button" value="0" onclick="display('0')" /> </td>
            <!-- clearScreen() function clear all the values on display -->
            <td><input class="button" type="button" value="Cancel" onclick="clearScreen()" style="background-color: #DC0000;" /> </td>
          
        </tr>
    </table>

    <script type="text/javascript" src="script.js"></script>
</body>
</html>
