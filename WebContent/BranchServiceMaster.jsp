
<%@page import="com.dts.SBIBanking.dao.*,com.dts.SBIBanking.model.*"%>
<%@ page import="java.util.*,com.dts.core.util.*" %>
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
        </tr>
      </table>
       <jsp:include page="Adminoptions.jsp"/>
      <table bgcolor="white" width="780" border="0" cellspacing="0" cellpadding="0">
        <tr><td><%if(request.getParameter("status")!=null){ %>
	<font color=red><b><%=request.getParameter("status") %></b></font><%} %></td></tr>
          <tr><td height="314" align="center"><br>
          
          
          
    <center><h3>Branch Services Master Form</h3></center>
          <form action="./branchServiceAction.do" method="post" name="register">
           
         <table width="357" border="0" align="center" bordercolor="#ECE9D8" bgcolor="#59A368">
          <tr>
             <td width="351"><table width="335"  border="0" align="center">
               <tr>
                 <td width="6" height="120" align="right"></td>
                 <td width="314"><table border="0" align="center">
                   <tr>
                     <td width="107" ><font color="black"><b>Branch Address</b></font></td>
                      <td width="105" ><select name="branchId">
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
                   <tr>
                     <td ><font color="black"><b>Service Name</b></font></td>
                      <td ><select name="serviceid">
                      <%
                      BankServicesMasterDao adao1=new BankServicesMasterDao();
                      CoreList acorelist1=adao1.ViewBankServicesMaster();
                      int size1=acorelist1.size();
                     Enumeration aenumeration1=acorelist1.elements();
                     while(aenumeration1.hasMoreElements())
                     {
                     BankServicesMasterForm aform=(BankServicesMasterForm)aenumeration1.nextElement();
                     
                       %>
                      <option value="<%=aform.getServiceId() %>"><%=aform.getServiceName() %></option>
                      <%} %></select>                      </td>
                      </tr>
                   <tr>
                     <td colspan="2">
                       <div align="center">
                         <input type="submit" name="Submit" value="Register">
                          &nbsp;
                          
                         </div>                        </td>
                      </tr>
                 </table></td>
                 <td width="10">&nbsp;</td>
               </tr>
               
               
             </table></td>
           </tr>
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

