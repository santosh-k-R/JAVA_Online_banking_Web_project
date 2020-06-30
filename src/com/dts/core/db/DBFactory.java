package com.dts.core.db;

import java.sql.Connection;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.model.AbstractDataObject;

/**
 *
 * @author
 */
public class DBFactory {
	private Connection con;
    public DBFactory() 
    {
    	con=new AbstractDataAccessObject().getConnection();
    }
    public Connection getConnection(){
    	return con;
    }
}
