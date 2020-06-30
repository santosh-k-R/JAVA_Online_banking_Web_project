


	 
	package com.dts.SBIBanking.dao;


	 
	 
	import java.sql.*; 

import com.dts.SBIBanking.dao.*;
import com.dts.SBIBanking.model.*;
	import com.dts.core.dao.AbstractDataAccessObject;
	import com.dts.core.util.CoreList;
	
	import com.dts.core.util.LoggerManager;

	public class BankServicesMasterDao extends AbstractDataAccessObject 
	{
		public boolean insertBankServicesMaster(BankServicesMasterForm bsform)
		{
			java.sql.Connection con=null;
			boolean flag=false;
			try
			{
			int n=getSequenceID("BANKSERVICESMASTER","ServiceId");
			con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into BankServicesMaster values(?,?,?,?)");
			ps.setInt(1,n);
			ps.setString(2,bsform.getServiceName());
			ps.setString(3,bsform.getServiceActivestate());
			ps.setString(4,bsform.getServiceDesc());
			
			 
			int i=ps.executeUpdate();
			if(i>0)
				flag=true;
			 
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}finally
		{
			try{
				con.close();
			}
		catch(Exception e)
		{
			LoggerManager.writeLogInfo(e);
		}
		}
		return flag;
		
		
			}

	public CoreList ViewBankServicesMaster()
	{   CoreList v=new CoreList();
		java.sql.Connection con=null;
		BankServicesMasterForm bsform=null;
		try
		{
			con=getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from BankServicesMaster");
			 
			while(rs.next())
			{
				bsform=new BankServicesMasterForm();
				 
				bsform.setServiceId(rs.getInt(1));
				bsform.setServiceName(rs.getString(2));
				bsform.setServiceActivestate(rs.getString(3));
				bsform.setServiceDesc(rs.getString(4));
				
				
				
				v.add(bsform);
			}

			 
		}
			catch(Exception e)
		{
			e.printStackTrace();
		}
			finally
			{
				try{
					con.close();
				}
			catch(Exception e)
			{
				LoggerManager.writeLogInfo(e);
			}
			}
			return v;
			
		
	}
	public BankServicesMasterForm ViewBankServicesMasterById(int ServiceId)
	{   BankServicesMasterForm bsform=new BankServicesMasterForm();
		java.sql.Connection con=null;
		 
		try
		{
			 
			con=getConnection();
			 
			PreparedStatement ps=con.prepareStatement("select * from BankServicesMaster where ServiceId = ? ");
			ps.setInt(1,ServiceId);
			ResultSet rs=ps.executeQuery();
			 
			if(rs.next())
			{
				bsform=new BankServicesMasterForm();
				 
				bsform.setServiceId(rs.getInt(1));
				bsform.setServiceName(rs.getString(2));
				bsform.setServiceActivestate(rs.getString(3));
				bsform.setServiceDesc(rs.getString(4));
				 
				 
			}

			 
		}
			catch(Exception e)
		{
			
		}finally
		{
			try{
				con.close();
			}
		catch(Exception e)
		{
			LoggerManager.writeLogInfo(e);
		}
		}
		return bsform;
		
		
	}

	public boolean deleteBankServicesMaster(int ServiceId)
		{
			java.sql.Connection con=null;
			boolean flag=false;
			try
			{
				 
				con=getConnection();
				 
				PreparedStatement ps=con.prepareStatement("delete from BankServicesMaster where ServiceId = ? ");
				ps.setInt(1,ServiceId);
				int i=ps.executeUpdate();
				if(i>0)
					flag=true;
				
				          
			}
			catch(Exception e)
			{
			}
			finally
			{
				try{
					con.close();
				}
			catch(Exception e)
			{
				LoggerManager.writeLogInfo(e);
			}
			}
			return flag;
			
			}

	public boolean UpdateBankServicesMaster(BankServicesMasterForm bsform)
	{
		java.sql.Connection con=null;
		boolean flag=false;
		try
		{
		 
		con=getConnection();
		PreparedStatement ps=con.prepareStatement("update BankServicesMaster set SERVICENAME = ?,SERVICEACTIVESTATe = ?, ServiceDesc = ? where ServiceId = ? ");
		ps.setInt(4,bsform.getServiceId());
		ps.setString(1,bsform.getServiceName());
		ps.setString(2,bsform.getServiceActivestate());
		ps.setString(3,bsform.getServiceDesc());
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
		 
	}
	catch(Exception e)
	{
		e.printStackTrace();
		
	}finally
	{
		try{
			con.close();
		}
	catch(Exception e)
	{
		LoggerManager.writeLogInfo(e);
	}
	}
	return flag;


		}
	}






	 


	 





	 


	  

 


