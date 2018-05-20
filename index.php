<?php
/**
 * index.php  
 *
 * Landing page for Hot Dog orders.
 * 
 * 
 * @author GABRIELLE Z SAECHAO, JESSE HERNANDEZ
 * @version 1.0 2018/05/14
 * @link http://jesseh-codes.com/foodtruck3/
 * @license https://www.apache.org/licenses/LICENSE-2.0
 * @see config_inc.php 
 * @todo none
 */
 
require 'inc_0700/config_inc.php'; #provides configuration, pathing, error handling, db credentials
$config->titleTag = 'WELCOME - Gourmet Hot Dogs'; #Fills <title> tag. If left empty will fallback to $config->titleTag in config_inc.php


# END CONFIG AREA ---------------------------------------------------------- 

get_header(); #defaults to theme header or header_inc.php
?>
<div class="jumbotron" style="margin-top:.5em;">
	<h1>Gourmet Hot Dogs</h1>
	<p><em><?=$config->slogan;?></em></p>
	<img src="images/food-truck.svg" alt="" width="55"> <p>&nbsp</p><a href="/foodtruck3/order.php" class="btn btn-warning">Order Here!</a>
</div>

<?php

//add a benchmarking note as follows:
//$config->benchNote = "Test From Index File!";

get_footer(); #defaults to theme header or footer_inc.php
?>
