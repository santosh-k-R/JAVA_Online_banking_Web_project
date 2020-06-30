<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>
<script language="JavaScript1.2">
/*Number check script-
By JavaScript Kit (www.javascriptkit.com)
Over 200 free scripts here!
*/

function checknumber(){
var x=document.f.fromnumber.value
var y=document.f.toNumber.value
var anum=/(^\d+$)|(^\d+\.\d+$)/
if (anum.test(x))
testresult=true
else{
alert("Please input a valid number!")
testresult=false
}
if (anum.test(y))
testresult=true

else{
alert("Please input a valid number!")
testresult=false
}

return (testresult)
}

</script>
<script>
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
</script>

<script type="text/javascript" src="scripts/project.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../includes/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style2 {font-weight: bold}
-->
</style>
</head>

<body bgcolor="004B10" leftmargin="0" topmargin="0" onLoad="goforit()">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="middle"><table width="780" border="0" cellspacing="0" cellpadding="0">
        <tr>

          <td height="71" valign="bottom" background="./images/satya.JPG"><table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td><div align="right"> 
               
<span id="clock"></span>
                  </div></td>
              </tr>
            </table></td>
        </tr>
      </table>

      <table width="780" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="images/pqr.png" width="780" height="101"></td>
        </tr><tr><td align=center width=1500><font color=white>
        <jsp:include page="EmployeeOptions.jsp"/>
        </font></td></tr>
      </table> 
  
      <table bgcolor="white" width="780" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="314" align="center"><br>
          
          
          
    <center><h3><strong><em>Cheque Issue Master</em></strong></h3>
    </center>
         <form action="./chequeIssueAction.do" name="f" onsubmit="return checkban()">
			 <input type="hidden" name="accountno" value="<%=request.getParameter("accountno") %>"/>
			
		<table bgcolor="#89D398">
		  <tr><td><em><strong>	From number :</strong></em></td>
		  <td> <input type="text" name="fromnumber"/></td></tr>
			<tr><td>
			 <input name="loginname" type="hidden" class="style2" value="<%=(String)session.getAttribute("user") %>"/></td>
			</tr>
	<tr><td><em><strong>		To Number :</strong></em></td>
	<td> <input type="text" name="toNumber"/></td></tr>
			
		 <input type="hidden" name="requestid" value="<%=request.getParameter("requestid") %>"/>
		<tr><td></td>
		<td><input type="submit" name="Send" value="Issue"/></td></tr>
		</table>
         </form>
         
         
                    
                    
                    
                    
                    
		   <table width="85%" border="0" align="center" cellpadding="2" cellspacing="0">

                    <tr> 
                      <td height="18" valign="top"><img src="../images/trans.gif" width="5" height="5"></td>
                    </tr>
                    <tr> 
                      <td height="18" valign="top">&nbsp;</td>
                    </tr>
                   
      </table></td>
  </tr>
</table>
</body>
</html>

