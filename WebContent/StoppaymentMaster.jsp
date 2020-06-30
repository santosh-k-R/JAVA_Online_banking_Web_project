<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>Internet Banking</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link href="../includes/style.css" rel="stylesheet" type="text/css">
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
						<tr>
							<td align=center width=1500>
								<font color=white><jsp:include page="customeroptions.jsp" /></font>
							</td>
						</tr>
					</table>

					<table bgcolor="white" width="780" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td height="314" align="center">
								<br>










								<table width="85%" border="0" align="center" cellpadding="2"
									cellspacing="0" bgcolor="#89D398">
									<center>
										<h3>
											Stop Payment Master
										</h3>
									</center>
									<form action="./StopPaymentAction.do">
									<tr>
										<td>
											<div align="center">
												<em><strong>Cheque Date :</strong> </em>
											</div>
										</td>
										<td>
											<input type="text" name="chequedate" />
										</td>
									</tr>
									<tr>
										<td>
											<div align="center">
												<em><strong>Amount :</strong> </em>
											</div>
										</td>
										<td>
											<input type="text" name="amount" />
										</td>
									</tr>
									<input type="hidden" name="accountno"
										value="<%=(String) session.getAttribute("accountno")%>" />
									<html:errors property="accountno" />
									<br />

									<tr>
										<td>
											<div align="center">
												<em><strong>reasonforstopping :</strong> </em>
											</div>
										</td>
										<td>
											<input type="text" name="reasonforstopping" />
											<html:errors property="reasonforstopping" />
										</td>
									</tr>
									<br />
									<input type="hidden" name="loginid"
										value="<%=(String) session.getAttribute("user")%>" />

									<input type="hidden" name="chequeno" />
									<html:errors property="chequeno" />
									<br />
									<tr>
										<td>
											<div align="center"></div>
										</td>
										<td>
											<input type="submit" name="Send" value="Stop" />
										</td>
									</tr>



									<tr>
										<td height="18" valign="top">
											<div align="center">
												<img src="../images/trans.gif" width="5" height="5"
													class="style2">
											</div>
										</td>
									</tr>
									<tr>
										<td height="18" valign="top">
											<div align="center"></div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
	</body>
</html>

