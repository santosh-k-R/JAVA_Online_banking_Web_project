package com.dts.SBIBanking.dao;

import java.sql.*;

import com.dts.SBIBanking.model.CustomerTransactionModel;
import com.dts.SBIBanking.model.FundsTransferModel;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreList;
import java.util.Vector;
import com.dts.core.util.DateWrapper;
import com.dts.dae.model.Profile;

public class BankAccountDAO extends AbstractDataAccessObject {

	public boolean register(Profile aprofile) {
		boolean flag = false;
		Connection con = null;
		try {
			con = getConnection();
			int n = getSequenceID("bankaccounts", "accountno");
			// n=1000+n;
			PreparedStatement pst = con
					.prepareStatement("insert into bankaccounts values(?,?,?,?,?,?)");
			pst.setString(1, aprofile.getLoginID());
			pst.setInt(2, n);
			pst.setInt(3, aprofile.getAccountInitialBalance());
			pst.setInt(4, aprofile.getAccountInitialBalance());
			pst.setString(5, DateWrapper.parseDate(new java.util.Date()));
			pst.setString(6, aprofile.getBranchaddress());
			int n1 = pst.executeUpdate();
			if (n1 > 0) {
				flag = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return flag;

	}

	public Profile viewAccountNos(int accountno) {
		// CoreList acorelist=new CoreList();
		Connection con = null;
		Profile aprofile = null;
		try {
			con = getConnection();
			PreparedStatement pst = con
					.prepareStatement("select *	from bankaccounts where accountno=?");
			pst.setInt(1, accountno);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				aprofile = new Profile();
				aprofile.setLoginID(rs.getString(1));
				aprofile.setBankaccountno(rs.getInt(2));
				aprofile.setAccountInitialBalance(rs.getInt(3));
				aprofile.setAccountActivebalance(rs.getInt(4));
				aprofile.setAccountOpeningDate(DateWrapper.parseDate(rs
						.getDate(5)));
				aprofile.setBranchaddress(rs.getString(6));
			}

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return aprofile;
	}

	public Vector<Profile> viewLockedAccounts() {
		// CoreList acorelist=new CoreList();
		Connection con = null;
		Profile aprofile = null;
		Vector<Profile> vp = new Vector<Profile>();
		try {
			con = getConnection();
			PreparedStatement pst = con
					.prepareStatement("select loginname,regdate,loginstatus,(select accountno from bankaccounts where loginid=logindetails.loginname ) from logindetails where loginstatus='lock'");
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				aprofile = new Profile();
				aprofile.setLoginID(rs.getString(1));
				aprofile.setRegDate(DateWrapper.parseDate(rs.getDate(2)));
				aprofile.setLockstatus(rs.getString(3));
				aprofile.setAccno(rs.getInt(4));
				System.out.println(rs.getString(3));
				vp.add(aprofile);
			}

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return vp;
	}

	public Profile viewAccountNos(String loginid) {
		// CoreList acorelist=new CoreList();
		Connection con = null;
		Profile aprofile = null;
		try {
			con = getConnection();
			PreparedStatement pst = con
					.prepareStatement("select * from bankaccounts where loginid=?");
			pst.setString(1, loginid);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				aprofile = new Profile();
				aprofile.setLoginID(rs.getString(1));
				aprofile.setBankaccountno(rs.getInt(2));
				aprofile.setAccountInitialBalance(rs.getInt(3));
				aprofile.setAccountActivebalance(rs.getInt(4));
				aprofile.setAccountOpeningDate(DateWrapper.parseDate(rs
						.getDate(5)));
				aprofile.setBranchaddress(rs.getString(6));
			}

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return aprofile;
	}

	public boolean update(CustomerTransactionModel amodel) {
		boolean flag = false;
		Connection con = null;
		try {
			PreparedStatement pst = null;
			con = getConnection();
			String logintype = amodel.getTransactiontype();
			String sql = "";
			int amt = amodel.getAmount();
			String accno = amodel.getAccountno();
			System.out.println(amodel.getAmount() + " beans "
					+ amodel.getAccountno());
			if (logintype.equals("D")) {
				System.out.println("this is Deposit");
				sql = "Update bankaccounts set AccountActivebalance=AccountActivebalance+? where AccountNo=?";
				pst = con.prepareStatement(sql);
				pst.setInt(1, amt);
				pst.setString(2, accno);

			} else {
				System.out.println("this is WithDraw");
				sql = "Update bankaccounts set AccountActivebalance=AccountActivebalance-? where AccountNo=? and AccountActivebalance>=?";
				pst = con.prepareStatement(sql);
				pst.setInt(1, amt);
				pst.setString(2, accno);
				pst.setInt(3, amt);
			}
			int n = pst.executeUpdate();
			System.out.println("in dao" + n);
			if (n > 0) {
				boolean flag1 = new CustomerTransactionDAO().register(amodel);
				if (flag1) {
					flag = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return flag;
	}

	public boolean updateFundsTransfer(FundsTransferModel amodel) {
		boolean flag = false;
		Connection con = null;
		try {
			con = getConnection();
			// String logintype=amodel.getTransactiontype();
			Statement pst = con.createStatement();
			ResultSet rs = pst
					.executeQuery("select AccountActivebalance from bankaccounts where AccountNo="
							+ amodel.getFromAccountno());
			double getbal = 0;
			while (rs.next()) {
				getbal = rs.getDouble(1);
			}

			if (getbal >= amodel.getAmount()) {
				pst
						.addBatch("update bankaccounts set AccountActivebalance=AccountActivebalance-"
								+ amodel.getAmount()
								+ " where AccountNo="
								+ amodel.getFromAccountno());
				pst
						.addBatch("update bankaccounts set AccountActivebalance=AccountActivebalance+"
								+ amodel.getAmount()
								+ " where AccountNo="
								+ amodel.getToAccountno());

				int n[] = pst.executeBatch();
				System.out.println("this lisn" + n.length);
				if (n.length > 0) {
					boolean flag1 = new FundsTransferDAO().register(amodel);
					if (flag1) {
						flag = true;
					}
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return flag;
	}

	public String getAccountno(String loginname) {
		Connection con = null;
		String accountno = "";
		try {
			con = getConnection();
			PreparedStatement pst = con
					.prepareStatement("select accountno from bankaccounts where loginid=?");
			pst.setString(1, loginname);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				accountno = rs.getString(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return accountno;
	}

}
