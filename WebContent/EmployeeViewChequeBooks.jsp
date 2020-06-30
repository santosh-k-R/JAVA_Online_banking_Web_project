
<%@page import="com.dts.SBIBanking.dao.ChequeBookRequest"%>
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.dts.SBIBanking.model.BankChequeRequestForm"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../includes/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {
	color: #D4F101;
	font-weight: bold;
}
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
          
          
          
    <center><h3>Cheque Book Requests</h3></center>
         <table><tr bgcolor="#D4F101"><td><div align="center"><strong>Login Id</strong></div></td>
         <td><div align="center"><strong>Request Date</strong></div></td>
         <td><div align="center"><strong>Account no</strong></div></td>
         <td><div align="center"><strong>ChequeBookTest</strong></div></td>
         <td><div align="center"><strong>PreviousChequeBookStatus</strong></div></td>
         <td><div align="center"><strong>Status</strong></div></td>
         </tr>
         <%CoreList acorelist=(CoreList)request.getAttribute("ViewChequebook"); 
         Enumeration aenumeration=acorelist.elements();
         while(aenumeration.hasMoreElements()){
         BankChequeRequestForm bcform=(BankChequeRequestForm)aenumeration.nextElement();
          %>
        <tr bgcolor="#0C561B"><td><span class="style1"><%=bcform.getLoginid() %></span></td><td><span class="style1"><%=bcform.getRequestDate() %></span></td>
        <td><span class="style1"><%=bcform.getAccountno() %></span></td>
        <td><span class="style1"><%=bcform.getChequebookrequest() %></span></td>
        <td><span class="style1"><%=bcform.getPreviousChequeBookStatus() %></span></td>
        <td><span class="style1"><%=bcform.getStatus() %></span></td>
        <%if(!bcform.getStatus().equalsIgnoreCase("Accepted")){ %><td><a href="ChequeIssueMaster.jsp?requestid=<%=bcform.getRequestid() %>&accountno=<%=bcform.getAccountno() %>" class="style1">SendChequeBook</a></td><%} %></tr>
        <%} %></table>
         
         
                    
                    
                    
                    
                    
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

