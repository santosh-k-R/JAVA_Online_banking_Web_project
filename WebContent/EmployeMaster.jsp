
<%@page import="com.dts.SBIBanking.dao.BankBranchMasterDao"%>
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.dts.SBIBanking.model.BankBranchMasterForm"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>
<script type="text/javascript" src="scripts/project.js"></script>
<script type ="text/javascript" src="scripts/ts_picker.js"></script>
<script type ="text/javascript" src="scripts/form_validation.js"></script>

<style type="text/css">
<!--
.style2 {font-weight: bold}
.style3 {font-weight: bold}
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
          <tr><td height="314" align="center"><br/>
          
          
          
    <center><h3></h3></center>
         <div class="boxed">
			<h2 class="title">Employee Registration</h2>
	  		

  <form action="registerAction.do" method="get" name="register" ><fieldset>
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
                      <table border="0" align="center" bgcolor="#509A5F">
                        
                        <tr>
                          <td class="style3 tiny"><strong>Branch Name</strong></td>
                          <td><select name="branchaddress">
                          <%BankBranchMasterDao adao=new BankBranchMasterDao();
                          CoreList acorelist=adao.ViewBankBranchMaster(); 
                          Enumeration aEnumeration=acorelist.elements();
                          while(aEnumeration.hasMoreElements()){
                         
                         BankBranchMasterForm aform=(BankBranchMasterForm)aEnumeration.nextElement();
                           %>
                           <option value="<%=aform.getBranchAddr() %>"><%=aform.getBranchAddr() %></option><%} %></select>                          </td>
                        </tr>
                        <tr>
                          <td class="style3 tiny"><strong>Initial Balance </strong></td>
                          <td><input type="text" name="accountInitialBalance" class="textfield"/>                          </td>
                        </tr>
                        <tr>
                          <td class="style3 tiny"><strong>First Name </strong></td>
                          <td><input type="text" name="firstname" class="textfield"/>                          </td>
                        </tr>
                        <tr>
                          <td><span class="style3"><strong>Last Name </strong></span></td>
                          <td><input type="text" name="lastname" class="textfield"/>                          </td>
                        </tr>
                        <tr>
                          <td><strong>Birth Date </strong></td>
                          <td><input type="text" name="bdate" readonly="readonly" />
                            <a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a> </td>
                        </tr>
                        <tr>
                          <td><strong>House No</strong></td>
                          <td><input type="text" name="hno" class="textfield"/></td>
                        </tr>
                        <tr>
                          <td><strong>Street</strong></td>
                          <td><input type="text" name="street" class="textfield"/></td>
                        </tr>
                        <tr>
                          <td><strong>City</strong></td>
                              <td><select name="city">
                              <option selected=true>--select--</option>
                              <option value="Hyderabad">Hyderabad</option>
                              <option Value="Mumbai">Mumbai</option>
                            </select>                          </td>
                        </tr>
                        <tr>
                          <td><strong>State</strong></td>
<td><select name="state">
                              <option value="Andhra pradesh">Andhra pradesh</option>
                              <option value="Maharashtra">Maharashtra</option>
                            </select>                          </td>
                        </tr>
                        <tr>
                          <td><strong>Country</strong></td>
<td><select name="country">
                              <option value="India">India</option>
                            </select>                          </td>
                        </tr>
                        <tr>
                          <td><strong>Pincode</strong></td>
                          <td><input type="text" name="pincode" class="textfield"/></td>
                        </tr>
                        <tr>
                          <td><strong>Contact No</strong></td>
                          <td><input type="text" name="phoneNo" class="textfield"/></td>
                        </tr>
                        <tr>
                          <td><strong>Email</strong></td>
                          <td><input type="text" name="email" class="textfield"/></td>
                        </tr>
                        <input type="hidden" name="loginType" value="Employee"/>
                        <tr>
                          <td><strong>Login Name</strong></td>
                          <td><input type="text" name="loginID" />                          </td>
                        </tr>
                        <tr>
                          <td><strong>Password</strong></td>
                          <td><input name="password" type="password" id="password" />                          </td>
                        </tr>
                        <tr>
                          <td><strong> Secret Question </strong></td>
<td><select name="secretqid">
                              <option value="1">What is your favorite pastime?</option>
                              <option value="2">Who your childhood hero?</option>
                              <option value="3">What is the name of your first school?</option>
                              <option value="4">Where did you meet your spouse?</option>
                              <option value="5">What is your favorite sports team?</option>
                              <option value="6">What is your father's middle name?</option>
                              <option value="7">What was your high school mascot?</option>
                              <option value="8">What make was your first car or bike?</option>
                              <option value="9">What is your pet's name?</option>
                          </select></td>
                        </tr>
                          <tr>
                          <td><strong>Secret Answer</strong></td>
                          <td><input name="secretqans" type="text" /></td>
                        </tr>
                        <tr>
                          <td height="11" colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                          <td colspan="2"><div align="center"><strong>
                          <input name="Input" type="submit" value="Register" />
                          </strong></div></td>
                        </tr>
            </table>
                   
					</fieldset>
				</form>
<script type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("Register");

frmvalidator.addValidation("accountInitialBalance", "req", "Please enter your Balance");
frmvalidator.addValidation("accountInitialBalance", "numeric");

frmvalidator.addValidation("firstname", "req", "Please enter your First Name");
frmvalidator.addValidation("firstname", "maxlen=20","Max length for FirstName is 20");
frmvalidator.addValidation("firstname", "alpha"," First Name Alphabetic chars only");

frmvalidator.addValidation("lastname", "req", "Please enter your Last Name");
frmvalidator.addValidation("lastname", "maxlen=20", "Max length is 20");
frmvalidator.addValidation("lastname", "alpha"," Last Name Alphabetic chars only");

frmvalidator.addValidation("bdate", "req", "Please enter your birthdate");

frmvalidator.addValidation("hno", "req", "Please enter your House Number");
frmvalidator.addValidation("street", "req", "Please enter your Street");

frmvalidator.addValidation("pincode", "req", "Please enter your pin Number");
frmvalidator.addValidation("pincode", "numeric","pincode must be numeric  only");
frmvalidator.addValidation("pincode", "maxlen=6");

frmvalidator.addValidation("city", "dontselect=0");
frmvalidator.addValidation("state", "dontselect=0");
frmvalidator.addValidation("country", "dontselect=0");


frmvalidator.addValidation("phoneNo", "req");

frmvalidator.addValidation("phoneNo", "maxlen=10");
frmvalidator.addValidation("phoneNo", "numeric");
frmvalidator.addValidation("phoneNo", "Phone");

frmvalidator.addValidation("email", "maxlen=50");
frmvalidator.addValidation("email", "req");
frmvalidator.addValidation("email", "email");



frmvalidator.addValidation("loginID", "req", "Please enter your Login name");

frmvalidator.addValidation("password", "req", "Please enter your Password");


frmvalidator.addValidation("secretqans", "req", "Please enter your Answer");

frmvalidator.addValidation("secretqid", "dontselect=0");

                    </script>
                    
                    
                    
                    
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

