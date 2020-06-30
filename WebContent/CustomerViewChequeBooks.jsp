
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
.style6 {color: #000000; font-weight: bold; font-style: italic; }
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
        <jsp:include page="customeroptions.jsp"/></font></td></tr>
      </table> 
  
      <table bgcolor="white" width="780" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="314" align="center"><br>
          
          
          
    <center><h3>Cheque Book Requests</h3></center>
         <table><tr bgcolor="#FFFF00"><td><div align="center" class="style6">Login Id</div></td>
         <td><div align="center" class="style6">Request Date</div></td>
         <td><div align="center" class="style6">Account no</div></td>
         <td><div align="center" class="style6">ChequeBookTest</div></td>
         <td><div align="center" class="style6">PreviousChequeBookStatus</div></td>
         <td><div align="center" class="style6">Status</div></td>
         </tr>
         <%//CoreList acorelist=(CoreList)request.getAttribute("ViewChequebook"); 
         	ChequeBookRequest crequest=new ChequeBookRequest();
         	CoreList acorelist=crequest.viewChequebookrequests((String)session.getAttribute("user"));
         Enumeration aenumeration=acorelist.elements();
         
		
         while(aenumeration.hasMoreElements()){
         BankChequeRequestForm bcform=(BankChequeRequestForm)aenumeration.nextElement();
          %>
        <tr bgcolor="#78C287"><td><strong><%=bcform.getLoginid() %></strong></td><td><strong><%=bcform.getRequestDate() %></strong></td>
        <td><strong><%=bcform.getAccountno() %></strong></td>
        <td><strong><%=bcform.getChequebookrequest() %></strong></td>
        <td><strong><%=bcform.getPreviousChequeBookStatus() %></strong></td>
        <td><strong><%=bcform.getStatus() %></strong></td>
        <td><%if(bcform.getStatus().equalsIgnoreCase("Accepted")){ %><a href="ViewChequeBookRequest.jsp?requestid=<%=bcform.getRequestid() %>"><strong>View</strong></a><%} %></td></tr>
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

