<%@page import="com.dts.SBIBanking.dao.*,com.dts.SBIBanking.model.*"%> <%
 String target="viewBranchAction.do?status=Deletion Failed";
 try
 {
 String id[]=request.getParameterValues("TypeId");
 for(int i=0;i<id.length;i++)
 {
 int Id=Integer.parseInt(id[i]);
 BankBranchMasterDao dao=new BankBranchMasterDao();
 boolean flag=dao.deleteBankBranchMaster(Id);
 if(flag)
 {
 target="viewBranchAction.do?status=Deletion Success";
 }
 }
 }
 catch(Exception e)
 {
 e.printStackTrace();
 }
 RequestDispatcher rd=request.getRequestDispatcher(target);
 rd.forward(request,response);
 %>