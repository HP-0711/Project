<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
  </head>

  <body>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost:3306/project"
					   user="root"
					   password="root"
					   var="con"/>
					   
	<sql:query var="rs" dataSource="${con}">
		select * from products where Id=?
		<sql:param>${param.Id}</sql:param>
	</sql:query>
	 <c:forEach items="${rs.rows}" var="row">
    <div class="services">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <div>
              <img src="ImageServlet?id=${row.Id}" alt="" class="img-fluid wc-image">
            </div>
            <br>
          </div>

          <div class="col-md-5">
            <div class="sidebar-item recent-posts">
              <div class="sidebar-heading">
                <h4>Info</h4>
              </div>

              <div class="content">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed velit eveniet quibusdam animi eos, cum! Alias, dicta. Minima repudiandae sequi iste, nostrum!</p>
              </div>
            </div>

            <br>
            <br>

            <form action="AddToCart.php" method="GET" >
              <div class="row">
                <div class="col-md-6 col-sm-12">
                  <div class="form-group">
                    <!--<label for="">Storage</label>
                    <select class="form-control" name="str">
                      <option value="64 GB">64 Gb</option>
                      <option value="128 GB">128 Gb</option>
                    </select>-->
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-md-6 col-sm-12">
                  <div class="form-group">
                    <label for="">Quantity</label>
                    <input type="number" value="1" name="qty"  class="form-control">
                    <input type="text" value="${row.Id}" hidden name="id">
                  </div>
                  <label for="">Price</label>
                  <p style="font-size:20px;">${row.MRP_Price}</p><br>
                </div>
                <div class="col-lg-12">
                  <div class="form-group">
                    
                  <button type="submit" class="btn btn-round btn-block" style="background:#a4c639;color: #fff;
                      font-size: 13px;
                      text-transform: uppercase;
                      font-weight: 700;
                      padding: 12px 30px;
                      border-radius: 30px;
                      display: inline-block;
                      transition: all 0.3s;">
                      Add to Cart</button>
                      </div>

        </form>

                <form action="pay.php" method="POST">
                  <div class="col-lg-12">
                  <div class="form-group">
                      <input type="text" value="" hidden name="pname">
                      <input type="text" value="" hidden name="brand">
                      <input type="text" value="" hidden name="Price">
                      <input type="text" value="" hidden name="name">
                      <input type="text" value="" hidden name="phone">
                      <input type="text" value="" hidden name="email">
                      
                     <button type="submit" class="btn btn-round btn-block" style="background:#a4c639;color: #fff;
                      font-size: 13px;
                      text-transform: uppercase;
                      font-weight: 700;
                      padding: 12px 30px;
                      border-radius: 30px;
                      display: inline-block;
                      transition: all 0.3s;">
                      Buy Now</button>
                </div></div>
        </form>
                    
                      <div class="col-lg-12">
                    <div class="form-group">
                        <a href="Delete.php?Id=<?php echo $_GET['Id']; ?>"class="btn btn-round btn-block" style="background:#a4c639;color: #fff;
                      font-size: 13px;
                      text-transform: uppercase;
                      font-weight: 700;
                      padding: 12px 30px;
                      border-radius: 30px;
                      display: inline-block;
                      transition: all 0.3s;">Delete</a>

                  </div>
                </div>
              </div>
            </form>

            <br>
          </div>
        

        <br>
        <h4>Description</h4>

        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea illum necessitatibus adipisci cum dolor quam magnam similique quasi iure blanditiis?</p>
        <br>
        <br>
        <br>
        </div>
      </div>
    </div>
    </c:forEach>

    
   <!--#include file="Footer.asp"-->

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/accordions.js"></script>

    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>

  </body>
</html>