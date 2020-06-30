<%@page import="com.dts.SBIBanking.dao.*,com.dts.SBIBanking.model.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>
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
          
          
          
     <center><h3>Update Account Type Master Form</h3></center><%
int id=Integer.parseInt(request.getParameter("Id"));
AccountTypeMasterDao dao=new AccountTypeMasterDao();
AccountTypeMasterForm form=dao.ViewAccountTypeMasterById(id);
%>
<form action="UpdateAccountTypeMasterAction.jsp"><table align=center bgcolor="#479156">
			<tr><td bgcolor="#98E2A7"></td>
			<td bgcolor="#93DDA2"><input type=hidden name=accountTypeId value="<%=form.getAccTypeId() %>"></td></tr>
			<tr><td bgcolor="#98E2A7"><strong>IntrestApplicable : </strong></td>
			<td bgcolor="#93DDA2"><input type=text name="intrestApplicable" value="<%=form.getIntrestApplicable() %>"/></td></tr> 
			<tr><td bgcolor="#98E2A7"><strong>MaxOpenBal : </strong></td>
			<td bgcolor="#93DDA2"><input type=text name="maxOpenBal" value="<%=form.getMaxOpenBal() %>"/> </td></tr>
			<tr><td bgcolor="#98E2A7"><strong>TypeName : </strong></td>
			<td bgcolor="#93DDA2"><input type=text name="typeName" value="<%=form.getTypeName() %>"/> </td></tr>
			<tr><td bgcolor="#98E2A7"><strong>CheckbookFacilityBit : </strong></td>
			<td bgcolor="#93DDA2"><input type=text name="checkbookFacilityBit" value="<%=form.getCheckbookFacilityBit() %>"/></td></tr> 
			<tr><td bgcolor="#98E2A7"><strong>MinOpenBal : </strong></td>
			<td bgcolor="#93DDA2"><input type=text name="minOpenBal" value="<%=form.getMinOpenBal() %>"/> </td></tr>
			<tr><td bgcolor="#98E2A7"><strong>Description :</strong></td>
			<td bgcolor="#93DDA2"> <input type=text name="description" value="<%=form.getDescription() %>"/> </td></tr>
			<tr>
			  <td bgcolor="#98E2A7"><strong>Abbrivation :</strong></td>
			<td bgcolor="#93DDA2"> <input type=text name="abbr" value="<%=form.getAbbr() %>"/> </td></tr>
			<tr><td bgcolor="#98E2A7"> </td>
			<td bgcolor="#93DDA2"><input type=hidden name="bankTypeBit" value="<%=form.getBankTypeBit() %>"/></td></tr> 
			<tr><td bgcolor="#98E2A7"> </td>
			<td bgcolor="#93DDA2"><input type=hidden name="balanceTypeBit" value="<%=form.getBalanceTypeBit() %>"/> </td></tr>
			<tr><td bgcolor="#98E2A7"><strong>MinBalToBeMaintain : </strong></td>
			<td bgcolor="#93DDA2"><input type=text name="minBalToBeMaintain" value="<%=form.getMinBalToBeMaintain() %>"/> </td></tr>
			<tr><td bgcolor="#98E2A7"></td>
			<td bgcolor="#93DDA2"><input type=submit name=Register value="Update"/> </td></tr></table>
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

