package com.dts.SBIBanking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dts.SBIBanking.dao.*;
import com.dts.SBIBanking.model.*;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreList;
public class BranchServiceDAO extends AbstractDataAccessObject {

	public boolean register(BranchServcesMaster aform)
	{
		boolean flag=false;
		Connection con=null;
		
		try
		{
			con=getConnection();
			PreparedStatement pst=con.prepareStatement("insert into branchservicemaster values(?,?)");
			pst.setInt(1,aform.getBranchId());
			pst.setInt(2,aform.getServiceid());
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
	public CoreList viewBranchServices(int branchid)
	{
		CoreList acorelist=new CoreList();
		Connection con=null;
		try{
			BankServicesMasterForm aform=null;
			
			con=getConnection();
			PreparedStatement pst=con.prepareStatement("select bm.branchaddress,bs.servicename,bs.servicedesc from BANKSERVICESMASTER bs,BANKBRANCHMASTER bm,BRANCHSERVICEMASTER ba where ba.branchid=bm.branchid and ba.serviceid=bs.serviceid and ba.branchid=?");
			pst.setInt(1,branchid);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				aform=new BankServicesMasterForm();
				aform.setBranchdesc(rs.getString(1));
				aform.setServiceName(rs.getString(2));
				aform.setServiceDesc(rs.getString(3));
				acorelist.add(aform);
			}
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return acorelist;
			}
	public boolean registerAccountTypes(BranchServcesMaster aform)
	{
		
		boolean flag=false;
	Connection con=null;
	try{
		con=getConnection();
		PreparedStatement pst=con.prepareStatement("insert into bankaccounttypes values(?,?)");
		pst.setInt(1,aform.getBranchId());
		pst.setInt(2,aform.getAccounttypeid());
		int n=pst.executeUpdate();
		if(n>0)
		{
			flag=true;
		}
	}catch (Exception e) {
		// TODO: handle exception
	}
	return flag;
	}
}
