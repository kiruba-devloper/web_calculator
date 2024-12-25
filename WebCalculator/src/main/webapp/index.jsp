<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<style type="text/css">

body {
	background-color: rgba(0, 100, 200, 0.3);
	align: centre;
	padding: 0px;
	margin: 0px;
}

#menu {
	background: #004170;
	color: darkblue;
	padding: 10px;
	margin: 0px
}

#menu a {
	text-decoration: none;
	color: white;
	padding: 0px;
}

table {
	background-color: aquamarine;
	padding: 40px;
	border-radius: 10px;
}

table input {
	margin-top: 10px;
	background-color: lightgray;
	border-radius: 10px;
	padding: 10px;
	width: 250px;
}

table button {
	margin-top: 10px;
	background-color: blue;
	border-radius: 5px;
	padding: 10px;
}

table th {
	padding: 1px;
}

#btn {
	background-color: tomato;
	border-radius: 10px;
	padding: 8px;
	width: 150px;
}

</style>
</head>
<body>
<h1 align="center">Calculator App</h1>
<table align="center">
<form action="calculator" >
<tr>
<th><label>Enter Value1:</label></th>
<td><input type="number" name="value1" required>
</tr>                                                                    
<tr>
<th><label>Enter Value2:</label></th>                      
<td><input type="number" name="value2" required>
</tr>
<tr colspan="2" align="center">
<td align="center" colspan=2>
 <input type="submit" value="add" id="btn" name="btn">
 <input type="submit" value="sub" id="btn" name="btn">
 <input type="submit" value="mul" id="btn" name="btn">
 <input type="submit" value="div" id="btn" name="btn"></td>
</tr>
</form>

</table><br><br>
<hr>
<div name=res>
<h2 align="center">Result :</h2>
<h2 align="center">
<span style=color:red>${res}</span>
${result}
</h2></div>
</body>
</html>