<?php
/**
 * index.php is a model for largely static PHP pages 
 *
 * @package nmCommon
 * @author Bill Newman <williamnewman@gmail.com>
 * @version 2.091 2011/06/17
 * @link http://www.newmanix.com/
 * @license https://www.apache.org/licenses/LICENSE-2.0
 * @see config_inc.php 
 * @todo none
 */
 
require 'inc_0700/config_inc.php'; #provides configuration, pathing, error handling, db credentials
$config->titleTag = THIS_PAGE; #Fills <title> tag. If left empty will fallback to $config->titleTag in config_inc.php

//below you can add a link to a unique page to the existing nav as follows
//$config->nav1 = array("aboutus.php"=>"About Us") + $config->nav1; 
/*
$config->metaDescription = 'Web Database ITC281 class website.'; #Fills <meta> tags.
$config->metaKeywords = 'SCCC,Seattle Central,ITC281,database,mysql,php';
$config->metaRobots = 'no index, no follow';
$config->loadhead = ''; #load page specific JS
$config->banner = ''; #goes inside header
$config->copyright = ''; #goes inside footer
$config->sidebar1 = ''; #goes inside left side of page
$config->sidebar2 = ''; #goes inside right side of page
$config->nav1["page.php"] = "New Page!"; #add a new page to end of nav1 (viewable this page only)!!
$config->nav1 = array("page.php"=>"New Page!") + $config->nav1; #add a new page to beginning of nav1 (viewable this page only)!!
*/

# END CONFIG AREA ---------------------------------------------------------- 

get_header(); #defaults to theme header or header_inc.php
?>
<div class="jumbotron" style="margin-top:.5em;">
        <img class="banner-pic" src="images/gourmet-dog.png" alt="gourmet hotdog">
	<h1><?=$config->banner;?></h1>
	<p><em><?=$config->slogan;?></em></p>
	<a href="dog-shop.php" target="_blank" class="btn btn-primary btn-lg">Get Chowing!</a>

</div>

<div class="background">
<h1>Welcome To the Magic World of Gourmet HotDogs</h1>

<h2>At JGC<sup>2</sup> HotDogs we take our HotDogs Seriously!! </h2>
<p> 
<img src="images/gourmet-hotdog.jpg" alt="gourmet hot-dog picture">
 Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. 
De carne lumbering animata corpora quaeritis. Summus brains sit, morbo vel maleficia? De apocalypsi gorger    </p>
</div>
<?php

//add a benchmarking note as follows:
//$config->benchNote = "Test From Index File!";

get_footer(); #defaults to theme header or footer_inc.php
?>
