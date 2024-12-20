<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body class="bodybg">
    
     <h4>Register here</h4>
	 <c:if test="${not empty successMsg}">
		<h4 style="color:green">${successMsg}</h4>
	 </c:if>
	 <c:if test="${not empty errorMsg}">
	 	<h4 style="color:red">${errorMsg}</h4>
	  </c:if>
     <form action="regForm" method = "post">
          Name: <input type = "text" name="name"/><br/><br/>
          Email: <input type = "text"  name="email"/><br/><br/>
          Password: <input type = "password" name="password"/><br/><br/>
          Phone No: <input type = "text"  name="phoneno"/><br/><br/>
		  <input type="submit" value="Register" />
    
	 <br/><br/>
		If already registered...<a href="loginPage"><b>Login Here<br/><br/></a>
			<a>Go to Index...<a href="index.html">Index</a>
			</form>
	 
</body>
</html>