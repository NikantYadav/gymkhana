function ReadMore(n){
	var close = "cls_" + String(n);
	document.getElementById(close).style.display = "none"; 
	var open = "exp_" + String(n);
	document.getElementById(open).style.display = "block";
}

function ReadLess(n){
	var close = "cls_" + String(n);
	document.getElementById(close).style.display = "block"; 
	var open = "exp_" + String(n);
	document.getElementById(open).style.display = "none";
}

function ShowMore(n){
	var close = "cls_" + String(n);
	document.getElementById(close).style.display = "none"; 
	var open = "exp_" + String(n);
	document.getElementById(open).style.display = "block";
}
