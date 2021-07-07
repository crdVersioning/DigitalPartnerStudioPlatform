package com.dps.dpsplatform;

import com.dps.dbi.impl.SqlServerInterface;
import java.sql.SQLException;

public class Dao
{
    public static final SqlServerInterface PLATFORM_DBI = new SqlServerInterface()
        .address("172.31.0.173")
            
        .username("admin")
        .password("GXXu2D1B7RpY3szZL7gA")
        .name("DpsPlatform");
    
    public static void main(String[] args) throws SQLException
    {
        System.out.println(PLATFORM_DBI.execAndCheck("select 0;"));
    }
}
