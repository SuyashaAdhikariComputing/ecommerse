<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE htaml>
<html lang="en">
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Believe wear</title>
        <!--page-icon------------>
<link rel="shortcut icon" href="images/logo.png">
<!--stylesheet------------->
<link rel="stylesheet" type="text/css" href="css/style.css">
<!--light-slider.css------------->
<link rel="stylesheet" type="text/css" href="css/lightslider.css">
<!--Jquery-------------------->
<script type="text/javascript" src="js/Jquery.js"></script>
<!--lightslider.js--------------->
<link href="common.html" rel="import">
<style type = "text/css">
       body {
      font-family: "Open Sans", sans-serif;
      margin: 0;
      scroll-behavior: smooth;
    }

    
  
        .img-m{
        height: 50%;
        width: 50%;
        display: block;
        margin-left: auto;
        margin-right: auto;
        border-radius: 15%;
        }
        .main-container{
        background-color:rgb(255, 255, 255);
     	width:100%;
     	margin:auto;
     	border-radius:px;
      }
        .container{
     	  background-color:rgb(248, 253, 255); 
		  width:31%; 
		  height:80%; 
		  margin-left:25px;
		  margin-top: 25px;
	   	  float: left; 
		  border-radius:20px;
          justify-content: center;
      }
      .container:hover{
             background-color: #a2c6f5;
			 transform: scale(1.001);
			 transition: 0.8s;
      }
      .name{
			margin-top: -5%;
			text-align: center;
			color: rgb(0, 0, 12);
      }
     
       </style>
       
    </head>
    <body>
        <%@include file="nav.jsp" %>
        <div class="main">
            <img src="images/team.png">
        </div>
        <div class="main-container">
        <div class="container">
            <img src="images/s.png" class="img-m" >
            <div class="name">
                <p style="font-size:25px;"><b>Suyasha Adhikari</b></p>
                <p style="font-size:15px; color:#959696;">Meet Suyasha Adhikari - an introverted computing student with a big passion for data analytics and python. With a desire to make a significant contribution to the field, she's a force to be reckoned with in the world of tech.</p>
                <a href="#"><i class="fa fa-linkedin"></i> . </a>
                <a href="#"><i class="fa fa-instagram"></i> . </a>
                <a href="#"><i class="fa fa-facebook"></i> . </a>
            </div>
        </div>
        <div class="container">
            <img src="images/h.png" class="img-m" >
            <div class="name">
                <p style="font-size:25px"><b>Himani Acharya</b></p>
                <p style="font-size:15px; color:#959696;">Meet Himani Acharya - who refuses to be confined by labels. With a background in marketing and a passion for web development and designing, a true  enthusiast who brings a bold and unconventional approach to the table. Get ready to be inspired by this fearless member of our team!</p>
                <a href="#"><i class="fa fa-linkedin"></i> . </a>
                <a href="#"><i class="fa fa-instagram"></i> . </a>
                <a href="#"><i class="fa fa-facebook"></i> . </a>
            </div>
        </div>
        <div class="container">
            <img src="images/c.png" class="img-m" >
            <div class="name">
                <p style="font-size:25px"><b>Chanda Shah</b></p>
                <p style="font-size:15px; color:#959696;"> Meet Chanda Shah, a unique blend of homely charm and tech wizardry. Breaking the stereotype that women aren't cut out for backend programming. With a passion for both frontend and backend development, she's a rising star in the tech world.</p>
                <a href="#"><i class="fa fa-linkedin"></i> . </a>
                <a href="#"><i class="fa fa-instagram"></i> . </a>
                <a href="#"><i class="fa fa-facebook"></i> . </a>
            </div>
        </div>
        </div>
        <div class="container">
            <img src="images/d.png" class="img-m" >
            <div class="name">
                <p style="font-size:25px"><b>Dolraj Pun</b></p>
                <p style="font-size:17px; color:#959696;">Meet Dolraj Pun - our mysterious team member with a passion for python. With an eye toward the future,and a fullfilling career. His unique perspective and commitment to his craft make him an invaluable addition to our team.</p>
                <a href="#"><i class="fa fa-linkedin"></i> . </a>
                <a href="#"><i class="fa fa-instagram"></i> . </a>
                <a href="#"><i class="fa fa-facebook"></i> . </a>
            </div>
        </div>
        </div>
        
       <%@include file="footer.jsp" %>	   
    </body>
    </html>