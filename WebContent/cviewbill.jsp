
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
   
    <div id="logo" class="container">
    <center><h1>Car Rental</h1></center>

    </div>
    <div id="menu" class="container">
    <ul>
    <li><a href="customerhome.jsp">Home</a></li>
    <li><a href="cviewvehicles.jsp">View Vehicles</a></li>
    <li><a href="creturnvehicles.jsp">Return Vehicles</a></li>
    <li class="current_page_item"><a href="cviewbill.jsp">View Bill</a></li>
    <li><a href="cfeedback.jsp">Feedback</a></li>
    <li><a href="logout.jsp">Logout</a></li>
    
    </ul>
    </div>
    
    <div id="three-column" class="container">

    <%@ include file="connect.jsp" %>    
    <%
   
    try {
    String user = session.getAttribute("user").toString();    
    String sql1 = "select * from bookings where username = '"+user+"' and status = 'Returned' ";
    Statement st1 = connection.createStatement();
    ResultSet rs1 = st1.executeQuery(sql1);
    if(rs1.next()){
        
    String sql = "select * from bookings where username = '"+user+"' and status = 'Returned' ";
    Statement st = connection.createStatement();
    ResultSet rs = st.executeQuery(sql);

    %>
    <br/>
    <center>
        <p><font size="5" >View Bills </font></p>
    <style>
        th{
            color: #298bff;
        }
        td{
            text-align: center;
        }
    </style>
     <table border="2" width="80%">

    <tr>
    <th>Vehicle Type</th>
    <th>Vehicle Name</th>
    <th>Vehicle No</th>
    <th>View Bill</th>

    </tr>

    <%     while (rs.next()) {
    %>

    <tr>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><a href="cviewbill1.jsp?vno=<%=rs.getString(5)%>"><button type="button">View Bill</button></a></td>
        
    </tr>
    
    <%} }
   
    else{
     out.println("<center><br/><font size='4' color='red'>Sorry..! Nothing to display..!</font></center>");
    
    }
   
   %> 
    
    <%
    } catch (Exception e) {
        e.printStackTrace();
    }

    %>
    </table>
    </center>
    <br/><br/>
    
    </div>

   

</body>
</html>
