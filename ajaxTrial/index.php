<?php
/***********************************************
* Created:            Thu 06 Sep 2012 10:10:31 AM PDT 
* Last Modified:      Thu 06 Sep 2012 10:10:31 AM PDT
*
* The HTML page of the AJAX test/demonstration, the part the user sees.
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
?>
<html> 
<head> 
	<title>Welcome!</title>
	<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

	<script type='text/javascript'> 
		$(document).ready(function(){ 
			$("#search_results").slideUp(); 
		    $("#search_button").click(function(e){ 
		        e.preventDefault(); 
		        ajax_search(); 
		    }); 
		    $("#search_term").keyup(function(e){ 
		        e.preventDefault(); 
				ajax_search(); 
		    });
	        $("#slider").slider();
		});
	
		function ajax_search(){ 
			$("#search_results").show(); 
			var search_val=$("#search_term").val(); 
			$.post("./find.php", {search_term : search_val}, function(data){
				if (data.length>0){ 
					$("#search_results").html(data); 
				}
			})
		} 
	</script>
	<style type="text/css">
		#slider { margin: 10px; }
	</style>
</head> 

<body> 
<h1>Search our Phone Directory</h1> 
    <form id="searchform" method="post"> 
<div> 
        <label for="search_term">Search name/phone</label> 
        <input type="text" name="search_term" id="search_term" /> 
<input type="submit" value="search" id="search_button" /> 
</div> 
    </form> 
    <div id="search_results"></div> 
</body> 
</html> 
