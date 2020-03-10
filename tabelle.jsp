<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import = "java.text.DecimalFormat"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="tabelle.css">

<title>Tabelle</title>
<style>
	#tabelle{
		color: blue;
		font-family: arial;
	}
		#fakultaet{
		color: green;
	
	}
		#wurzel{
		color: red;
	
	}
		#zahl{
		color: purple;
		
	}
		#summe{
		color: green;
	
	}
	
</style>
</head>
<body>
<div id="tabelle">
<h1>Tabelle</h1>
<p>Geben Sie eine Zahl ein: </p>
<form method = "get" action ="tabelle.jsp" accept-charset ="utf-8">
	<label>Ihre Zahl: <input type ="number" name = "zahlen"></label>
	<input type ="submit" name ="senden" value = "senden">
</form>


<h2>Tabelle</h2>
<table>
	<tr>
		<th>Zahl</th>
		<th>Summe</th>
		<th>Fakultät</th>
		<th>Wurzel</th>
	</tr>
	<%
	DecimalFormat format = new DecimalFormat("#0.00");
	int s = 0;
	long f = 1;
	String zahlenbis = request.getParameter("zahlen");
	if(zahlenbis != null){
	for(int z = 1; z <= Integer.parseInt(zahlenbis); z++){
		s = s + z;
		f = f * z;
		double w = Math.sqrt(z);
		out.print("<tr><td>"+z+"</td>"+
				"<td>"+s+"</td>"+
				"<td>"+f+"</td>"+
				"<td>"+format.format(w)+"</td>"+
			"</tr>");
	}
	}
	%>
</table>
</div>
</body>
</html>
