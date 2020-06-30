
<%@page import="com.dts.SBIBanking.dao.*,com.dts.SBIBanking.model.*"%> <%
 String target="viewAccountTypes.do?status=DeletionFailed";
 try
 {
 String id[]=request.getParameterValues("TypeId");
 for(int i=0;i<id.length;i++)
 {
 int Id=Integer.parseInt(id[i]);
 AccountTypeMasterDao dao=new AccountTypeMasterDao();
 boolean flag=dao.deleteAccountTypeMaster(Id);
 if(flag)
 {
 target="viewAccountTypes.do?status=Deletion Success";
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
 