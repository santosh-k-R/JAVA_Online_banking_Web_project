
<%@page import="com.dts.SBIBanking.dao.*,com.dts.SBIBanking.model.*"%> <%
 String target="viewServiceAction.do?status=Deletion Failed";
 try
 {
 String id[]=request.getParameterValues("TypeId");
 for(int i=0;i<id.length;i++)
 {
 int Id=Integer.parseInt(id[i]);
 BankServicesMasterDao dao=new BankServicesMasterDao();
 boolean flag=dao.deleteBankServicesMaster(Id);
 if(flag)
 {
 target="viewServiceAction.do?status=Deletion Success";
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