
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.dts.dae.model.Profile"%>
<%@page import="com.dts.SBIBanking.dao.BranchEmmployeeDAO"%>
<%@page import="com.dts.dae.dao.ProfileDAO"%>
<%@page import="com.dts.core.util.DateWrapper"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>
<script language="JavaScript" type="text/javascript" src="scripts/ts_picker.js"></script>
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
        </tr><tr><td align=center width=1500><font color=white>
        <jsp:include page="Adminoptions.jsp"/>
        </font></td></tr>
      </table> 
  
      <table bgcolor="white" width="780" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="314" align="center"><br>
          
          
          
    <center><h3>Admin Update Profile</h3></center>
         <%
    String loginname=(String)session.getAttribute("user");
    Profile aprofile=new ProfileDAO().getProfile(loginname);
    String branchname=new BranchEmmployeeDAO().getBranchname(aprofile.getLoginID());;
     %>
     <form action="adminUpdateProfile.do" name="register">
     <table>
     <tr>
                          <td><span class="style3">Login Name</span></td>
                          <td><input type="text" name="loginID" value="<%=aprofile.getLoginID() %>" />                          </td>
                        </tr>
      <tr>
                          <td class="tiny style3">First Name </td>
                          <td><input type="text" name="firstname" class="textfield" value="<%=aprofile.getFirstname() %>"/>                          </td>
                        </tr>
    
    <tr>
                          <td><span class="style3">Last Name </span></td>
                          <td><input type="text" name="lastname" class="textfield" value="<%=aprofile.getLastName() %>"/>                          </td>
                        </tr>
    
    
      <tr>
                          <td><span class="style3">Birth Date </span></td>
                          <td><input type="text" name="bdate" readonly="readonly" value="<%=DateWrapper.parseDate(aprofile.getBirthDate1())%>" />
                            <a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a> </td>
                        </tr> 
                        
                        <tr>
                          <td><span class="style3">City</span></td>
<td><select name="city">
<option value="<%=aprofile.getCity() %>"><%=aprofile.getCity() %></option>
                              <option>Hyderabad</option>
                              <option>Mumbai</option>
                            </select>                          </td>
                        </tr>
                        <tr>
                          <td><span class="style3">State</span></td>
<td><select name="state"><option value="<%=aprofile.getState() %>"><%=aprofile.getState() %></option>
                              <option>Andhra pradesh</option>
                              <option>Maharashtra</option>
                            </select>                          </td>
                        </tr>
                        <tr>
                          <td><span class="style3">Country</span></td>
<td><select name="country"><option value="<%=aprofile.getCountry() %>"><%=aprofile.getCountry() %></option>
                              <option>India</option>
                            </select>                          </td>
                        </tr>
         
         
                    
                    <tr><td></td><td><input type="submit" name="Send" value="update"/></td></tr>
                    </table>
                    
                    
                    
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

