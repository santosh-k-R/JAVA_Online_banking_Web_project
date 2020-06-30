package com.dts.SBIBanking.dao;

import com.dts.SBIBanking.model.StopPaymentModule;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.DateWrapper;

import java.sql.*;
public class StopPaymentDAO extends AbstractDataAccessObject {

	public boolean register(StopPaymentModule amodel)
	{
		boolean flag=false;
		Connection con=null;
		try{
		int stoppaymentid=getSequenceID("StopPaymentMaster","StopPaymenttypeid");
			con=getConnection();
			PreparedStatement pst=con.prepareStatement("insert into StopPaymentMaster values(?,?,?,?,?,?,?,?,?)");
pst.setInt(1,stoppaymentid);
pst.setString(2,DateWrapper.parseDate(new java.util.Date()));
pst.setString(3,amodel.getLoginid());
pst.setString(4,amodel.getAccountno());
pst.setString(5,amodel.getChequeno());
pst.setString(6,amodel.getAmount());
pst.setString(7,DateWrapper.parseDate(amodel.getChequedate()));
pst.setString(8,amodel.getReasonforstopping());
pst.setString(9,"Pending");
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
