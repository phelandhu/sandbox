<?php
// crawler.php
/***********************************************
* Created:            Apr 16, 2013 2:12:03 PM
* Last Modified:      Apr 16, 2013 2:12:03 PM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/
require("crawler/crawler.class.php");

$crawl = new Crawler('http://rockmanx.wordpress.com/2008/05/09/installing-ubuntus-apache2-local-webserver/');
$images = $crawl->get('images');
//print_r($images);
$links = $crawl->get('links');
//print_r($links);
