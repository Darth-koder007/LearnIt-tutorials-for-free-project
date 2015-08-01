<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Learn for free</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
  <script src="js/prefixfree.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<header>
  <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#featured"><h1>Learn It <span class="subhead">For everyone</span></h1></a>
      </div><!-- navbar-header -->
      <div class="collapse navbar-collapse" id="collapse">
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="#featured">Home</a></li>
          <li><a href="#mission">Introduction</a></li>
          <li><a href="#basics">Basics</a></li>
          <li><a href="#staff">More Tutorials</a></li>
          <li><a href="#testimonials">Testimonials</a></li>
        </ul>        
      </div><!-- collapse navbar-collapse -->
    </div><!-- container -->
  </nav>

  <div class="carousel fade" data-ride="carousel" id="featured">

    <ol class="carousel-indicators">
    </ol>

    <div class="carousel-inner fullheight">
      <div class="item"><img src="images/carousel-bootstrap.jpg" alt="bootstrap Photo"></div>
      <div class="item"><img src="images/carousel-css3.jpg" alt="css3"></div>
      <div class="item"><img src="images/carousel-html5.jpg" alt="html5"></div>
      <div class="item"><img src="images/carousel-jquery.png" alt="jquery"></div>
      <div class="item"><img src="images/carousel-mysql.png" alt="mysql"></div>      
    </div><!-- carousel-inner -->

    <a class="left carousel-control" href="#featured" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#featured" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
  </div><!-- featured carousel -->
</header>


  <div class="page" id="mission">
    <div class="content container">
      <h2>Our Mission</h2>      
      <div class="row">
        <p class="col-md-5 col-md-offset-1">At Learn It, we provide the latest and the best tutorials to provide an edge to our readers. Complete web development as well as programming tutorials are incorporated in this site. All content is updated regularly and new content is added. Learn It also provides downloadable content for offline study. </p>
        <p class="col-md-5">Learn It is based on responsive design, so you can access our tutorials on any device for absolutely free. We strive to provide the best content. Various experts have provided their opinions on Learn It and they are exceptional. We have wide range of tutorials from web technologies to programming languages as well as databases</p>
      </div><!-- row -->
    </div><!-- content container -->
  </div><!-- mission page -->

  <div class="page" id="basic">
    <div class="content container">
      <h2>Basics</h2>
      <div class="row">
        <article class="basic col-md-4 col-sm-6 col-xs-12">
          <img class="icon" src="images/html5.svg" alt="Icon">
          <h3>HTML 5</h3>
          <p>HTML stands for Hypertext Markup Language, and it is the most widely used language to write Web Pages. HTML5 is the latest and most enhanced version of HTML.</p>
        </article>

        <article class="basic col-md-4 col-sm-6 col-xs-12">
          <img class="icon" src="images/bootstrap.svg" alt="Icon">
          <h3>Bootstrap</h3>
          <p>Twitter Bootstrap is the most popular front end frameworks currently. It is sleek, intuitive, and powerful mobile first front-end framework for faster and easier web development.</p>
        </article>

        <article class="basic col-md-4 col-sm-6 col-xs-12">
          <img class="icon" src="images/js.svg" alt="Icon">
          <h3>Javascript</h3>
          <p>Javascript is a scripting language produced by Netscape for use within HTML Web pages.JavaScript is loosely based on Java and it is built into all the major modern browsers</p>
        </article>

        <article class="basic col-md-4 col-sm-6 col-xs-12">
          <img class="icon" src="images/mysql.svg" alt="Icon">
          <h3>MySQL</h3>
          <p>MySQL is the most popular Open Source Relational SQL database management system. MySQL is one of the best RDBMS being used for developing web-based software applications.</p>
        </article>

        <article class="basic col-md-4 col-sm-6 col-xs-12">
          <img class="icon" src="images/php.svg" alt="Icon">
          <h3>PHP</h3>
          <p>The Hypertext Preprocessor (PHP) is a programming language that allows web developers to create dynamic content that interacts with databases.PHP is basically used for developing web based software applications.</p>
        </article>

        <article class="basic col-md-4 col-sm-6 col-xs-12">
          <img class="icon" src="images/jquery.svg" alt="Icon">
          <h3>jQuery</h3>
          <p>jQuery is a fast and concise JavaScript library. jQuery simplifies HTML document traversing, event handling, animating, and Ajax interactions for Rapid Web Development.</p>
        </article>   
      </div><!-- row -->   
    </div><!-- content container -->
  </div><!-- basics page -->
  
  <!--setting data source-->
   <sql:setDataSource var="ds" dataSource="jdbc/tutorial_learnit"/>
     
  <div class="page" id="topics">
    <div class="container-fluid">
     <table class="table">
     </table>
    </div><!-- container -->
  </div><!-- topics page -->

  <div class="page" id="testimonials">
    <div class="container-fluid">
      <h2>Testimonials</h2>
      <div class="row">
        <blockquote class="col-md-12 col-lg-6" id="janeh">
          <div class="quote">
            <span class="intro">expert opinion 1</span>
            <span class="more">more</span>
            <span class="expert">expert 1</span>
          </div>
        </blockquote>

        <blockquote class="col-md-12 col-lg-6" id="janeh">
          <div class="quote">
            <span class="intro">expert opinion 2</span>
            <span class="more">more</span>
            <span class="expert">expert 2</span>
          </div>
        </blockquote>

       
    </div><!-- container -->
  </div><!-- testimonials page -->
</div><!-- main -->

<footer>
  <div class="content container-fluid">
    <div class="row">
      <div class="col-sm-6">
        <p>All contents &copy; 2014 <a href="http://hclinfosystems.com">HCL Infosystem</a>. All rights reserved.</p>    
      </div><!-- col-sm-6 -->
      <div class="col-sm-6">
        <nav class="navbar navbar-default" role="navigation">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Terms of use</a></li>
            <li><a href="#">Privacy policy</a></li>
            <li><a href="Controller?action=admin">Admin</a></li>
           </ul>
        </nav>        
      </div><!-- col-sm-6 -->
    </div><!-- row -->
  </div><!-- content container -->
</footer>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/myscript.js"></script>
</body>
</html>
    