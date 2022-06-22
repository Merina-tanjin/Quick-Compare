<?php
defined('BASEPATH') or exit('No direct script access allowed');
?><!DOCTYPE html>
<html>
<head>
  <title>Welcome to Quick Compare</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<style>
    body{
    	height: 100vh;
		background-color: #C9F3C3;
        font-family: 'Baskervville';
		cursor:pointer;
    }
	.image {
		text-align: center;
	}
	.clickText {
		text-align: end;
	}
	img{
		margin-top: 60px;
		height: 80vh;
	}
	/*Responsives*/
	@media only screen and (orientation: portrait) {
	  img {
	    height: 70vw;
	    margin-top: 20vh;
	  }
	}
</style>
<body>
	<div class="image">
		<img src="<?= base_url()?>public/assets/images/logo.png">
	</div>
	<div class="clickText">
		<h3>Click Anywhere to Continue...</h3>
	</div>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>

<script>
$(document).ready(function() {
    $("body").click(function(){
		window.location.href="<?= base_url()?>Home/country";
	});
}); 
</script>
