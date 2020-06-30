
<%@page import="com.dts.SBIBanking.dao.*,com.dts.SBIBanking.model.*"%> 
<%String target="viewServiceAction.do?status=Updation Failed";
 try
 {
 BankServicesMasterForm form=new BankServicesMasterForm();
 form.setServiceId(Integer.parseInt(request.getParameter("serviceId")));
 form.setServiceDesc(request.getParameter("serviceDesc"));
 form.setServiceName(request.getParameter("serviceName"));
 form.setServiceActivestate(request.getParameter("serviceActivestate"));
 BankServicesMasterDao dao=new BankServicesMasterDao();
 boolean flag=dao.UpdateBankServicesMaster(form);
 if(flag)
 {
 target="viewServiceAction.do?status=Updation Success";
 }
 }
 catch(Exception e)
 {
 e.printStackTrace();
 }
 RequestDispatcher rd=request.getRequestDispatcher(target);
 rd.forward(request,response);
 %>