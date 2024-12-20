<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body class="bodybg">
    
     <h4>Login Here here</h4>
	 
	 <c:if test="${not empty errorMsg}">
	 	<h4 style="color:red">${errorMsg}</h4>
	  </c:if>
     <form action="loginForm" method = "post">
          
          Email: <input type = "text"  name="email"/><br/><br/>
          Password: <input type = "password" name="password"/><br/><br/>
          
		  <input type="submit" value="Login" />
     </form>
	 <form>
		If not registered...<a href="regPage">Register Here<br/></a>
	 
	 
	 Go to Index...<a href="index.html">Index</a>
	 </form>
</body>
</html>