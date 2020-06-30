function validateFields()
{
	var errMsg = "";

	var myform = document.forms[0].elements;

	for( i=0; i<myform.length-1; i++ )
	{
		if( myform[i].value == "" || myform[i].value == "none" )
			if( myform[i].emsg == null )
				errMsg += myform[i].name + " is Required\n";
			else
				errMsg += myform[i].emsg + " \n";
	}
	if( errMsg == "" )
		return true;
	alert( errMsg );
	return false;
}

function checknumber(){
var x=document.f.accno.value
var anum=/(^\d+$)|(^\d+\.\d+$)/
if (anum.test(x))
testresult=true
else{
alert("Please input a valid number!")
testresult=false
}
return (testresult)
}

function checkban(){
if(validateFields())
{
if (document.layers||document.all||document.getElementById)
return checknumber()
else
return true;
}
else
return false; 
}

