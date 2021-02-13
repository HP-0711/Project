<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
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
	font-size: 20px;
}

.container {
	padding: 10px;
}

p {
	font-size: 20px;
	margin: auto;
}
#photo
{
    padding: 0px;
    vertical-align: middle;
    text-align: center;
    width: 170px;
    height: 220px;
}
</style>
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>

<div class="container">
		<div class="row">
			
				<div class="col-sm-3">
     				 <div class="panel panel-primary">
					<div class="panel-body"><a href="book.jsp?Id=${row.Id}"><img src="ImageServlet?id=${row.Id}" style="height:285px; width:360px;" class="img-responsive"/></a></div>
					</div>
					</div>
					<div class="col-sm-6">
					  <h3 class="col-lg-12"></h3>
					<h4 class="col-lg-12"></h4>
					<form action="AddToCart" method="post">
								<input type="submit" class="btn  btn-primary btn-block" value="Add To Cart">
					</form>
					<br>
					<a href="OrderController" class="btn btn-success btn-block">Buy</a>
				</div>
				<div class="col-sm-12"></div>
			
	</div>
</div>    		
		
</body>
</html>