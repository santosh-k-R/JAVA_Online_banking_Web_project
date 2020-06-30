
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="com.dts.SBIBanking.dao.*,com.dts.SBIBanking.model.*"%>
 <%
int id=Integer.parseInt(request.getParameter("Id"));
BankBranchMasterDao dao=new BankBranchMasterDao();
BankBranchMasterForm form=dao.ViewBankBranchMasterById(id);
%>


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
        <tr><td><%if(request.getParameter("status")!=null){ %>
	<font color=blue><b><%=request.getParameter("status") %></b></font><%} %></td></tr>
          <tr><td height="314" align="center"><br>
          
          
          
    <center><h3>Update Bank Branch Master</h3></center>
         
         
         
                   
	 
<form action="UpdateBankBranchMasterAction.jsp"><table align=center>
			<tr><td bgcolor="#8ED89D"><strong>BranchId</strong></td>
			<td bgcolor="#8ED89D"><input type=text name=branchId value="<%=form.getBranchId() %>" readonly></td></tr>
			<tr><td bgcolor="#8ED89D"><strong>BranchEmailId :</strong></td>
			<td bgcolor="#8ED89D"> <input type=text name="branchEmailId" value="<%=form.getBranchEmailId() %>"/></td></tr> 
<%--			<tr><td>BranchInchrgId : </td><td><input type=text name="branchInchrgId" value="<%=form.getBranchInchrgId() %>"/></td></tr>--%>
			<tr><td bgcolor="#8ED89D"><strong>BranchPhNo3 : </strong></td>
			<td bgcolor="#8ED89D"><input type=text name="branchPhNo3" value="<%=form.getBranchPhNo3() %>"/> </td></tr>
			<tr><td bgcolor="#8ED89D"><strong>BranchPhNo1 : </strong></td>
			<td bgcolor="#8ED89D"><input type=text name="branchPhNo1" value="<%=form.getBranchPhNo1() %>"/> </td></tr>
			<tr><td bgcolor="#8ED89D"><strong>BranchPhNo2 : </strong></td>
			<td bgcolor="#8ED89D"><input type=text name="branchPhNo2" value="<%=form.getBranchPhNo2() %>"/> </td></tr>
			<tr><td bgcolor="#8ED89D"><strong>BranchAddr :</strong></td>
			<td bgcolor="#8ED89D"> <input type=text name="branchAddr" value="<%=form.getBranchAddr() %>"/> </td></tr>
			<tr><td bgcolor="#8ED89D"></td>
			<td bgcolor="#8ED89D"><input type=submit name=Register value="Update"/> </td></tr></table>
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

 
 
	
	 


