<?php
/***********************************************
* Created:            Wed 12 Sep 2012 10:54:54 AM PDT 
* Last Modified:      Wed 12 Sep 2012 10:56:53 AM PDT
*
* Example of a bootstrapping file and site
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
    // let's setup a root path constant
    define('ROOT', getcwd() . DIRECTORY_SEPARATOR);

    // define the includes and config folders
    define('INCLUDES', ROOT . 'includes' . DIRECTORY_SEPARATOR);
    define('CONFIG', ROOT . 'config' . DIRECTORY_SEPARATOR);

    //load in the main configuration file
    include_once(CONFIG . 'base.inc.php');

    // define constants used throughout the site

    // define our status constant
    define('STATUS', 'production');
echo "test";

?>

