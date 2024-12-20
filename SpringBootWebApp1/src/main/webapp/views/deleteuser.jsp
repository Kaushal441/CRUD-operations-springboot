<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body class="bodybg">
    
     <h4>Delete User</h4>
	 
	 <c:if test="${not empty errorMsg}">
	 	<h4 style="color:red">${errorMsg}</h4>
	  </c:if>
     <form action="deleteUser" method = "post">
          
          Email: <input type = "text"  name="email"/><br/><br/>
          
          
		  <input type="submit" value="Delete" />
     </form>
	 <form>
		Go to Index...<a href="index.html">Register Here</a>
	 </form>
</body>
</html>