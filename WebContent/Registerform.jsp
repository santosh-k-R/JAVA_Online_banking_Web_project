<%@page import="com.dts.SBIBanking.dao.BankBranchMasterDao"%>
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.dts.SBIBanking.model.BankBranchMasterForm"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>Internet Banking</title>
		<script language="JavaScript" src="scripts/gen_validatorv31.js"
			type="text/javascript">
</script>
		<script language="JavaScript" type="text/javascript"
			src="scripts/ts_picker.js">
</script>
		<script language="JavaScript1.1" src="scripts/pass.js">

</script>
		<script type="text/javascript" src="scripts/image.js">
</script>
		<script type="text/javascript" src="scripts/general.js">
</script>
		<script type="text/javascript" src="scripts/adi.js">
</script>
		<script type="text/javascript" src="scripts/form_validation.js">
</script>
		<script type="text/javascript">
//var x_win = window.self; 
function check() {
	var form = document.register;

	if (!form.ch.checked) {
		form.ownquest.disabled = true;
		form.squest.disabled = false;
	} else {

		form.ownquest.disabled = false;
		form.squest.disabled = true;
	}

}</script>

		<script type="text/javascript" src="scripts/ts_picker.js">
</script>
		<style type="text/css">
<!--
.style2 {
	font-weight: bold
}
-->
</style>
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
					<jsp:include page="EmployeeOptions.jsp" />
					<table bgcolor="white" width="780" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td>
								<%
									if (request.getParameter("status") != null) {
								%>
								<font color=red><b><%=request.getParameter("status")%></b>
								</font>
								<%
									}
								%>
							</td>
						</tr>
						<tr>
							<td height="314" align="center">
								<br />



								<center>
									<h3></h3>
								</center>
								<div class="boxed">
									<h2 class="title">
										Customer Registration
									</h2>


									<form action="customerregisterAction.do" method="get"
										name="register" onSubmit="return validate()">
										<fieldset>
											<div align="center">
												<%
													if (request.getParameter("status") != null) {
												%>
												<span class="style2"><%=request.getParameter("status")%>
												</span>
												<%
													}
												%>
											</div>
											<br />
											<table border="0" align="center" bgcolor="#8DD79C">
												<tr>
													<td class="tiny">
														<strong><em><strong>Branch Name</strong> </em> </strong>
													</td>
													<td>
														<select name="branchaddress">
															<%
																BankBranchMasterDao adao = new BankBranchMasterDao();
																CoreList acorelist = adao.ViewBankBranchMaster();
																Enumeration aEnumeration = acorelist.elements();
																while (aEnumeration.hasMoreElements()) {

																	BankBranchMasterForm aform = (BankBranchMasterForm) aEnumeration
																			.nextElement();
															%>
															<option value="<%=aform.getBranchAddr()%>"><%=aform.getBranchAddr()%></option>
															<%
																}
															%>
														</select>
													</td>
												</tr>
												<tr>
													<td class="tiny">
														<strong><em><strong>Initial Balance
															</strong> </em> </strong>
													</td>
													<td>
														<input type="text" name="accountInitialBalance"
															class="textfield" />
													</td>
												</tr>
												<tr>
													<td class="tiny">
														<strong><em><strong>First Name </strong> </em> </strong>
													</td>
													<td>
														<input type="text" name="firstname" class="textfield" />
													</td>
												</tr>
												<tr>
													<td>
														<em><strong><strong>Last Name </strong> </strong> </em>
													</td>
													<td>
														<input type="text" name="lastname" class="textfield" />
													</td>
												</tr>
												<tr>
													<td>
														<em><strong>Birth Date </strong> </em>
													</td>
													<td>
														<input type="text" name="bdate" readonly="readonly" />
														<a
															href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);">
															<img src="images/cal.gif" alt="a" width="18" height="18"
																border="0" /> </a>
													</td>
												</tr>
												<tr>
													<td>
														<em><strong>House No</strong> </em>
													</td>
													<td>
														<input type="text" name="hno" class="textfield" />
													</td>
												</tr>
												<tr>
													<td>
														<em><strong>Street</strong> </em>
													</td>
													<td>
														<input type="text" name="street" class="textfield" />
													</td>
												</tr>
												<tr>
													<td>
														<em><strong>City</strong> </em>
													</td>
													<td>
														<select name="city">
															<option>
																Hyderabad
															</option>
															<option>
																Mumbai
															</option>
														</select>
													</td>
												</tr>
												<tr>
													<td>
														<em><strong>State</strong> </em>
													</td>
													<td>
														<select name="state">
															<option>
																Andhra pradesh
															</option>
															<option>
																Maharashtra
															</option>
														</select>
													</td>
												</tr>
												<tr>
													<td>
														<em><strong>Country</strong> </em>
													</td>
													<td>
														<select name="country">
															<option>
																India
															</option>
														</select>
													</td>
												</tr>
												<tr>
													<td>
														<em><strong>Pincode</strong> </em>
													</td>
													<td>
														<input type="text" name="pincode" class="textfield" />
													</td>
												</tr>
												<tr>
													<td>
														<em><strong>Contact No</strong> </em>
													</td>
													<td>
														<input type="text" name="phoneNo" class="textfield"
															onBlur="ValidateForm();abc()" />
													</td>
												</tr>
												<tr>
													<td>
														<em><strong>Email</strong> </em>
													</td>
													<td>
														<input type="text" name="email" class="textfield" value=""
															onBlur="isValidEmail(this.value)" />
													</td>
												</tr>
												<input type="hidden" name="loginType" value="customer" />
												<tr>
													<td>
														<em><strong>Login Name</strong> </em>
													</td>
													<td>
														<input type="text" name="loginID" />
													</td>
												</tr>
												<tr>
													<td>
														<em><strong>Password</strong> </em>
													</td>
													<td>
														<input name="password" type="password" id="password" />
													</td>
												</tr>
												<tr>
													<td>
														<em><strong> Secret Question </strong> </em>
													</td>
													<td>
														<select name="secretqid">
															<option value="1">
																What is your favorite pastime?
															</option>
															<option value="2">
																Who your childhood hero?
															</option>
															<option value="3">
																What is the name of your first school?
															</option>
															<option value="4">
																Where did you meet your spouse?
															</option>
															<option value="5">
																What is your favorite sports team?
															</option>
															<option value="6">
																What is your father's middle name?
															</option>
															<option value="7">
																What was your high school mascot?
															</option>
															<option value="8">
																What make was your first car or bike?
															</option>
															<option value="9">
																What is your pet's name?
															</option>
														</select>
													</td>
												</tr>
												<tr>
													<td>
														<em><strong>Secret Answer</strong> </em>
													</td>
													<td>
														<input name="secretqans" type="text" />
													</td>
												</tr>
												<tr>
													<td height="11" colspan="2"></td>
												</tr>
												<tr>
													<td colspan="2">
														<div align="center">
															<em><strong> <input name="Input"
																		type="submit" value="Register" /> </strong> </em>
														</div>
													</td>
												</tr>
											</table>

										</fieldset>
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

