// Open The Modal
function openModal(){
	document.getElementById('gal_Modal').style.display = "block";
}
//Close the Modal
function closeModal(){
	document.getElementById('gal_Modal').style.display = "none";
}

var slideIndex = 1;
var modal = document.getElementById('gal_Modal');
// showSlides(slideIndex);

// Next, Previous Controls
function plusSlides(n){
	showSlides(slideIndex += n);
}

function selectSlide(n) {
	showSlides(slideIndex = n);
}

function showSlides(n){
	var slides = document.getElementsByClassName("gal_Slides");

	if(n > slides.length) {slideIndex = 1;}
	if(n < 1) {slideIndex = slides.length;}
	for(i = 0; i < slides.length; i++){
		slides[i].style.display = "none";
	}
	slides[slideIndex-1].style.display = "block";
}

window.onclick = function(event){
	if(event.target == modal){
		modal.style.display = "none";
	}
}

document.onkeydown = function(event){
	var key_code = event.keyCode;

	if(key_code == 37){ //left arrow pressed
		plusSlides(-1);
	}
	else if(key_code == 39){ //right arrow pressed
		plusSlides(1);
	}
	else if(key_code == 27){ //escape pressed
		closeModal();
	}
}