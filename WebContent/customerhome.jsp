
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Car Rental</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
    
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Login Success...!');</script>
    <%}%>
       
    <div id="logo" class="container">
    <center><h1>Car Rental</h1></center>

    </div>
    <div id="menu" class="container">
    <ul>
    <li class="current_page_item"><a href="customerhome.jsp">Home</a></li>
    <li><a href="cviewvehicles.jsp">View Vehicles</a></li>
    <li><a href="creturnvehicles.jsp">Return Vehicles</a></li>
    <li><a href="cviewbill.jsp">View Bill</a></li>
    <li><a href="cfeedback.jsp">Feedback</a></li>
    <li><a href="logout.jsp">Logout</a></li>
    
    </ul>
    </div>

    <div id="three-column" class="container">
        
    <%
    String cname = session.getAttribute("cname").toString();
    %>    
    <br/><br/><br/>
    <center><p><font color="black" size="5">Welcome <%=cname%></font></p></center>
    <br/><br/><br/>
    
    </div>

 

</body>
</html>
