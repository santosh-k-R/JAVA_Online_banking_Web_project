
	package com.dts.SBIBanking.dao;


	 
	 
	import java.sql.*; 

import com.dts.SBIBanking.model.*;
	import com.dts.core.dao.AbstractDataAccessObject;
	import com.dts.core.util.CoreList;
	
	import com.dts.core.util.LoggerManager;

	public class AccountTypeMasterDao extends AbstractDataAccessObject 
	{
		public boolean insertAccountTypeMaster(AccountTypeMasterForm atform)
		{
			java.sql.Connection con=null;
			boolean flag=false;
			try
			{
			int n=getSequenceID("AccountTypeMaster","AccountTypeId");
			con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into AccountTypeMaster values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1,n);
			ps.setString(2,atform.getTypeName());
			ps.setString(3,atform.getAbbr());
			ps.setInt(4,atform.getMinOpenBal());
			ps.setInt(5,atform.getMaxOpenBal());
			ps.setString(6,atform.getIntrestApplicable());
			ps.setString(7,atform.getDescription());
			ps.setInt(8,atform.getMinBalToBeMaintain());
			ps.setString(9,atform.getCheckbookFacilityBit());	
			ps.setInt(10,atform.getBankTypeBit());	
			ps.setInt(11,atform.getBalanceTypeBit());	
			 
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

	public CoreList ViewAccountTypeMaster()
	{   CoreList v=new CoreList();
		java.sql.Connection con=null;
		AccountTypeMasterForm atform=null;
		try
		{
			con=getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from AccountTypeMaster");
			 
			while(rs.next())
			{
				atform=new AccountTypeMasterForm();
				 
				atform.setAccTypeId(rs.getInt(1));
				atform.setTypeName(rs.getString(2));
				atform.setAbbr(rs.getString(3));
				atform.setMinOpenBal(rs.getInt(4));
				atform.setMaxOpenBal(rs.getInt(5));
				atform.setIntrestApplicable(rs.getString(6));
				atform.setDescription(rs.getString(7));
				atform.setMinBalToBeMaintain(rs.getInt(8));
				atform.setCheckbookFacilityBit(rs.getString(9));
				atform.setBankTypeBit(rs.getInt(10));
				atform.setBalanceTypeBit(rs.getInt(11));
				
				v.add(atform);
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
	public AccountTypeMasterForm ViewAccountTypeMasterById(int AccountTypeId)
	{   AccountTypeMasterForm atform=new AccountTypeMasterForm();
		java.sql.Connection con=null;
		 
		try
		{
			 
			con=getConnection();
			 
			PreparedStatement ps=con.prepareStatement("select * from AccountTypeMaster where AccountTypeId = ? ");
			ps.setInt(1,AccountTypeId);
			ResultSet rs=ps.executeQuery();
			 
			if(rs.next())
			{
				atform=new AccountTypeMasterForm();
				 
				atform.setAccTypeId(rs.getInt(1));
				atform.setTypeName(rs.getString(2));
				atform.setAbbr(rs.getString(3));
				atform.setMinOpenBal(rs.getInt(4));
				atform.setMaxOpenBal(rs.getInt(5));
				atform.setIntrestApplicable(rs.getString(6));
				atform.setDescription(rs.getString(7));
				atform.setMinBalToBeMaintain(rs.getInt(8));
				atform.setCheckbookFacilityBit(rs.getString(9));
				atform.setBankTypeBit(rs.getInt(10));
				atform.setBalanceTypeBit(rs.getInt(11));
				 
				 
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
		return atform;
		
		
	}

	public boolean deleteAccountTypeMaster(int AccountTypeId)
		{
			java.sql.Connection con=null;
			boolean flag=false;
			try
			{
				 
				con=getConnection();
				 
				PreparedStatement ps=con.prepareStatement("delete from AccountTypeMaster where AccountTypeId = ? ");
				ps.setInt(1,AccountTypeId);
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

	public boolean UpdateAccountTypeMaster(AccountTypeMasterForm atform)
	{
		java.sql.Connection con=null;
		boolean flag=false;
		try
		{
		 
		con=getConnection();
		PreparedStatement ps=con.prepareStatement("update AccountTypeMaster set TYPENAME = ?,ABBREVATION = ?, MINOPENBALANCE = ?,MAXOPENBALANCE = ?,INTRESTAPPLICABLEBIT = ?,DESCRIPTION = ?,MINBALANCETOBEMAINTAINED = ?,CHECKBOOKFACILITYBIT = ? ,BANKTYPEBIT = ?,BALACNCETYPEBIT = ? where AccountTypeId = ? ");
		ps.setInt(11,atform.getAccTypeId());
		ps.setString(1,atform.getTypeName());
		ps.setString(2,atform.getAbbr());
		ps.setInt(3,atform.getMinOpenBal());
		ps.setInt(4,atform.getMaxOpenBal());
		ps.setString(5,atform.getIntrestApplicable());
		ps.setString(6,atform.getDescription());
		ps.setInt(7,atform.getMinBalToBeMaintain());
		ps.setString(8,atform.getCheckbookFacilityBit());	
		ps.setInt(9,atform.getBankTypeBit());	
		ps.setInt(10,atform.getBalanceTypeBit());	
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
	public CoreList ViewAccountTypesMaster()
	{   CoreList v=new CoreList();
		java.sql.Connection con=null;
		AccountTypeMasterForm atform=null;
		try
		{
			con=getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select ACCOUNTTYPEId,TYPENAME from AccountTypeMaster");
			 
			while(rs.next())
			{
				atform=new AccountTypeMasterForm();
				 
				atform.setAccTypeId(rs.getInt(1));
				atform.setTypeName(rs.getString(2));
				
				v.add(atform);
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
	
	public CoreList ViewAccountTypeMaster(int accounttypeid)
	{   CoreList v=new CoreList();
		java.sql.Connection con=null;
		AccountTypeMasterForm atform=null;
		try
		{
			con=getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from AccountTypeMaster am,bankaccounttypes ba where ba.accountypeid=am.ACCOUNTtYPEID and ba.branchid="+accounttypeid);
			
			 
			while(rs.next())
			{
				atform=new AccountTypeMasterForm();
				 
				atform.setAccTypeId(rs.getInt(1));
				atform.setTypeName(rs.getString(2));
				atform.setAbbr(rs.getString(3));
				atform.setMinOpenBal(rs.getInt(4));
				atform.setMaxOpenBal(rs.getInt(5));
				atform.setIntrestApplicable(rs.getString(6));
				atform.setDescription(rs.getString(7));
				atform.setMinBalToBeMaintain(rs.getInt(8));
				atform.setCheckbookFacilityBit(rs.getString(9));
				atform.setBankTypeBit(rs.getInt(10));
				atform.setBalanceTypeBit(rs.getInt(11));
				
				v.add(atform);
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


	}






	 


	 





	 


	  

