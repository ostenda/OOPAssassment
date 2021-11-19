<%-- 
    Document   : terminal
    Created on : 28 Oct 2021, 19:29:31
    Author     : osten
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <input type="text" placeholder="FullName" name = "cardName" id="cardName">                                       
                        <input type="text" placeholder="Card number" name = "cardNumber" id="cardNumber">
                        <input type="number" placeholder="Account number" name = "accNumber" id="accNumber">
                        <div class=" yearmonth">
                            <input type="number"  size="3" placeholder="Month" name = "cardMonth" id="cardMonth"> /
                            <input type="number" size="3" maxlength="2" placeholder="Year" name = "cardYear" id="cardYear">   
                        </div>
                        <input type="number" placeholder="CCV Number" id="CCVNumber">
                        <input type="number" placeholder="Amount" id="Amount"">
                    </form>
                   
                </div>
            </td>
        </tr>
        
        <tr>
            <td><input class="button" type="button" value="Send" onclick="Send"></td>
            <td><input class="button" type="button" value="Refund" onclick="Refund"></td>
            <td><input class="button" type="button" value="Check" onclick="Check"></td>
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
