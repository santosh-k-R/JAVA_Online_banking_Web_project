package com.dts.SBIBanking.dao;

import com.dts.SBIBanking.model.FundsTransferModel;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreList;
import com.dts.core.util.DateWrapper;

import java.sql.*;

public class FundsTransferDAO extends AbstractDataAccessObject {

	public boolean register(FundsTransferModel amodel)
	{
		boolean flag=false;
		Connection con=null;
		try{
			int fundstransid=getSequenceID("FundsTransfer","FundsTransferid");
			con=getConnection();
			
			PreparedStatement pst=con.prepareStatement("insert into fundsTransfer values(?,?,?,?,?,?)");
			pst.setInt(1,fundstransid);
			pst.setString(2,DateWrapper.parseDate(new java.util.Date()));
			pst.setString(3,amodel.getFromAccountno());
			pst.setString(4,amodel.getToAccountno());
			pst.setInt(5,amodel.getAmount());
			pst.setString(6,amodel.getLoginid());
			int n=pst.executeUpdate();
			if(n>0)
			{
				flag=true;
				
			}
		}catch(Exception e) {
			e.printStackTrace();  
			// TODO: handle exception
		}
		return flag;
	}
	public CoreList viewFundsTransfer(String fromdate,String todate)
	{
		FundsTransferModel amodel=null;
		CoreList acorelist=new CoreList();
		Connection con=null;
		try{String pattern = "";	
		if(getProperties().getProperty("dbname").equals("access"))
		{ 
			 pattern ="#";
		} 	 
			con=getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from FundsTransfer where FundsTransferdate>='"+pattern+fromdate.trim()+pattern+"' and FundsTransferdate<='"+pattern+todate.trim()+pattern+"' order by FundsTransferdate");
		while(rs.next())
		{
			amodel=new FundsTransferModel();
			amodel.setFundstransferid(rs.getInt(1));
			amodel.setFundsTransferdate(DateWrapper.parseDate(rs.getDate(2)));
			amodel.setFromAccountno(rs.getString(3));
			amodel.setToAccountno(rs.getString(4));
			amodel.setAmount(rs.getInt(5));
			amodel.setLoginid(rs.getString(6));
		acorelist.add(amodel);
		}
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return acorelist;
	}
}
