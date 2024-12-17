<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>
<h1 align="center">Calculator App</h1>
<table align="center">
<form action="calculator" >
<tr>
<th><label>Enter Value1:</label></th>
<td><input type="number" name="value1" >
</tr>                                                                    
<tr>
<th><label>Enter Value2:</label></th>                      
<td><input type="number" name="value2" >
</tr>
<tr colspan="2" align="center">
<td align="center">
 <input type="submit" value="add" name="btn"><input type="submit" value="sub" name="btn"><input type="submit" value="mul" name="btn"><input type="submit" value="div" name="btn"></td>
</tr>
</form>

</table><br><br>
<hr>
<h2 align="center">Result :</h2>
<h2 align="center">
${result}
</h2>
</body>
</html>