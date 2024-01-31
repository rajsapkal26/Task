<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet"/>
</head>
<body>
	<div>
		<h1 class="text-center mt-4 shop1 fs-1 text-black fst-italic"><b>ORDERED</b></h1>
	</div>
	
	<div class="container">
		<p class=" shop1">* Payment Mode : Cash On Delivery</p>
	</div>
	<%
	
	int total=0;
	
	HttpSession s1=request.getSession();
	String p_id=s1.getAttribute("p_id").toString();
	String cust_id=s1.getAttribute("cust_id").toString();
	
	HttpSession s=request.getSession();
	//String c_id=s.getAttribute("c_id").toString();
	String currentDate=s.getAttribute("currentDate").toString();
	String modifiedDate=s.getAttribute("modifiedDate").toString();
	//LocalDate currentDate = LocalDate.now();
	

	
	try {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task","root","root");
		
		Statement stat=conn.createStatement();
		
		ResultSet rs=stat.executeQuery("select c_id,p_name,p_image,p_price,p_type from cart,products where cart.p_id=products.p_id and cust_id="+cust_id);
		
		%>
		<table class="table table-bordered container mt-5" >
			<thead>
				<tr>
					<th class='bg-black text-white mate3'>Product</th>
					<th class='bg-black text-white mate3'>Price</th>
					<th class='bg-black text-white mate3'>Ordered Date</th>
					<th class='bg-black text-white mate3'>Delivery Date</th>
				</tr>
				
			</thead>
		<%
		
		while(rs.next()) {
			int price=rs.getInt(4);
			total=total+price;
			

		%>
			
			<tbody>
				<tr>
					<td>
						<div class="dflex align-items-center col-11 mx-auto">
							<img src="<%=rs.getString(3) %>" class="img-fluid" width="200"/>
							<div class=" px-2">
								<p class="laptop mb-1"><%=rs.getString(5) %></p>
								<p class=" shop1 mb-1"><%=rs.getString(2) %></p>
								
							</div>
							
						</div>
					</td>
					<td>
						<p class="shop1"><%=rs.getInt(4) %></p>
					</td>
					<td>
						<p class="shop1"><%=currentDate  %></p>
					</td>
					<td>
						<p class="shop1"><%=modifiedDate %></p>
					</td>
				</tr>
			</tbody>
					
			
			<% 		
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
		
	%>
	
	</table>
	
	

</body>
</html>



	
			
			
						
					<p class="fst-italic shop1 text-black container d-flex justify-content-end">Total price : <%=total %></p>
	
	</section>
	