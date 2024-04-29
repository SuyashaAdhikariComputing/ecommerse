<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Believe wear</title>
  <!--page-icon------------>
  <link rel="shortcut icon" href="images/logo.png">
  <!--stylesheet------------->
  
<style>
    body {
      font-family: "Open Sans", sans-serif;
      margin: 0;
      scroll-behavior: smooth;
    }

    a {
      text-decoration: none;
      color: #000;
    }

    a:hover {
      color: rgb(179, 179, 179);
      

    }

    .site-header {
      border-bottom: 1px solid #ccc;
      /* padding: 0.3em 0.5em;  */
      display: flex;
      justify-content: space-between;

    }

    .site-navigation ul,
    .site-navigation li {
      margin: 0;
      padding: 0;
    }

    .site-navigation li {
      display: inline-block;
      margin: 1.4em 1em 1em 1em;
    }

    .logo img {

      width: 190px;
      height: 70px;
    }

    .pic img {
      width: 34px;
      height: 50px;
    }

    .menu-btn {
      /* background-color: #040008;
   color: white;
   padding: 16px; */
      font-size: 16px;
      /* font-weight: bolder;
   font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; */
      border: none;
    }

    .dropdown-menu {
      position: relative;
      display: inline-block;
    }

    .menu-content {
      display: none;
      position: absolute;
      /* background-color: #017575; */
      min-width: 100px;
      z-index: 1;
    }

    .links,
    .links-hidden {
      display: inline-block;
      color: rgb(0, 0, 0);
      padding: 7px 7px;
      text-decoration: none;
      font-size: 16px;

    }

    button {
      background-color: #fff;
    }

    .links-hidden {
      display: block;
      background-color: #fff;
    }

    .links {
      display: inline-block;
    }

    .links-hidden:hover,
    .links:hover {
      background-color: rgb(168, 227, 238);
    }

    .dropdown-menu:hover .menu-content {
      display: block;
    }

    .dropdown-menu:hover .menu-btn {
      background-color: #ffffff;
    }
</style>
</head>
<body>

<header class="site-header">
      <!-- <h1><a href="#">BelieveWear</a></h1> -->
  
     <h1>
        <div class="logo "><img src="images/logo2.png"></div>
      </h1>
      <nav class="site-navigation">
        <ul class="nav">
          <div class="pic">
            <li><a href="home.jsp" class="active" >Home</a></li>
            <!-- <li><a href="#">Product</a></li> -->
            <li>
              <div class="dropdown-menu">
                <a class="menu-btn" href="product.jsp">Product</a>
                <div class="menu-content">
                  <a class="links-hidden" href="product.jsp">Women</a>
                  <a class="links-hidden" href="product.jsp">Men</a>
                  <a class="links-hidden" href="product.jsp">Kids</a>
                  <a class="links-hidden" href="product.jsp">All</a>
                </div>
              </div>
            </li>
            
            <li><a href="cart.jsp">Cart</a></li>
            <li><a href="about.jsp">About us</a></li>
            <li><a href="logoutServlet">Logout</a></li>
            <li>
              <input type="text" placeholder="Search.." name="search">
              <button ><a href="product.jsp"><i class="fa fa-search"></i></a></button>
            </li>
            <li><a href="profile.jsp"><img src="images/snap.png"alt="Avatar"></a></li>
          </div>
        </ul>
      </nav>
    </header>

</body>
</html>