<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
	$(document).ready(function(){
		$("#loginmodal").modal('show');
	});
</script>
<style>
  			label
  			{
  				font-size:20px;
  			}
  </style>
</head>
<body>
<!-- Login Modal-->
 <div class="container">
	<div class="modal fade" id="loginmodal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-title">Login</h3>
				</div>
				<div class="modal-body" id="1">
					<form action="DatabaseLogin" method="post">
						<div class="form-group" style="width:100%;">
							<div class="container-fluid">
								<label>Username:</label>
								<input type="text" name="user" class="form-control input-lg" placeholder="Username">
							</div>
							<div class="container-fluid">
								<label>Password:</label>
								<input type="password" name="pass" class="form-control input-lg" placeholder="Enter Password">
							</div>
							<div class="text-right" style="font-size:30px;">
								<a href="CollectEmail.asp"><h4>Forgot Password</h4></a>
                            </div>
								<br>
							<div class="modal-footer">
								<input type="submit" class="btn btn-primary" data-toggle="modal" data-target="#loginmodal" value="Login" />
								<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>