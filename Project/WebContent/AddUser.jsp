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
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
label {
	font-size: 25px;
}

.container {
	padding: 10px;
}

p {
	font-size: 20px;
	margin: auto;
}
</style>
</head>
<body>
	
	<div class="container" style="width: 50%;">
		<h2>Add User</h2>
		<hr>
		<form action="AddUser" method="post" enctype="multipart/form-data">
			<div class="form-group" style="width: 90%;">
				<div class="container-fluid">
					<label>Enter Username :</label> 
					<input type="text" name="user" class="form-control input-lg" placeholder="Enter Username" required>
				</div>
				
				<div class="container-fluid">
					<label>Enter Password:</label> 
					<input type="text" name="pass" class="form-control input-lg" placeholder="Enter Password" required>
				</div>
				
				<div class="container-fluid">
					<label>Enter Phone_no:</label> 
					<input type="text" name="phone" class="form-control input-lg" placeholder="Enter Phone_no" required>
				</div>
				
				<div class="container-fluid">
					<label>Enter Email:</label>
					 <input type="email" name="email" class="form-control input-lg" placeholder="Enter Email" required>
				</div>
				
				<div class="container-fluid">
					<label>Enter Company Name:</label>
					 <input type="text" name="c_name" class="form-control input-lg" placeholder="Enter Company Name" required>
				</div>
				
				
				<br>
				<div class="container-fluid">
				<label>Select License Type</label>
				 <select class="form-control" aria-label="Default select example" required>
				  <option name="l-type" selected>Open this select menu</option>
				  <option name="l-type" value="GST">GST</option>
				  <option name="l-type" value="FSSAI">FSSAI</option>
				  <option name="l-type" value="SHOP AND ESTABLISHMENT">SHOP AND ESTABLISHMENT</option>
				  <option name="l-type" value="PAN CARD">PAN CARD</option>
				</select> 
				</div>
				
				<br>
				
				<div class="container-fluid">
				<label>Enter License Image</label>
				<input type="file" name="l_image" class="form-control input-lg" placeholder="Select Image" required>
				</div>
				
				<div class="container-fluid">
					<label>Enter Address:</label>
					 <input type="text" name="address" class="form-control input-lg" placeholder="Enter Address" required>
				</div>
				
				<div class="container-fluid">
					<label>Enter Shop Image:</label>
					 <input type="file" name="shop_image" class="form-control input-lg" placeholder="Enter Shop Image" required>
				</div>
				
				<br>
				<div class="container">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" class="btn btn-primary"  style="font-size: 20px;" value="Add User">
					<button type="reset" class="btn btn-danger" style="font-size: 20px;">
						<b style="font-size: 20px;">Reset</b>
					</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>