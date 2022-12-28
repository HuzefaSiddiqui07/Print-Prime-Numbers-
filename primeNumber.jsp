<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prime Numbers</title>
<style>
table, th, td {
border : 1px solid blue;
}
</style>
</head>
<body style="background-color:silver;">
<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));

out.print("Prime Numbers Between " + num1 + " To " + num2 + " : <br/>");

if((num1>0) && (num2>0)){
	
	out.print("<table width='400'><tr><th>No.</th><th>Prime Number</th></tr>");
	
	for(int i=num1; i<=num2; i++){
		int num = i;
		int temp = 0;
		int a = 2;
		
		while(a<=(num/2)){
			
			if((num % a) == 0){
				temp++;
				break;
		}
			a++;
		}
		 out.print("<tr><td>" + num + "</td>");
		if((temp == 0) && (num != 1)){
			
			out.print("<td> Yes </td></tr>");
		}
		else{
			
			out.print("<td> No </td></tr>");
		}
	}
	out.print("</table>");
}
 else {
	out.print("Number Negative Please Check the Number");
}

%>
</body>
</html>