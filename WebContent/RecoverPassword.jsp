<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>

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
      </table> <%--<jsp:include page="UserOptions.jsp"/>
      --%><table bgcolor="white" width="780" border="0" cellspacing="0" cellpadding="0">
        <tr><td><%if(request.getParameter("status")!=null){ %>
	<font color=red><b><%=request.getParameter("status") %></b></font><%} %></td></tr>
          <tr><td height="314" align="center"><br/>
          <a href="LoginForm.jsp"><b>Home</b></a>
          <font size="4"> Online banking (or Internet banking) allows customers to conduct financial transactions on a secure website operated by their retail or virtual bank, credit union or building society.</font>
          
    <div align="center"><h3>Recover Password Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3></div>
         <form action="RecoverPasswordAction.jsp" method="post" name="recover" onsubmit="return validateQues()" ><fieldset>
					  <div align="center">
                    <%
					  if(request.getParameter("status")!=null)
					  {
					%>
                    <span class="style2"><%=request.getParameter("status")%>					</span>
                    <%
					  }
					%>     
                    </div>
                    <br />
                    <table border="0">
                      <tr>
                        <td><span class="style3">Login Name </span></td>
                        <td><input type="text" name="username" />                        </td>
                      </tr>
                      <tr>
                        <td><span class="style3">Secret Question</span></td>
                        <td><select name="squest">
                            <option value="1">What is your favorite pastime?</option>
                            <option value="2">Who was your childhood hero?</option>
                            <option value="3">What was the name of your first school?</option>
                            <option value="4">Where did you meet your spouse?</option>
                            <option value="5">What is your favorite sports team?</option>
                            <option value="6">What is your father's middle name?</option>
                            <option value="7">What was your high school mascot?</option>
                            <option value="8">What make was your first car or bike?</option>
                            <option value="9">What is your pet's name?</option>
                        </select></td>
                      </tr>
                      <tr>
                        <td colspan="2"><span class="style3">
                        <input type="checkbox" name="ch" value="1" onclick="check(recover)" />
                        Own Question </span></td>
                      </tr>
                      <tr>
                        <td><span class="style3">Own Question </span></td>
                        <td><input type="text" name="ownquest" disabled="disabled" />                        </td>
                      </tr>
                      <tr>
                        <td><span class="style3">Secret Answer </span></td>
                        <td><input name="sanswer" type="text" /></td>
                      </tr>
                      <tr>
                        <td colspan="2"><div align="center">
                            <div align="center">
                          <input name="Input" type="submit" value="Recover" />
                          &nbsp;</div></td>
                      </tr>
                    </table>
  </fieldset>
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

