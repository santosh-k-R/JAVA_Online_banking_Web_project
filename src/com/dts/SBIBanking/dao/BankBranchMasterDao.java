package com.dts.SBIBanking.dao;

import java.sql.*;

import com.dts.SBIBanking.model.*;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreList;

import com.dts.core.util.LoggerManager;
import com.dts.dae.model.Profile;

public class BankBranchMasterDao extends AbstractDataAccessObject {
	public boolean insertBankBranchMaster(BankBranchMasterForm bbform) {
		java.sql.Connection con = null;
		boolean flag = false;
		try {
			int n = getSequenceID("BankBranchMaster", "BranchId");
			con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into BankBranchMaster values(?,?,?,?,?,?)");
			ps.setInt(1, n);
			ps.setString(2, bbform.getBranchAddr());
			ps.setString(3, bbform.getBranchPhNo1());
			ps.setString(4, bbform.getBranchPhNo2());
			ps.setString(5, bbform.getBranchPhNo3());
			ps.setString(6, bbform.getBranchEmailId());
			// ps.setInt(7,bbform.getBranchInchrgId());

			int i = ps.executeUpdate();
			if (i > 0)
				flag = true;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e) {
				LoggerManager.writeLogInfo(e);
			}
		}
		return flag;

	}

	public boolean accountUnlock(Profile bbform) {
		java.sql.Connection con = null;
		boolean flag = false;
		try {
			//String status = bbform.getStatus();
			//System.out.println(status);
			String loginid = bbform.getLoginname();
			System.out.println(loginid);
			con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("update logindetails set loginstatus='unlock' where loginname=?");
			ps.setString(1, loginid);
			int i = ps.executeUpdate();
			if (i > 0)
				flag = true;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e) {
				LoggerManager.writeLogInfo(e);
			}
		}
		return flag;

	}

	public CoreList ViewBankBranchMaster() {
		CoreList v = new CoreList();
		java.sql.Connection con = null;
		BankBranchMasterForm bbform = null;
		try {
			con = getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from BankBranchMaster");

			while (rs.next()) {
				bbform = new BankBranchMasterForm();

				bbform.setBranchId(rs.getInt(1));
				bbform.setBranchAddr(rs.getString(2));
				bbform.setBranchPhNo1(rs.getString(3));
				bbform.setBranchPhNo2(rs.getString(4));
				bbform.setBranchPhNo3(rs.getString(5));
				bbform.setBranchEmailId(rs.getString(6));
				// bbform.setBranchInchrgId(rs.getInt(7));

				v.add(bbform);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e) {
				LoggerManager.writeLogInfo(e);
			}
		}
		return v;

	}

	public CoreList ViewBankBranchIDS() {
		CoreList v = new CoreList();
		java.sql.Connection con = null;
		BankBranchMasterForm bbform = null;
		try {
			con = getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st
					.executeQuery("select branchid,BRANCHADDRESS from BankBranchMaster");

			while (rs.next()) {
				bbform = new BankBranchMasterForm();

				bbform.setBranchId(rs.getInt(1));
				bbform.setBranchAddr(rs.getString(2));

				v.add(bbform);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e) {
				LoggerManager.writeLogInfo(e);
			}
		}
		return v;

	}

	public BankBranchMasterForm ViewBankBranchMasterById(int BranchId) {
		BankBranchMasterForm bbform = new BankBranchMasterForm();
		java.sql.Connection con = null;

		try {

			con = getConnection();

			PreparedStatement ps = con
					.prepareStatement("select * from BankBranchMaster where BranchId = ? ");
			ps.setInt(1, BranchId);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				bbform = new BankBranchMasterForm();

				bbform.setBranchId(rs.getInt(1));
				bbform.setBranchAddr(rs.getString(2));
				bbform.setBranchPhNo1(rs.getString(3));
				bbform.setBranchPhNo2(rs.getString(4));
				bbform.setBranchPhNo3(rs.getString(5));
				bbform.setBranchEmailId(rs.getString(6));
				bbform.setBranchInchrgId(rs.getInt(7));

			}

		} catch (Exception e) {

		} finally {
			try {
				con.close();
			} catch (Exception e) {
				LoggerManager.writeLogInfo(e);
			}
		}
		return bbform;

	}

	public boolean deleteBankBranchMaster(int BranchId) {
		java.sql.Connection con = null;
		boolean flag = false;
		try {

			con = getConnection();

			PreparedStatement ps = con
					.prepareStatement("delete from BankBranchMaster where BranchId = ? ");
			ps.setInt(1, BranchId);
			int i = ps.executeUpdate();
			if (i > 0)
				flag = true;

		} catch (Exception e) {
		} finally {
			try {
				con.close();
			} catch (Exception e) {
				LoggerManager.writeLogInfo(e);
			}
		}
		return flag;

	}

	public boolean UpdateBankBranchMaster(BankBranchMasterForm bbform) {
		java.sql.Connection con = null;
		boolean flag = false;
		try {

			con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("update BankBranchMaster set BranchAddress = ?,BranchPhoneno1 = ?, BranchPhoneno2 = ?,BranchPhoneno3 = ?,Email = ? where BranchId = ? ");
			ps.setInt(6, bbform.getBranchId());
			ps.setString(1, bbform.getBranchAddr());
			ps.setString(2, bbform.getBranchPhNo1());
			ps.setString(3, bbform.getBranchPhNo2());
			ps.setString(4, bbform.getBranchPhNo3());
			ps.setString(5, bbform.getBranchEmailId());
			// ps.setInt(6,bbform.getBranchInchrgId());
			int i = ps.executeUpdate();
			if (i > 0)
				flag = true;

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				con.close();
			} catch (Exception e) {
				LoggerManager.writeLogInfo(e);
			}
		}
		return flag;

	}
}
