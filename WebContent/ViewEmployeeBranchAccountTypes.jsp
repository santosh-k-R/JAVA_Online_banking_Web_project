

<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.dts.SBIBanking.dao.*,com.dts.SBIBanking.model.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../includes/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #D4F101}
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
        </tr>
      </table> <jsp:include page="EmployeeOptions.jsp"/>
      <table bgcolor="white" width="780" border="0" cellspacing="0" cellpadding="0">
        <tr><td><%if(request.getParameter("status")!=null){ %>
	<font color=red><b><%=request.getParameter("status") %></b></font><%} %></td></tr>
          <tr><td height="314" align="center"><br>
          
          
          
    <center><h3>View Branch Account Types</h3></center>
         <form action="ViewEmployeeBranchAccountTypes.jsp" method="post">
         <table bgcolor="#71BB80"> 
           <tr>
                     <td ><font color="black"><b>Branch Address</b></font></td>
                      <td ><select name="branchId">
                      <%
                      BankBranchMasterDao adao=new BankBranchMasterDao();
                      CoreList acorelist=adao.ViewBankBranchIDS();
                      int size=acorelist.size();
                     Enumeration aenumeration=acorelist.elements();
                     while(aenumeration.hasMoreElements())
                     {
                     BankBranchMasterForm aform=(BankBranchMasterForm)aenumeration.nextElement();
                     
                       %>
                      <option value="<%=aform.getBranchId() %>"><%=aform.getBranchAddr() %></option>
                      <%} %></select>                      </td>
              </tr>
            <tr><td></td><td><input type="submit" name="send" value="Search"/></td></tr></table>
            </form>
                    <%
                    if(request.getParameter("branchId")!=null)
                    {
                    int branchid=Integer.parseInt(request.getParameter("branchId"));
                    %><center><h3>View Account Types</h3></center><form action="DeleteAccountTypeMaster.jsp">
 <table align=center border=1>
 <tr bgcolor="#D4F101">
 
   <th><div align="center"><strong>Type Name</strong></div></th>                       
<th><div align="center"><strong>Abbreviation </strong></div></th>                    
<th><div align="center"><strong>Minimum Opening Balance</strong></div></th>                 
<th><div align="center"><strong>Maximum Opening Balance</strong></div></th>                 
<th><div align="center"><strong>Intrest Calculation</strong></div></th>           
<th><div align="center"><strong>Description </strong></div></th>                    
<th><div align="center"><strong>Minimum Balance</strong></div></th>
<th><div align="center"><strong>Cheque Book</strong></div></th>           
 <%
 
 CoreList cl=new AccountTypeMasterDao().ViewAccountTypeMaster(branchid);
 Enumeration en=cl.elements();
 while(en.hasMoreElements())
 {
 AccountTypeMasterForm form=(AccountTypeMasterForm)en.nextElement();
 %>
 <tr bgcolor="#287237">
 
 <td><span class="style1"><%=form.getTypeName() %></span></td>
 <td><span class="style1"><%=form.getAbbr()%></span></td>
 <td><span class="style1"><%=form.getMinOpenBal()%></span></td>
 <td><span class="style1"><%=form.getMaxOpenBal()%></span></td>
 <td><span class="style1"><%=form.getIntrestApplicable()%></span></td>
 <td><span class="style1"><%=form.getDescription()%></span></td>
 <td><span class="style1"><%=form.getMinBalToBeMaintain()%></span></td>
 <td><span class="style1"><%=form.getCheckbookFacilityBit()%></span></td>
 <%}%>
 </table>
 
 </form>
                    

  <%} %>                  
                    
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

