var ptstr="";
<cardtype-rows>
	ptstr+="<option value='${fld:code}' code='${fld:cardfee}' codeday='${fld:daycount}' codegiveday='${fld:giveday}' codept='${fld:ptcount}'>${fld:name@js}</option>"
</cardtype-rows>


if("${fld:tcode}"!=null||"${fld:tcode}"!=""){
	$("#cardtype").html(ptstr);
	$("#cardtype").selectpicker("val", "${fld:tcode}");
}else{
	$("#cardtype").html(ptstr);
	
}
$("#cardtype").selectpicker("refresh");
$("#cardtype").selectpicker("render");
