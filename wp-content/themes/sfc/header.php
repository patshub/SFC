<!DOCTYPE html>
<html>
<head>
   <meta name="description" content="This is the form demo of the talk Talking and listening to web pages" />
   <meta charset="utf-8">
   <title>Template</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--  jQUERY -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/style.css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">



    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/assets/js/swipebox-master/src/css/swipebox.css">
    <script src="<?php bloginfo('template_url'); ?>/assets/js/script.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/assets/js/swipebox-master/lib/jquery-2.1.0.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/assets/js/swipebox-master/src/js/jquery.swipebox.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</head>

<script>
  $( document ).ready(function() {
    $('header ul.menu').prepend('<li><a href="/sfc"><img class="icon-home" src="<?php bloginfo('template_url'); ?>/assets/images/icon-home.svg"/></a></li>');
  });
</script>

<body>
  <header>
    <div class="container">
      <a href="/sfc"><img class="logo" src="<?php bloginfo('template_url'); ?>/assets/images/logo.svg"/></a>

      <?php wp_nav_menu( array( 'theme_location' => 'main-menu','container' => false ) ); ?>
      <!-- <ul class="menu">
        <li><a href="#">About Us</a></li>
        <li><a href="#">News</a></li>
        <li><a href="#">Events</a></li>
        <li><a href="#">CLP Program</a></li>
        <li><a href="#">ANCOP</a></li>
        <li><a href="#">Gift of Life</a></li>
        <li><a href="#">Media</a></li>
      </ul> -->
      <div class="clear"></div>
    </div>
  </header>
