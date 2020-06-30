package com.dts.SBIBanking.dao;

import com.dts.SBIBanking.model.ChequeIssueMaster;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreList;
import com.dts.core.util.DateWrapper;

import java.sql.*;
public class ChequeIssueDAO extends AbstractDataAccessObject {

	public boolean register(ChequeIssueMaster aform)
	{
		boolean flag=false;
		Connection con=null;
		try{
		int issueid=getSequenceID("CHEQUEISUEMASTER","CHEQUEISSUEID");
			con=getConnection();
			PreparedStatement pst=con.prepareStatement("insert into CHEQUEISUEMASTER values(?,?,?,?,?,?,?,?)");
pst.setInt(1,issueid);
pst.setInt(2,aform.getRequestid());
pst.setString(3,DateWrapper.parseDate(new java.util.Date()));
pst.setString(4,aform.getFromnumber());
pst.setString(5,aform.getToNumber());
pst.setString(6,aform.getAccountno());
pst.setString(7,aform.getLoginname());
pst.setInt(8,Integer.parseInt(aform.getToNumber())-Integer.parseInt(aform.getFromnumber()));
		int n=pst.executeUpdate();
		if(n>0){
			boolean flag1=new ChequeBookRequest().updateChequeStatus(aform.getRequestid());
			System.out.println("flag"+flag1);
			flag=true;
		}
		
	}catch (Exception e) {
		e.printStackTrace();
		// TODO: handle exception
	}
	return flag;
}
	
	public ChequeIssueMaster viewChequeIssues(int requestid)
	{
		CoreList acorelist=new CoreList();
		ChequeIssueMaster amaster=null;
		Connection con=null;
		try{
			con=getConnection();
			PreparedStatement pst=con.prepareStatement("select noofcheques,Fromnumber,ToNumber from CHEQUEISUEMASTER where requestid=?");
			pst.setInt(1,requestid);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				amaster=new ChequeIssueMaster();
				amaster.setNoofcheques(rs.getInt(1));
				amaster.setFromnumber(rs.getString(2));
				amaster.setToNumber(rs.getString(3));
				
			}
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return amaster;
	}
}
