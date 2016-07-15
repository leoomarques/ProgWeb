botao = document.getElementById("desenhe");
botao.onclick = function(){
	var alt1 = document.myform.area1.value;
	var alt2 = document.myform.area2.value;
	var alt3 = document.myform.area3.value;
	var alt4 = document.myform.area4.value;
	var alt5 = document.myform.area5.value;

	var larg = document.myform.largura.value;

	document.myform.img1.height = alt1;
	document.myform.img1.width = larg;
	document.myform.img1.value = img1;

	document.myform.img2.height = alt2;
	document.myform.img2.width = larg;
	document.myform.img2.value = img2;

	document.myform.img3.height = alt3;
	document.myform.img3.width = larg;
	document.myform.img3.value = img3;

	document.myform.img4.height = alt4;
	document.myform.img4.width = larg;
	document.myform.img4.value = img4;

	document.myform.img5.height = alt5;
	document.myform.img5.width = larg;
	document.myform.img5.value = img5;
}