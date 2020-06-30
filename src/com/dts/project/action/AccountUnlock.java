package com.dts.project.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dts.dae.model.Profile;

public class AccountUnlock extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try{
			Profile rb = (Profile) form;
			com.dts.SBIBanking.dao.BankBranchMasterDao adao=new com.dts.SBIBanking.dao.BankBranchMasterDao();
		boolean flag=adao.accountUnlock(rb);
		if(flag){
			return mapping.findForward("AccountUnLockSuccess");
		}
	}catch (Exception e) {
		// TODO: handle exception
	}return mapping.findForward("AccountUnLockFail");
}
}