package com.Stackery.utils;


import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class JdbcUtils {

    private static DruidDataSource dataSource;
    //classpath默认在target的classes目录下，坑死老子了，我们用反射来读取配置文件
    static {
        try {
            Properties properties = new Properties();
            //读取jdbc.properties配置文件
            InputStream inputStream = JdbcUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
            //从流中加载数据
            properties.load(inputStream);
            // 创建数据库连接池
            dataSource = (DruidDataSource) DruidDataSourceFactory.createDataSource(properties);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * 获取数据库连接池中的连接
     * @return
     */
    public static Connection getConnection(){
        Connection connection = null;

        try {
            connection = dataSource.getConnection();
        }catch (Exception e){
            e.printStackTrace();
        }

        return connection;
    }

    /**
     * 关闭连接，返回数据库连接池
     * @param conn
     */
    public static void close(Connection conn){
        if (conn!=null){
            try {
                conn.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        System.out.println(JdbcUtils.getConnection());
    }
}
