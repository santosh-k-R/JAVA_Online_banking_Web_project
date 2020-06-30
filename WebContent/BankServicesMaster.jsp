<%@ page language="java" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>
<script type="text/javascript" src="scripts/project.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../includes/style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="004B10" leftmargin="0" topmargin="0" onLoad="goforit()">
	<table width="100%" height="100%" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td align="center" valign="middle"><table width="780" border="0"
					cellspacing="0" cellpadding="0">
					<tr>

						<td height="71" valign="bottom" background="./images/satya.JPG"><table
								width="100%" height="25" border="0" cellpadding="0"
								cellspacing="0">
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
					<tr>
						<td align=center width=1500><font color=white> <jsp:include
									page="Adminoptions.jsp" />
						</font></td>
					</tr>
				</table>

				<table bgcolor="white" width="780" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<td>
							<%if(request.getParameter("status")!=null){ %> <font color=blue><b><%=request.getParameter("status") %></b></font>
							<%} %>
						</td>
					</tr>
					<tr>
						<td height="314" align="center"><br>



							<center>
								<h3>Service Master Form</h3>
							</center>





							<form action="bankServiceMasterAction.do" method="post"
								onsubmit="return validateFields()">
								<table align="center" bgcolor="#549E63">

									<tr>
										<td><strong>Service Name : </strong></td>
										<td><input type=text name="serviceName" /></td>
									</tr>
									<tr>
										<td><strong>Service Description : </strong></td>
										<td><input type=text name="serviceDesc" /></td>
									</tr>
									<tr>
										<td><strong>Service Active State :</strong></td>
										<td><input type=text name="serviceActivestate" /></td>
									</tr>
									<tr>
										<td></td>
										<td><input type=submit name=Register value="Register" /></td>
									</tr>
								</table>
							</form>




							<table width="85%" border="0" align="center" cellpadding="2"
								cellspacing="0">

								<tr>
									<td height="18" valign="top"><img
										src="../images/trans.gif" width="5" height="5"></td>
								</tr>
								<tr>
									<td height="18" valign="top">&nbsp;</td>
								</tr>

							</table></td>
					</tr>
				</table>
</body>
</html>





