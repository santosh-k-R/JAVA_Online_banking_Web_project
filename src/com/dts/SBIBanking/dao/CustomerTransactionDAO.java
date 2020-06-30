package com.dts.SBIBanking.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.dts.SBIBanking.model.CustomerTransactionModel;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreList;
import com.dts.core.util.DateWrapper;

public class CustomerTransactionDAO extends AbstractDataAccessObject {

	public boolean register(CustomerTransactionModel amodel)
	{
	
		boolean flag=false;
		Connection con=null;
		
		try{
			int transcationid=getSequenceID("CustomerTransactionMaster","Transactionid");
			con=getConnection();
			PreparedStatement pst=con.prepareStatement("insert into CustomerTransactionMaster values(?,?,?,?,?,?,?)");
		pst.setInt(1,transcationid);
		pst.setString(2,amodel.getEmployeename());
		pst.setString(3,DateWrapper.parseDate(new java.util.Date()));
		pst.setString(4,amodel.getTransactiontype());
		pst.setInt(5,amodel.getAmount());
		pst.setString(6,amodel.getAccountno());
		pst.setString(7,amodel.getBranchname());
		int n=pst.executeUpdate();
		if(n>0)
		{
			flag=true;
		}
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return flag;
	}
	public CoreList viewTransaction(String fromdate,String todate)
	{
		CoreList acorelist=new CoreList();
		Connection con=null;
		CustomerTransactionModel amodel=null; 
	try{
		String pattern = "";	
		if(getProperties().getProperty("dbname").equals("access"))
		{ 
			 pattern ="#";
		} 	 
		con=getConnection();
	Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from CustomerTransactionMaster where TransactionDate>='"+pattern+fromdate.trim()+pattern+"' and TransactionDate<='"+pattern+todate.trim()+pattern+"'");
		while(rs.next())
		{
			amodel=new CustomerTransactionModel();
			amodel.setTransactionid(rs.getInt(1));                                 
			amodel.setEmployeename(rs.getString(2));
			amodel.setTransactionDate(DateWrapper.parseDate(rs.getDate(3)));
			amodel.setTransactiontype(rs.getString(4));
			amodel.setAmount(rs.getInt(5));
			amodel.setAccountno(rs.getString(6));
			amodel.setBranchname(rs.getString(7));
			acorelist.add(amodel);
		}
	}catch (Exception e) {
		e.printStackTrace();
		// TODO: handle exception
	}
	return acorelist;
	}
}
