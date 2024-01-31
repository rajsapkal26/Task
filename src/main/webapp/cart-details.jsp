<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Cart Details</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet"/>
</head>
<body>
	<div>
		<h1 class="text-center mt-4 shop1 fs-1 text-black fst-italic"><b>Buy Details</b></h1>
	</div>



	<%
	int total=0;
	HttpSession s=request.getSession();
	String cust_id=s.getAttribute("cust_id").toString();
	
	try {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task","root","root");
		
		Statement stat=conn.createStatement();
		
		ResultSet rs=stat.executeQuery("select c_id,p_name,p_image,p_price,p_type from cart,products where cart.p_id=products.p_id and cust_id="+cust_id);
		
		
		%>
		<table class="table table-bordered container mt-5">
			<thead>
				<tr>
					<th class='bg-black text-white mate3'>Product</th>
					<th class='bg-black text-white mate3'>Price</th>
					<th class='bg-black text-white mate3'>Delete</th>
				</tr>
			</thead>
		<%
		
		while(rs.next()) {
			int c_id=rs.getInt(1);
			String p_name=rs.getString(2);
			String p_img=rs.getString(3);
			int p_price=rs.getInt(4);
			String p_type=rs.getString(5);
			
			//out.println(p_name + p_img + p_price);
			total=total+rs.getInt(4);
			%>
			
			<tbody>
				<tr>
					<td>
						<div class="d-flex align-items-center col-11 mx-auto">
							<img src="<%=rs.getString(3) %>" class="img-fluid me-4" width="200"/>
							<div class=" px-2">
								<p class="laptop mb-1"><%=rs.getString(2) %></p>
								<p class=" shop1 mb-1"><%=rs.getString(5) %></p>
							</div>
						</div>
					</td>
					<td>
						<p class="shop1"> Rs <%=rs.getInt(4) %></p>
					</td>
					<td>
						<a href="delete.jsp?c_id=<%=rs.getInt("c_id") %>"><button type="submit" class="btn btn-danger" ><i class="bi bi-x-lg"></i></button></a>
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
	<div class="container">
		<form action="BuyInsert" method="post" class="d-flex justify-content-end">	
			<button class="border border-1 rounded-3 btn btn-warning shop1 text-black mb-2">Buy now</button>
		</form>
		<p class="d-flex justify-content-end shop1 mb-1">Total Amount : <%=total %></p>
	</div>

</body>
</html>