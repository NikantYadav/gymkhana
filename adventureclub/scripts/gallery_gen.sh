#!/bin/bash
html="<!DOCTYPE html> \n \n
			<html> \n
			<head> \n
			<title>Adventure Sports Club IIT Kanpur</title> \n
			<meta charset=\"utf-8\"> \n
			<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\"> \n
			<link href=\"../layout/styles/layout.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\"> \n
			</head> \n
			<body id=\"top\"> \n
			<!-- ################################################################################################ --> \n
			<!-- ################################################################################################ --> \n
			<!-- Top Background Image Wrapper --> \n
			<div class=\"bgded\" style=\"background-image:url('../images/backgrounds/adventure_bg.jpg'); background-position: 40% 40%\">  \n
			<!-- ################################################################################################ --> \n
			<div class=\"wrapper overlay\"> \n
			<header id=\"header\" class=\"hoc clear\"> \n
			  <nav id=\"mainav\" >  \n
			    <!-- ################################################################################################ --> \n
			    <ul class=\"navlist\"> \n
			      <li><a href=\"../index.html\">Home</a></li> \n
			      <li class=\"active drop\"><a class=\"drop\" href=\"#\">Pages</a> \n
			        <div class=\"drop-content\"> \n
			          <ul id=\"droplist\"> \n
			            <li class=\"active\"><a href=\"../pages/gallery_auto.html\">Gallery</a></li> \n
			            <li><a href=\"../pages/history.html\">History</a></li> \n
			            <li><a href=\"../pages/trip_writeups.html\">Write-ups</a></li>
			            <li><a href=\"../pages/miscellaneous.html\">Miscellaneous</a></li>
			          </ul> \n
			        </div> \n
			      </li> \n
			      <!-- <li><a class=\"drop\" href=\"#\">Dropdown</a> --> \n
			        <!-- <ul> \n
			          <li><a href=\"#\">Level 2</a></li> \n
			          <li><a class=\"drop\" href=\"#\">Level 2 + Drop</a> \n
			            <ul> \n
			              <li><a href=\"#\">Level 3</a></li> \n
			              <li><a href=\"#\">Level 3</a></li> \n
			              <li><a href=\"#\">Level 3</a></li> \n
			            </ul> \n
			          </li> \n
			          <li><a href=\"#\">Level 2</a></li> \n
			        </ul> --> \n
			      </li> \n
			      <li><a href=\"../pages/coordinators.html\">Coordinators</a></li> \n
			      <li><a href=\"../pages/contact.html\">Contact Us</a></li> \n
			      <!-- <li><a href=\"#\">Link Text</a></li> \n
			      <li><a href=\"#\">Long Link Text</a></li> --> \n
			    </ul> \n
			    <!-- ################################################################################################ --> \n
			  </nav> \n \n
			  <div id=\"logo\">  \n
			    <!-- ################################################################################################ --> \n
			    <h1><a href=\"../index.html\">Adventure Sports Club <br> IIT Kanpur</a></h1> \n
			    <p>since 1992</p> \n
			    <!-- ################################################################################################ --> \n
			  </div> \n
			</header> \n\n
			</div> \n \n
			<!-- ################################################################################################ --> \n
			</div> \n \n
			<main class=\"container region1\">  \n
			<!-- main body --> \n
			<!-- ################################################################################################ --> \n
			<h1 class=\"content-center pad\"><b>Gallery</b></h1> \n
			<div class=\"grid-container content-center\"> \n" 

# echo ${#html}

var1=""
count=0
for entry in "../images/gallery"/*
do
	count=$count+1
	var1="$var1
		<div class=\"grid-item\"> \n
        <img src=\"$entry\" onclick=\"openModal();selectSlide($count)\" class=\"hover-shadow cursor\"> \n
      </div> \n"
done

html="$html \n \n $var1"

var2=" </div> \n \n
    <div id=\"gal_Modal\" class=\"modal\"> \n
      <span class=\"close cursor\" onclick=\"closeModal()\">&times;</span> \n
      <div class=\"modal-content\"> \n \n
        <!-- Next and Previous Controls  --> \n
        <a class=\"prev\" onclick=\"plusSlides(-1)\"> &#10094;</a> \n
        <a class=\"next\" onclick=\"plusSlides(1)\"> &#10095;</a> \n"

html="$html \n \n $var2"

var3=""
for entry in "../images/gallery"/*
do
	var3="$var3 <div class=\"gal_Slides\"> \n
          <img src=\"$entry\"> \n
        </div> \n "
done

html="$html \n \n $var3"

var4=" 	<div class=\"pad\"></div> \n
		</div> \n
		<div class=\"pad\"></div> \n
    </div> \n \n
</main> \n \n \n
<footer id=\"footer\" class=\"\"></footer> \n \n \n
<script type=\"text/javascript\" src=\"../layout/js/gallery.js\"></script> \n
</body> \n
</html> \n"

html="$html \n \n $var4"

printf "%b " $html > "../pages/gallery_auto.html"

