
<%@page import="com.dts.SBIBanking.dao.*,com.dts.SBIBanking.model.*"%>
 <%
 String target="viewAccountTypes.do?status=Updation Failed";
 try
 {
 AccountTypeMasterForm form=new AccountTypeMasterForm();
 form.setAccTypeId(Integer.parseInt(request.getParameter("accountTypeId")));
 form.setTypeName(request.getParameter("typeName"));
 form.setAbbr(request.getParameter("abbr"));
 form.setMinOpenBal(Integer.parseInt(request.getParameter("minOpenBal")));
 form.setMaxOpenBal(Integer.parseInt(request.getParameter("maxOpenBal")));
 form.setIntrestApplicable(request.getParameter("intrestApplicable"));
 form.setDescription(request.getParameter("description"));
 form.setMinBalToBeMaintain(Integer.parseInt(request.getParameter("minBalToBeMaintain")));
 form.setCheckbookFacilityBit(request.getParameter("checkbookFacilityBit"));
 form.setBankTypeBit(Integer.parseInt(request.getParameter("bankTypeBit")));
 form.setBalanceTypeBit(Integer.parseInt(request.getParameter("balanceTypeBit")));
 AccountTypeMasterDao dao=new AccountTypeMasterDao();
 boolean flag=dao.UpdateAccountTypeMaster(form);
 if(flag)
 {
 
 target="viewAccountTypes.do?status=Updation Success";
 }
 }
 catch(Exception e)
 {
 e.printStackTrace();
 }
 RequestDispatcher rd=request.getRequestDispatcher(target);
 rd.forward(request,response);
 %>
 