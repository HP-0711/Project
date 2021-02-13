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
    <!-- Page Content -->
    <div class="page-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1>Products</h1>
            <span>Lorem ipsum dolor sit amet.</span>
          </div>
        </div>
      </div>
    </div>

        <br><br>
        <sql:setDataSource driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost:3306/project"
					   user="root"
					   password="root"
					   var="con"/>
					   
	<sql:query var="rs" dataSource="${con}">
		select * from products where Status='Available';
	 </sql:query>
	 
        <div class="services">
        <div class="container">
        <div class="row">
     <c:forEach items="${rs.rows}" var="row">
        <div class="col-md-4">
            <div class="service-item">
              ${row.Id}
             <a href="product-details.jsp?Id=${row.Id}"> <img src="ImageServlet?id=${row.Id}" style="height:230px; width:360px;" class="img-responsive"/></a>
              <div class="down-content">
                <h4> ${row.Brand} ${row.Productname}</h4>
                <div style="margin-bottom:10px;">
                  <span style="font-size:20px;">
                    Rs. ${row.MRP_Price}
                  </span>
                  <br>
                  <!--  <% //if(${row.Status} == 'Available') {%>
                     <p style="font-size:20px;">Item In Stock</p>
                  <%// }else { %>
                    <p style="color:red; font-size:20px;">Out Of Stock</p>
                  <%// }%>-->
                  </div>
    
              </div>
            </div>
            <br>
        </div>
        </c:forEach>
        <%//} %>
      </div>
          
          <nav>
          <ul class="pagination pagination-lg justify-content-center">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">«</span>
                <span class="sr-only">Previous</span>
              </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">»</span>
                <span class="sr-only">Next</span>
              </a>
            </li>
          </ul>
        </nav>

        <br>
        <br>
        <br>
        <br>
    </div>
    <% // }else{ %> 
    <p class="status error">Image(s) not found...</p> 
<%// } %>
</div>

   
   <!--#include file="Footer.asp"-->

    <!-- Bootstrap core JavaScript -->
    <script src="assets/jquery/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>

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

