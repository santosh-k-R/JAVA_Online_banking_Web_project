
<%@page import="com.dts.SBIBanking.dao.*,com.dts.SBIBanking.model.*"%>
<%
 String target="Success.jsp?status=Updation Failed";
 try
 {
 BankBranchMasterForm form=new BankBranchMasterForm();
 form.setBranchId(Integer.parseInt(request.getParameter("branchId")));
 form.setBranchAddr(request.getParameter("branchAddr"));
 form.setBranchEmailId(request.getParameter("branchEmailId"));
 //form.setBranchInchrgId(Integer.parseInt(request.getParameter("branchInchrgId")));
 form.setBranchPhNo1(request.getParameter("branchPhNo1"));
 form.setBranchPhNo2(request.getParameter("branchPhNo2"));
 form.setBranchPhNo3(request.getParameter("branchPhNo3"));
 BankBranchMasterDao dao=new BankBranchMasterDao();
 boolean flag=dao.UpdateBankBranchMaster(form);
  if(flag)
 {
 target="Success.jsp?status=Updation Success";
 }
 }
 catch(Exception e)
 {
 e.printStackTrace();
 }
 RequestDispatcher rd=request.getRequestDispatcher(target);
 rd.forward(request,response);
 %>
 
 