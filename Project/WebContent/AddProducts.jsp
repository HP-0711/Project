<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style>
	.myclass
	{
		margin:0 auto;
	}
	label
	{
		font-size: 20px;
		font-weight: bold;
	}
</style>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<br><br><br><br><br><br><br>
			<div class="container" style="width: 50%; height : 100%;">
				  <h1>ADD Products</h1>
			</div>
		  <hr>
		<div class="container" style="width: 50%;">
			<form action="AddProducts" method="post" enctype="multipart/form-data">
					<div class="form-group" style="width: 100%;">
						<div class="container-fluid">
							<label>Product Name:</label> 
							<input type="text" name="pname" id="pname" class="form-control input-lg" placeholder="Enter Product Name">
						</div>
						<div class="container-fluid">
							<label>Brand:</label> 
							<input type="text" name="brand" id="brand" class="form-control input-lg" placeholder="Enter Brand">
						</div>
						<div class="container-fluid">
							<label>Enter MRP Price:</label> 
							<input type="text" name="mrp_price" id="price" class="form-control input-lg" placeholder="Enter MRP Price">
						</div>
						<div class="container-fluid">
							<label>Enter Cost Price:</label> 
							<input type="text" name="c_price" id="price" class="form-control input-lg" placeholder="Enter Cost Price">
						</div>
						<div class="container-fluid">
							<label>Enter Selling Price:</label> 
							<input type="text" name="s_price" id="price" class="form-control input-lg" placeholder="Enter Selling Price">
						</div>
						<div class="container-fluid">
						<label>Select Front Image</label>
						<input type="file" name="f_image" id="image" class="form-control input-lg" placeholder="Select Front Image">
					</div>
					<div class="container-fluid">
						<label>Select Back Image</label>
						<input type="file" name="b_image" id="image" class="form-control input-lg" placeholder="Select Back Image">
					</div>
					<div class="container-fluid">
							<label>Enter Quantity:</label> 
							<input type="text" name="quantity" id="price" class="form-control input-lg" placeholder="Enter Quantity">
						</div>
						<div class="container-fluid">
							<label>Enter Weight:</label> 
							<input type="text" name="weight" id="price" class="form-control input-lg" placeholder="Enter Weight">
						</div>
						<br>
						<div class="container">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							<input type="submit" name="submit" class="btn btn-primary"  style="font-size: 20px;" value="Add Product">
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="reset" class="btn btn-danger" style="font-size: 20px;">Reset
							</button>
						</div>
					</div>
				</form>
			</div>
</body>
</html>
