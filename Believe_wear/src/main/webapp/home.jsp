<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
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
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <!--light-slider.css------------->
  <link rel="stylesheet" type="text/css" href="css/lightslider.css">
  <!--Jquery-------------------->
  <script type="text/javascript" src="js/Jquery.js"></script>
  <!--lightslider.js--------------->
  <script type="text/javascript" src="js/lightslider.js"></script>
<title>Home page</title>

<style type="text/css">
    body {
      font-family: "Open Sans", sans-serif;
      margin: 0;
      scroll-behavior: smooth;
    }
    
    .slideshow-container {
      max-width: 1350px;
      position: relative;
      margin: auto;
    }

    /* Caption text */
    .text {
      color: #ffffff;
      font-size: 10px;
      padding: 8px 12px;
      position: absolute;
      bottom: 8px;
      width: 100%;
      text-align: center;
    }

    /* Number text (1/3 etc) */
    .numbertext {
      color: #f2f2f2;
      font-size: 12px;
      padding: 8px 12px;
      position: absolute;
      top: 0;
    }

    /* The dots/bullets/indicators */
    .dot {
      height: 10px;
      width: 10px;
      margin: 0 2px;
      background-color: #d2d2fc;
      border-radius: 50%;
      display: inline-block;
      transition: background-color 0.6s ease;
    }

    .active {
     text-transform: uppercase;
     color: #000;      
     font-weight: bold;
    }

    /* Fading animation */
    .fade {
      animation-name: fade;
      animation-duration: 1.5s;
    }

    @keyframes fade {
      from {
        opacity: .4
      }

      to {
        opacity: 1
      }
    }

    /* On smaller screens, decrease text size */
    @media only screen and (max-width: 300px) {
      .text {
        font-size: 11px
      }
    }

    .mySlides {
      display: none;
    }

    .sli img {
      vertical-align: middle;
    }

    /* PRODUCTS */
    .product {
      position: relative;
      overflow: hidden;
      padding: 20px;
    }

    .product-category {
      padding: 0 10vw;
      font-size: 30px;
      font-weight: 500;
      margin-bottom: 40px;
      text-transform: capitalize;
    }

    .product-container {
      padding: 0 10vw;
      display: flex;
      overflow-x: auto;
      scroll-behavior: smooth;
    }

    .product-container::-webkit-scrollbar {
      display: none;
    }

    .product-card {
      flex: 0 0 auto;
      width: 250px;
      height: 500px;
      margin-right: 40px;
    }

    .product-image {
      position: relative;
      width: 100%;
      height: 350px;
      overflow: hidden;
    }

    .product-thumb {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .discount-tag {
      position: absolute;
      background: #fff;
      padding: 5px;
      border-radius: 5px;
      color: #ff7d7d;
      right: 10px;
      top: 10px;
      text-transform: capitalize;
    }

    button:hover span {
      width: 100%;
    }

    button:hover {
      border: none;
    }

    .card-btn {
      position: absolute;
      bottom: 10px;
      left: 50%;
      transform: translateX(-50%);
      padding: 10px;
      width: 90%;
      text-transform: capitalize;
      border: none;
      outline: none;
      background: #fff;
      border-radius: 5px;
      transition: 0.5s;
      cursor: pointer;
      opacity: 0;
    }

    .product-card:hover .card-btn {
      opacity: 1;
    }

    .card-btn:hover {
      background: #ff7d7d;
      color: #fff;
    }

    .product-info {
      width: 100%;
      height: 100px;
      padding-top: 10px;
    }

    .product-brand {
      font-size: 15px;
      text-transform: uppercase;
    }

    .product-short-description {
      width: 100%;
      height: 40px;
      line-height: 20px;
      overflow: hidden;
      opacity: 0.5;
      font-size: 12px;
      /* text-transform: capitalize; */
      margin: 5px 0;
    }

    .price {
      font-weight: 900;
      font-size: 20px;
    }

    .actual-price {
      margin-left: 20px;
      opacity: 0.5;
      text-decoration: line-through;
    }

    .pre-btn,
    .nxt-btn {
      border: none;
      width: 10vw;
      height: 100%;
      position: absolute;
      top: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      background: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, #fff 100%);
      cursor: pointer;
      z-index: 8;
    }

    .pre-btn {
      left: 0;
      transform: rotate(180deg);
    }

    .nxt-btn {
      right: 0;
    }

    .pre-btn img,
    .nxt-btn img {
      opacity: 0.2;
    }

    .pre-btn:hover img,
    .nxt-btn:hover img {
      opacity: 1;
    }

    .collection-container {
      width: 100%;
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      grid-gap: 10px;
    }

    .collection {
      position: relative;
    }

    .collection img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .collection p {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      text-align: center;
      color: #fff;
      font-size: 50px;
      text-transform: capitalize;
    }

    .collection:nth-child(3) {
      grid-column: span 2;
      margin-bottom: 10px;
    }

    .emailbox {
      height: 150px;
      width: 450px;
      border-style: ridge;
      /* background-color: #f79f07; */
      margin-left: 500px;
      margin-top: 50px;
      justify-content: center;
      text-align: center;
      margin-bottom: 50px;
    }
</style>
</head>
<body>


<c:if test="${empty customerobj }" >

<c:redirect url="login.jsp"/>

</c:if>



<%@include file="nav.jsp" %>

<div class="slideshow-container">
    <div class="sli">
      <div class="mySlides fade">
        <div class="numbertext">1 / 3</div>
        <img src="images/pamplet.png" style="width:100%; height:100%;">
        <!-- <div class="text">Caption Text</div> -->
      </div>

      <div class="mySlides fade">
        <div class="numbertext">2 / 3</div>
        <img src="images/pamplet1.png" style="width:100%; height:100%;">
        <!-- <div class="text">Caption Two</div> -->
      </div>

      <div class="mySlides fade">
        <div class="numbertext">3 / 3</div>
        <img src="images/pamplet2 .png" style="width:100%; height:100%">
        <!-- <div class="text">Caption Three</div> -->
      </div>
    </div>
  </div>
  <br>

  <div style="text-align:center">
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
  </div>
  <script>
    let slideIndex = 0;
    showSlides();

    function showSlides() {
      let i;
      let slides = document.getElementsByClassName("mySlides");
      let dots = document.getElementsByClassName("dot");
      for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
      }
      slideIndex++;
      if (slideIndex > slides.length) { slideIndex = 1 }
      for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
      }
      slides[slideIndex - 1].style.display = "block";
      dots[slideIndex - 1].className += " active";
      setTimeout(showSlides, 3000); // Change image every 3 seconds
    }
  </script>
  <section class="product">
    <h2 class="product-category">Our Brand(Best Selling)</h2>
    <button class="pre-btn"><img src="images/arrow.png" alt=""></button>
    <button class="nxt-btn"><img src="images/arrow.png" alt=""></button>
    <div class="product-container">
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c8.png" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Believe limitless Collection</h2>
          <p class="product-short-description">Try out this in your wardrobe to feel present, trying today and everyday
          </p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c11.png" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Love Over Fear</h2>
          <p class="product-short-description">Choosing to do the things you fear with love</p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c12.png" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Believe Positive Collection</h2>
          <p class="product-short-description">A collection to raise up your positivity</p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c10.png" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Believe empower collection</h2>
          <p class="product-short-description">To empower you to try out all your fears.</p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c7.png" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Believe Dreamers Collection</h2>
          <p class="product-short-description">Believe Magic just happens</p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c13.png" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Believe Empower collection</h2>
          <p class="product-short-description">Viewing things can happen more beautifully.</p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c9.png" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Seek Discomfort</h2>
          <p class="product-short-description">Stepping outside of your comfort zone to accomplish incredible things.
          </p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c14.png" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Believe women's day collection</h2>
          <p class="product-short-description">For HER to Empower HER</p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
    </div>
  </section>
  <section class="product">
    <h2 class="product-category">Incredible Offers</h2>
    <button class="pre-btn"><img src="images/arrow.png" alt=""></button>
    <button class="nxt-btn"><img src="images/arrow.png" alt=""></button>
    <div class="product-container">
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c16.jpg" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Believe limitless Collection</h2>
          <p class="product-short-description">Try out this in your wardrobe to feel present, trying today and everyday
          </p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c17.jpg" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Love Over Fear</h2>
          <p class="product-short-description">Choosing to do the things you fear with love</p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c18.jpg" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Believe Positive Collection</h2>
          <p class="product-short-description">A collection to raise up your positivity</p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c15.jpg" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Believe empower collection</h2>
          <p class="product-short-description">To empower you to try out all your fears.</p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c19.jpg" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Believe Dreamers Collection</h2>
          <p class="product-short-description">Believe Magic just happens</p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c20.jpg" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Believe Empower collection</h2>
          <p class="product-short-description">Viewing things can happen more beautifully.</p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c21.jpg" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Seek Discomfort</h2>
          <p class="product-short-description">Stepping outside of your comfort zone to accomplish incredible things.
          </p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
      <div class="product-card">
        <div class="product-image">
          <span class="discount-tag">50% off</span>
          <img src="images/c5.png" class="product-thumb" alt="">
          <button class="card-btn">add to cart</button>
        </div>
        <div class="product-info">
          <h2 class="product-brand">Believe women's day collection</h2>
          <p class="product-short-description">For HER to Empower HER</p>
          <span class="price">$20</span><span class="actual-price">$40</span>
        </div>
      </div>
    </div>
  </section>
  <script>
    const productContainers = [...document.querySelectorAll('.product-container')];
    const nxtBtn = [...document.querySelectorAll('.nxt-btn')];
    const preBtn = [...document.querySelectorAll('.pre-btn')];

    productContainers.forEach((item, i) => {
      let containerDimensions = item.getBoundingClientRect();
      let containerWidth = containerDimensions.width;

      nxtBtn[i].addEventListener('click', () => {
        item.scrollLeft += containerWidth;
      })

      preBtn[i].addEventListener('click', () => {
        item.scrollLeft -= containerWidth;
      })
    })
  </script>
  <div class="emailbox">
    <span style="font-size:25px; color:black; font-weight:bold;">JOIN THE FAM</span>
    <p style="color:#000; font-size: 18px;">And enter for a chance to win a $500 gift card</p>
    <label for="email">Enter your email:</label>
    <input type="email" id="email" name="email">
  </div>
 <%@include file="footer.jsp" %>	
</body>
</html>