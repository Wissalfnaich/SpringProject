<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title>Our Products</title>
</head>
<style>
	table {
		width: 100%;
		margin-top: 50px;
		border-collapse: collapse;
	}
	
	th, td {
		padding: 10px;
		text-align: center;
		border: 1px solid #ddd;
	}
	
	th {
		background-color: #f2f2f2;
		color: #333;
		font-weight: bold;
	}
	
	td img {
		max-width: 100px;
		max-height: 100px;
	}
	
	.buy-btn {
		background-color: #007bff;
		color: #fff;
		border: none;
		padding: 10px;
		border-radius: 5px;
		cursor: pointer;
	}
	
	.buy-btn:hover {
		background-color: #0069d9;
	}


.btn:hover {
  background-color: #0069d9;
}

</style>
<body class="bg-light">
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				th:src="@{/images/logo.png}" src="../static/images/logo.png"
				width="auto" height="40" class="d-inline-block align-top" alt="" />
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto"></ul>
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link text-white" href="/adminhome">Home
							Page</a></li>
					<li class="nav-item active"><a class="nav-link text-white" href="/logout">Logout</a>
					</li>
	
				</ul>
	
			</div>
		</div>
	</nav> 
	
	
	<div class="container-fluid">

		<table class="table">

			<tr>
				<th scope="col" style="font-size: 1.2rem; font-weight: bold; background-color: #f2f2f2; text-align: center;">Serial No.</th>
				<th scope="col" style="font-size: 1.2rem; font-weight: bold; background-color: #f2f2f2; text-align: center;">Product Name</th>
				<th scope="col" style="font-size: 1.2rem; font-weight: bold; background-color: #f2f2f2; text-align: center;">Category</th>
				<th scope="col" style="font-size: 1.2rem; font-weight: bold; background-color: #f2f2f2; text-align: center;">Preview</th>
				<th scope="col" style="font-size: 1.2rem; font-weight: bold; background-color: #f2f2f2; text-align: center;">Quantity</th>
				<th scope="col" style="font-size: 1.2rem; font-weight: bold; background-color: #f2f2f2; text-align: center;">Price</th>
				<th scope="col" style="font-size: 1.2rem; font-weight: bold; background-color: #f2f2f2; text-align: center;">Weight</th>
				<th scope="col" style="font-size: 1.2rem; font-weight: bold; background-color: #f2f2f2; text-align: center;">Description</th>
				<th scope="col" style="font-size: 1.2rem; font-weight: bold; background-color: #f2f2f2; text-align: center;">Buy</th>
			</tr>
			<tbody>
				<tr>

					<%
					try {
						String url = "jdbc:mysql://localhost:3306/springproject";
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection(url, "root", "admin");
						Statement stmt = con.createStatement();
						Statement stmt2 = con.createStatement();
						ResultSet rs = stmt.executeQuery("select * from products");
					%>
					<%
					while (rs.next()) {
					%>
					<td>
						<%= rs.getInt(1) %>
					</td>
					<td>
						<%= rs.getString(2) %>
					</td>
					<td>
						<%
							int categoryid = rs.getInt(4);
							ResultSet rs2 = stmt2.executeQuery("select * from categories where categoryid = "+categoryid+";");
							if(rs2.next())
							{
								out.print(rs2.getString(2));
							}
						%>
						
					</td>
					<td><img src="https://th.bing.com/th/id/R.fd048601910e87d09c670b696ed153a0?rik=MCuRFnBGgWZPjA&riu=http%3a%2f%2fimages2.fanpop.com%2fimages%2fphotos%2f7300000%2fSlice-of-Pizza-pizza-7383219-1600-1200.jpg&ehk=Nr%2f8Tpc4Z3p5bgSOdOEWHlN1XJS1y7jol5%2bkS6qXCpE%3d&risl=&pid=ImgRaw&r=0"
						height="100px" width="100px">
					<td>
						<%= rs.getInt(5) %>
					</td>
					<td>
						<%= rs.getInt(6) %>
					</td>
					<td>
						<%= rs.getInt(7) %>
					</td>
					<td>
						<%= rs.getString(8) %>
					</td>
					<td><form action="/buy" method="get">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg>	<input type="hidden" name="id" value="<%=rs.getInt(1)%>">
							<input type="submit" value="Buy" class="btn btn-info btn-lg">
							
					</form></td>
					<td>
						<tr>
							<td>1</td>
							<td>Product A</td>
							<td>Electronics</td>
							<td><img src="https://unbumf.com/wp-content/uploads/2018/11/Mycroft_UnBumf-1024x512.png" alt="Product A Preview"></td>
							<td>5</td>
							<td>$19.99</td>
							<td>1 lb</td>
							<td>A great product for your home</td>
							<td><form action="/buy" method="get">
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
		  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
		</svg>	<input type="hidden" name="id" value="<%=rs.getInt(1)%>">
									<input type="submit" value="Buy" class="btn btn-info btn-lg">
									
							</form></td>
						</tr>
						<tr>
							<td>2</td>
							<td>Product B</td>
							<td>Clothing</td>
							<td><img src="http://cdn.shopify.com/s/files/1/0604/6154/7776/products/Panda-T-shirt-Girl_1200x1200.jpg?v=1638381978" alt="Product B Preview"></td>
							<td>10</td>
							<td>$29.99</td>
							<td>2 lbs</td>
							<td>A stylish shirt for any occasion</td>
							<td><form action="/buy" method="get">
								<svg xmlns="https://www.rueducommerce.fr/media/produits/wewoo/img//guirlande-led-24-lumieres-cerisier-lampe-de-table-amenagement-de-la-chambre-decoration-creative-chevet-veilleuse-cadeaustyle-bauhinia-arbre-noir-10575812-27483206_1140x1140.jpg" width="20" height="20" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
		  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
		</svg>	<input type="hidden" name="id" value="<%=rs.getInt(1)%>">
									<input type="submit" value="Buy" class="btn btn-info btn-lg">
									
							</form></td>
						</tr>
						<tr>
							<td>3</td>
							<td>Product C</td>
							<td>Home & Garden</td>
							<td><img src="https://img.joomcdn.net/732b6a411d15eb7af140d33b74d3193fa2476f2e_original.jpeg" alt="Product C Preview"></td>
							<td>3</td>
							<td>$49.99</td>
							<td>5 lbs</td>
							<td>A beautiful decoration for your home</td>
							<td><form action="/buy" method="get">
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
		  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
		</svg>	<input type="hidden" name="id" value="<%=rs.getInt(1)%>">
									<input type="submit" value="Buy" class="btn btn-info btn-lg">
									
							</form>
						</tr>	
					<tr>
					</td>
					<td>2</td>
					<td>Product D</td>
					<td>Food & Drinks</td>
					<td><img src="https://www.honestfoodtalks.com/wp-content/uploads/2021/09/How-to-make-bubble-tea.jpeg" alt="Product B Preview"></td>
					<td>21</td>
					<td>$12.99</td>
					<td>0.5 lbs</td>
					<td>A bubbly and refreshing tea</td>
					<td><form action="/buy" method="get">
						<svg xmlns="https://www.honestfoodtalks.com/wp-content/uploads/2021/09/How-to-make-bubble-tea.jpeg" width="20" height="20" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg>	<input type="hidden" name="id" value="<%=rs.getInt(1)%>">
							<input type="submit" value="Buy" class="btn btn-info btn-lg">
							
					</form></td>
					</tr>
					</td>

				</tr>
				<%
				}
				%>

			</tbody>
		</table>
		<%
		} catch (Exception ex) {
		out.println("Exception Occurred:: " + ex.getMessage());
		}
		%>
	</div>



	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>