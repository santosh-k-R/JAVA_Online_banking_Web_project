<%@page import="com.dts.SBIBanking.dao.*,com.dts.SBIBanking.model.*"%>
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../includes/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
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
      </table> 
      <jsp:include page="Adminoptions.jsp"/>
      <table bgcolor="white" width="780" border="0" cellspacing="0" cellpadding="0">
        <tr><td><%if(request.getParameter("status")!=null){ %>
	<font color=red><b><%=request.getParameter("status") %></b></font><%} %></td></tr>
          <tr><td height="314" align="center"><br>
          
          
          
     <center><h3>View Account Types</h3></center><form action="DeleteAccountTypeMaster.jsp">
 <table align=center>
 <tr bgcolor="#D4F101">
   <td>&nbsp;</td>
   <th>Type Name</th>                       
<th>Abbreviation </th>                    
<th>Minimum Opening Balance</th>                 
<th>Maximum Opening Balance</th>                 
<th>Intrest Calculation</th>           
<th>Description </th>                    
<th>Minimum Balance</th>
<th>Cheque Book</th>           
 <%
 
 CoreList cl=(CoreList)request.getAttribute("corelist");
 Enumeration en=cl.elements();
 while(en.hasMoreElements())
 {
 AccountTypeMasterForm form=(AccountTypeMasterForm)en.nextElement();
 %>
 <tr bgcolor="#0C561B">
 <td><input name="TypeId" type=checkbox class="style1" value="<%=form.getAccTypeId()%>"></td>
 <td><span class="style1"><a href="UpdateAccountTypeMaster.jsp?Id=<%=form.getAccTypeId()%>"><%=form.getTypeName() %></span></td>
 <td><span class="style1"><%=form.getAbbr()%></span></td>
 <td><span class="style1"><%=form.getMinOpenBal()%></span></td>
 <td><span class="style1"><%=form.getMaxOpenBal()%></span></td>
 <td><span class="style1"><%=form.getIntrestApplicable()%></span></td>
 <td><span class="style1"><%=form.getDescription()%></span></td>
 <td><span class="style1"><%=form.getMinBalToBeMaintain()%></span></td>
 <td><span class="style1"><%=form.getCheckbookFacilityBit()%></span></td>
 <%}%>
 </table>
 <center><input type=submit name=Delete value=Delete></center>
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

