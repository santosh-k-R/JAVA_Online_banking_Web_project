package com.dts.SBIBanking.dao;

import com.dts.SBIBanking.model.BankChequeRequestForm;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreList;
import com.dts.core.util.DateWrapper;

import java.sql.*;
import java.io.*;
public class ChequeBookRequest extends AbstractDataAccessObject {

	public boolean register(BankChequeRequestForm aform)
	{
		boolean flag=false;
		Connection con=null;
		try{
			int requestid=getSequenceID("ChequeBookRequestMaster","Requestid");
			con=getConnection();
			PreparedStatement pst=con.prepareStatement("insert into chequebookrequestmaster values(?,?,?,?,?,?,?)");
			pst.setInt(1,requestid);
			pst.setString(2,DateWrapper.parseDate(new java.util.Date()));
			pst.setString(3,aform.getLoginid());
			pst.setString(4,aform.getAccountno());
			pst.setString(5,aform.getChequebookrequest());
			pst.setString(6,aform.getPreviousChequeBookStatus());
			pst.setString(7,"pending");
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
	public CoreList viewChequebookrequests(String user)
	{
		CoreList acorelist=new CoreList();
		BankChequeRequestForm aform=null;
		Connection con=null;
		try{
			
			con=getConnection();
			PreparedStatement pst=con.prepareStatement("select * from ChequeBookRequestMaster where loginid='"+user+"'");
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				aform=new BankChequeRequestForm();
				aform.setRequestid(rs.getInt(1));
				aform.setRequestDate(DateWrapper.parseDate(rs.getDate(2)));
				aform.setLoginid(rs.getString(3));
				aform.setAccountno(rs.getString(4));
				aform.setChequebookrequest(rs.getString(5));
				aform.setPreviousChequeBookStatus(rs.getString(6));
				aform.setStatus(rs.getString(7));
				acorelist.add(aform);
			}		
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return acorelist;
	}
	
	//all

	public CoreList viewChequebookrequests()
	{
		CoreList acorelist=new CoreList();
		BankChequeRequestForm aform=null;
		Connection con=null;
		try{
			
			con=getConnection();
			PreparedStatement pst=con.prepareStatement("select * from ChequeBookRequestMaster");
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				aform=new BankChequeRequestForm();
				aform.setRequestid(rs.getInt(1));
				aform.setRequestDate(DateWrapper.parseDate(rs.getDate(2)));
				aform.setLoginid(rs.getString(3));
				aform.setAccountno(rs.getString(4));
				aform.setChequebookrequest(rs.getString(5));
				aform.setPreviousChequeBookStatus(rs.getString(6));
				aform.setStatus(rs.getString(7));
				acorelist.add(aform);
			}		
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return acorelist;
	}
	public boolean updateChequeStatus(int requestid)
	{
		boolean flag=false;
		Connection con=null;
		try{
			con=getConnection();
			PreparedStatement pst=con.prepareStatement("update ChequeBookRequestMaster set Status='Accepted' where requestid=?");
pst.setInt(1,requestid);
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

}
