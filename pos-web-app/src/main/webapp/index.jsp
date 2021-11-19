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
     <!-- The below 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap core CSS -->
    <link href="./resources/css/style.css" rel="stylesheet">
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="./resources/css/navbar.css" rel="stylesheet">
        
    <script src="./resources/js/jquery.min.js"></script>
    <script src="./resources/js/bootstrap.min.js"></script>
 </head>
<jsp:include page="navbar.html" />
    <body>

    <table class="terminal" >
            
        <tr>
            <td colspan="3">
                <div id="terminalscreen" class="display-box">
                    
                    <form method = "post" action="">                    
                        <input type="text" placeholder="FullName" name = "cardName" id="cardName" value="fromcard_name" readyOnly>                                       
                        <input type="text" placeholder="Card number" name = "cardNumber" id="cardNumber" value="fromcard_number" readyOnly>
                        <input type="number" placeholder="Account number" name = "accNumber" id="accNumber" value="fromcard_issue_number" readyOnly>
                        <div class=" yearmonth">
                            <input type="number"  size="4" placeholder="Month" name = "dateEnd" id="cardMonth" value="fromcard_expiry_date" readyOnly> /
                      
                        </div>
                        <input type="number" placeholder="CCV Number" id="CCVNumber"value="fromcard_ccv_number" readyOnly>
                        <input type="number" placeholder="Amount" id="Amount" value="amount" readyOnly>
                    </form>
                   
                </div>
            </td>
        </tr>
        
        <tr>
            <td><input class="button" type="button" value="Send" onclick="document.getElementsByName('event')[0].value = 'transaction-sucess'"></td>
            <td><input class="button" type="button" value="Refund" onclick="document.getElementsByName('event')[0].value = 'refund-transaction'"></td>
            <td><input class="button" type="button" value="Check" onclick="document.getElementsByName('event')[0].value = 'check'"></td>
        </tr>
        <tr>
            <!-- display() function display the value of clicked button -->
            <td><input class="button" type="button" value="1" > </td>
            <td><input class="button" type="button" value="2" > </td>
            <td><input class="button" type="button" value="3" > </td>
            
        </tr>
        <tr>
            <td><input class="button" type="button" value="4" > </td>
            <td><input class="button" type="button" value="5" > </td>
            <td><input class="button" type="button" value="6" > </td>
            
        </tr>
        <tr>
            <td><input class="button" type="button" value="7" > </td>
            <td><input class="button" type="button" value="8" > </td>
            <td><input class="button" type="button" value="9" > </td>
            
        </tr>
        <tr>
            <td><input type="button" value="Enter" id="enterbnt" style="background-color:#02A824" /> </td>
            <td><input class="button" type="button" value="0" onclick="display('0')" /> </td>
            <!-- clearScreen() function clear all the values on display -->
            <td><input class="button" type="button" value="Cancel" onclick="clearScreen()" style="background-color: #DC0000;" /> </td>
          
        </tr>
    </table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script  src="resources/js/script.js"></script>
</body>
</html>
