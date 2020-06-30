<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>Design And Implementation of Online Banking Services</title>
		<script type="text/javascript">
function validate()
{
if((document.register.username.value=="")||(document.register.username.value==null))
{
alert('User Name must be Enter');
return false;
}
if((document.register.password.value=="")||(document.register.password.value==null))
{
alert('Password Can not be Empty');
return false;
}
}
</script>
	</head>
	<body bgcolor="004B10" leftmargin="0" topmargin="0" onLoad="goforit()">
		<table width="100%" height="100%" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td align="center" valign="middle">
					<table width="780" border="0" cellspacing="0" cellpadding="0">
						<tr>

							<td height="71" valign="bottom" background="./images/satya.JPG">
								<table width="100%" height="25" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td>
											<div align="right">

												<span id="clock"></span>
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>

					<table width="780" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="images/pqr.png" width="780" height="101"></td>
						</tr>
					</table>
					<table bgcolor="white" width="780" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td>
								<%
									if (request.getParameter("status") != null) {
								%>
								<font color=red><b><%=request.getParameter("status")%>
								</font>
								<%
									}
								%>
							</td>
						</tr>
						<%
							if (request.getParameter("ls") != null) {
						%>
						<font color=red><b><%=request.getParameter("ls")%></b> </font>
						<%
							}
						%>
						<tr>
							<td height="314" align="center">
								<br />

								<font size="4"> Online banking (or Internet banking)
									allows customers to conduct financial transactions on a secure
									website operated by their retail or virtual bank, credit union
									or building society. <font color='red'><br><b>If you(only Customer) entered wrong password three times
									your account will be locked</b></font>

								<div align="right">
									<h3>
										LoginForm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h3>
								</div>
								<form action="loginAction.do" method="post" name="register"
									onsubmit="return validate()">

									<table width="200" border="0" align="right">
										<tr>
											<td>
												<table border="0" align="right">
													<tr>
														<td height="120" align="right"></td>
														<td>
															<table border="0" align="right">
																<tr>
																	<td>
																		<font color="black"><b>UserID</b> </font>
																	</td>
																	<td>
																		<input type="text" name="username" />
																	</td>
																</tr>
																<tr>
																	<td>
																		<font color="black"><b>Password</b>
																	</td>
																	<td>
																		<input type="password" name="password" />
																	</td>
																</tr>
																<tr>
																	<td colspan="2">
																		<div align="center">
																			<input type="submit" name="Submit" value="Sign In" />
																			&nbsp;
																			<input name="Input2" type="reset" value="Clear" />
																		</div>
																	</td>
																</tr>
															</table>
														</td>
														<td>
															&nbsp;
														</td>
													</tr>
													<tr>
														<td>
															&nbsp;
														</td>
														<td valign="baseline">
															<div align="center">
																<a href="RecoverPassword.jsp"><font color="red">Forgot
																		Password ! !...... 
																</a>
															</div>
														</td>
														<td>
															&nbsp;
														</td>
													</tr>


												</table>
											</td>
										</tr>
									</table>
								</form>





								<table width="85%" border="0" align="center" cellpadding="2"
									cellspacing="0">

									<tr>
										<td height="18" valign="top">
											<img src="../images/trans.gif" width="5" height="5">
										</td>
									</tr>
									<tr>
										<td height="18" valign="top">
											&nbsp;
										</td>
									</tr>

								</table>
							</td>
						</tr>
					</table>
	</body>
</html>

