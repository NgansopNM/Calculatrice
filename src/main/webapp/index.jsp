<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculatricce</title>
</head>
<body>
	<div class = "border">
		<h1>Calculatrice</h1><br>
		
		<form method ="post" action ="calculer" >
			<input type ="number" name = "number1" placeholder ="Entrer un nombre" required>
			<input type ="number" name = "number2" placeholder ="Entrer le deuxième nombre" >
			
			<select name = "operation">
				<option value ="additonner">Addition (+)</option>
				<option value ="soustraire">Soustraction (-)</option>
				<option value ="multiplier">Multiplication (*)</option>
				<option value = "diviser">Division (/)</option>
				<option value ="racine">Racine (sqrt)</option>
				<option value = "expos">Puissance(^)</option>
				<option value = "factoriel">Factoriel(!)</option>
			</select>
			
			<button type = "submit"> Calculer</button>
			
		</form>
	</div>
	
	<div class="container">
       <h1>Résultat</h1>

<%
String message = (String) request.getAttribute("message");
Object resultat = request.getAttribute("resultat");

if (message != null) {
%>

    <p class="error">
        <%= message %>
    </p>

<%
} else if (resultat != null) {
%>

    <div class="resultat">
        Résultat :<br>
        <strong><%= resultat %></strong>
    </div>

<%
}
%>
    </div>	
	

</body>
</html>