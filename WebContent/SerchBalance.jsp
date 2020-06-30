
<%@page import="com.dts.SBIBanking.dao.BankAccountDAO"%>
<%@page import="com.dts.dae.model.Profile"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>Internet Banking</title>
		<script language="JavaScript1.2">
/*Number check script-
By JavaScript Kit (www.javascriptkit.com)
Over 200 free scripts here!
*/

function checknumber(){
var x=document.f.accountno.value
var anum=/(^\d+$)|(^\d+\.\d+$)/
if (anum.test(x))
testresult=true
else{
alert("Please input a valid number!")
testresult=false
}
return (testresult)
}

</script>
		<script>
function checkban(){
if(validateFields())
{
if (document.layers||document.all||document.getElementById)
return checknumber()
else
return true;
}
else
return false; 
}
</script>
		<script type="text/javascript" src="scripts/project.js"></script>

		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link href="../includes/style.css" rel="stylesheet" type="text/css">
		<style type="text/css">
<!--
.style3 {
	color: #D4F101;
	font-weight: bold;
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
								<font color=white> <jsp:include page="Adminoptions.jsp" /></font>
							</td>
						</tr>
					</table>

					<table bgcolor="white" width="780" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td height="314" align="center">
								<br>



								<center>
									<h3>
										Customer Details
									</h3>
								</center>

								<form action="SerchBalance.jsp" name="f"
									onsubmit="return checkban()">
									<table>
										<tr>
											<td>
												Account no
											</td>
											<td>
												<input type="text" name="accountno">
											</td>
										</tr>
										<tr>
											<td></td>
											<td>
												<input type="submit" name="send" value="Find" />
											</td>
										</tr>
									</table>
								</form>
								<%
									if (request.getParameter("accountno") != null) {
										try {
											int accountno = Integer.parseInt(request
													.getParameter("accountno"));
											Profile aprofile = new BankAccountDAO()
													.viewAccountNos(accountno);
								%>
								<table>
									<tr bgcolor="#D4F101">
										<td>
											<div align="center">
												<strong>Login Name</strong>
											</div>
										</td>
										<td>
											<div align="center">
												<strong>Account No</strong>
											</div>
										</td>
										<td>
											<div align="center">
												<strong>Opening Date</strong>
											</div>
										</td>


										<td>
											<div align="center">
												<strong>Initial Balance</strong>
											</div>
										</td>
										<td>
											<div align="center">
												<strong>Active Balance</strong>
											</div>
										</td>
									</tr>
									<tr bgcolor="#0C561B">
										<td>
											<div align="center">
												<span class="style3"><%=aprofile.getLoginID()%></span>
											</div>
										</td>
										<td>
											<div align="center">
												<span class="style3"><%=aprofile.getBankaccountno()%></span>
											</div>
										</td>
										<td>
											<div align="center">
												<span class="style3"><%=aprofile.getAccountOpeningDate()%></span>
											</div>
										</td>
										<td>
											<div align="center">
												<span class="style3"><%=aprofile.getAccountInitialBalance()%></span>
											</div>
										</td>
										<td>
											<div align="center">
												<span class="style3"><%=aprofile.getAccountActivebalance()%></span>
											</div>
										</td>
									</tr>
								</table>
								<%
									} catch (Exception e) {

										}
									} else {
								%>

								<%
									}
								%>







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

