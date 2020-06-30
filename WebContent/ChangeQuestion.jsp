<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style3 {color: #000000}
.style5 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
 <script type="text/javascript" src="scripts/general.js"> </script>
   <script type="text/javascript" src="scripts/ts_picker.js"> </script>
<script language="javascript">
function validate()
{
   var temp = document.register;
   if(temp.username.value=="" || temp.password.value=="" || temp.sanswer.value=="")
   {
       alert("All Fields are manditory");
       return false;
   }
   if(temp.ch.checked && temp.ownquest.value=="")
   {
       alert("All Fields are manditory");
       return false;
   }
   return true;
}
function check()
{
    var form = document.register;
    if(!form.ch.checked){
          form.ownquest.disabled=true;
          form.squest.disabled=false;
    }
    else{
          form.ownquest.disabled=false;
          form.squest.disabled=true;
    }
}
</script>
</head>
<body>
<div id="logo">
	<h1></h1>
	
</div>
<div id="menu">
	<ul>
	<%
	    if(((String)session.getAttribute("role")).equals("admin"))
	    {
	 %>
	  <jsp:include page="Adminoptions.jsp"/>
	   <%}
	    if(((String)session.getAttribute("role")).equals("dealer"))
	    {
	 %>
	  
	   <%}
	    if(((String)session.getAttribute("role")).equals("customer"))
	    {
	 %>
	   <jsp:include page="customeroptions.jsp"/>
	   <%}
	    %> 
	</ul>
</div>
<div id="wrapper">
  <div id="col-two1">
	  <div class="boxed">
		<h2 class="title">Welcome to CSM</h2>
      
			<h3 align="right">
	    <a align="right"><script language="JavaScript" type="text/javascript">
      </script></a></h3>
<div class="content">
  <table width="643" border="0">
<tr>
                    <td width="648">
	  <fieldset>
					<legend><span class="style3">Change Secret Question</span></legend>
                    <div align="center"><br /> 
                      <% if(request.getParameter("status")!=null)
					  {%>
                          <span class="style5"><%=request.getParameter("status")%></span>
                          <%}%>
                    </div>
                   <form action="ChangequestionAction.jsp" method="post" name="register" onSubmit="return validate()">
                      <table width="380" border="0" align="center">
                        <tr>
                          <td><span class="style3"><strong>Login Name </strong></span></td>
                          <td><input type="text" name="username" value="<%=(String)session.getAttribute("user")%>"/>                          </td>
                        </tr>
                        <tr>
                          <td ><span class="style3"><strong>Password </strong></span></td>
                          <td><input type="password" name="password" />                          </td>
                        </tr>
                        <tr>
                          <td ><span class="style3"><strong>Secret Question</strong></span></td>
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
                        <tr >
                          <td colspan="2"><span class="style3"><strong>
                          <input type="checkbox" name="ch" value="1" onclick="check()" />
                          Own Question </strong></span></td>
                        </tr>
                        <tr>
                          <td><span class="style3"><strong>Own Question </strong></span></td>
                          <td><input type="text" name="ownquest" disabled="disabled" />                          </td>
                        </tr>
                        <tr>
                          <td height="38" class="style23"><span class="style3"><strong>Secret Answer </strong></span></td>
                          <td><input name="sanswer" type="text" /></td>
                        </tr>
                        <tr>
                          <td colspan="2"><div align="center">
                              <input name="Input" type="submit" value="Change" />
                            </div>
                              <div align="center"></div></td>
                        </tr>
                      </table>
                      <div align="center"></div>
              </form>
					</fieldset>
				
			
		      </td>
          </tr>
        </table>
</div>
	  </div>
		
	</div>
</div>
<div id="footer">
	
</div>
</body>
</html>
