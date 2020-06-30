<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>Design And Implementation of Online Banking Services</title>
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
		<script type="text/javascript" src="scripts/project.js">
</script>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link href="../includes/style.css" rel="stylesheet" type="text/css">
		<style type="text/css">
<!--
.style22 {
	color: #000000;
	font-weight: bold;
}

.style23 {
	color: #000000
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
					<jsp:include page="Adminoptions.jsp" />
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
								<br>



								<center>
									<h3>
										Branch Register Form
									</h3>
								</center>

								<%
									if (request.getParameter("status") != null) {
								%>
								<%=request.getParameter("status")%>
								<%
									}
								%>

								<form action="bankBranchAction.do" NAME="register"
									onsubmit="return validateFields()">
									<table align=center bgcolor="#91DBA0">
										<tr>
											<td>
												<span class="style22">Branch Address :</span>
											</td>
											<td>
												<textarea name="branchAddr"></textarea>
											</td>
										</tr>
										<tr>
											<td>
												<span class="style22">Branch EmailId :</span>
											</td>
											<td>
												<input type=text name="branchEmailId" />
											</td>
										</tr>
										<tr>
											<td>
												<span class="style22">Branch Phone1 : </span>
											</td>
											<td>
												<input type=text name="branchPhNo1" />
											</td>
										</tr>
										<tr>
											<td>
												<span class="style22">Branch Phone2 : </span>
											</td>
											<td>
												<input type=text name="branchPhNo2" />
											</td>
										</tr>
										<tr>
											<td>
												<span class="style22">Branch Phone3 : </span>
											</td>
											<td>
												<input type=text name="branchPhNo3" />
											</td>
										</tr>



										<tr>
											<td></td>
											<td>
												<input type=submit name=Register value="Register" />
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

