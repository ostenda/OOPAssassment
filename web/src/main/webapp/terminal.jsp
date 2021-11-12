<%-- 
    Document   : terminal
    Created on : 28 Oct 2021, 19:29:31
    Author     : osten
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>Calculator</title>
    </head>
    <body>

    <table class="calculator">
        <tr>
            <td colspan="3"><input class="display-box" type="text" id="result" disabled /></td>
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
