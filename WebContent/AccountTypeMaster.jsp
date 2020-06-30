<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>
<script type="text/javascript" src="scripts/project.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../includes/style.css" rel="stylesheet" type="text/css">
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
        </tr><tr><td align=center width=1500><font color=white><jsp:include page="Adminoptions.jsp"/></font></td></tr>
      </table> 
  
      <table bgcolor="white" width="780" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="314" align="center"><br>
          
          
          
   
         
         <center><h3>Account Type Name</h3></center>
          <%if(request.getParameter("status")!=null){ %>
	<%=request.getParameter("status") %><%} %>
	
		<form action="accountTypeAction.do" onsubmit="return validateFields()"><table align=center bgcolor="#96E0A5">
			<tr>
			  <td><strong> Account Type Name : </strong></td>
			<td><input type=text name="typeName"/> </td></tr>
		<tr>
		  <td><strong>Account Abbreviation :</strong></td>
		<td> <input type=text name="abbr"/> </td></tr>
			<tr><td><strong>Minimum Open Balance : </strong></td>
			<td><input type=text name="minOpenBal"/> </td></tr>
<tr><td><strong>Maximum Open Balance : </strong></td>
<td><input type=text name="maxOpenBal"/> </td></tr>
			<tr><td><strong>Intrest Applicable : </strong></td>
			<td><input type=text name="intrestApplicable"/></td></tr> 
			<tr><td><strong>Description :</strong></td>
			<td> <input type=text name="description"/> </td></tr>
<tr><td><strong>Minimum Balance To Be Maintain : </strong></td>
<td><input type=text name="minBalToBeMaintain"/> </td></tr>
			<tr><td><strong>Checkbook Facility Bit : </strong></td>
			<td><select name="checkbookFacilityBit"><option value="yes">yes</option>
			<option value="No">No</option></select></td></tr> 
			 
			<tr><td><strong>Balance Type Bit : </strong></td>
			<td><select name="balanceTypeBit"><option value="M">M</option>
			<option value="Q">Q</option><option value="H">H</option>
			<option value="H">Y</option></select> </td></tr>
			
			<tr><td></td>
			<td><input type=submit name=Register value="Register"/> </td></tr></table>
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

