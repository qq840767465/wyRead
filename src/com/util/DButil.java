package com.util;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class DButil {

	// ʵ�������ӳ�
	public static Vector<Connection> connectionPool = new Vector<Connection>();

	// ��ʼ�����ӳ�
	static {

		for (int i = 0; i < 10; i++) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection connection = DriverManager.getConnection(
						"jdbc:mysql://127.0.0.1:3306/jsp_test", "root", "331796768");
				connectionPool.add(connection);
			} catch (Exception e) {

				e.printStackTrace();
			}
		}
	}

	// ȡ����
	public static Connection getConnection() {
		Connection connection = connectionPool.get(0);
		connectionPool.remove(0);
		return connection;

	}

	// �ͷ�����
	public static void releaseConnection(Connection connection) {
		connectionPool.add(connection);
	}
	
	
	// ��ɾ��
	public static int zsg(String sql, Object... p) {
		Connection connection = getConnection();

		int n = 0;
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			if (p != null) {
				for (int i = 0; i < p.length; i++) {
					ps.setObject(i + 1, p[i]);
				}
			}
			n = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			releaseConnection(connection);
		}
		return n;
	}

	
	

	// ��ѯ
	public static List query(Class c, String sql, Object... p) {

		List list = new ArrayList();

		Connection connection = getConnection();

		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			for (int i = 0; i < p.length; i++) {
				ps.setObject(i + 1, p[i]);
			}

			ResultSet rs = ps.executeQuery();

			ResultSetMetaData rsmd = rs.getMetaData();
			int count = rsmd.getColumnCount();

			while (rs.next()) {
				Object object = c.newInstance();

				for (int i = 1; i <= count; i++) {
					String fieldname = rsmd.getColumnLabel(i);
					Field field = c.getDeclaredField(fieldname);
					field.setAccessible(true);
					field.set(object, rs.getObject(i));

				}
				list.add(object);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			releaseConnection(connection);

		}
		return list;

	}
	
	
	// �ۺϲ�ѯ
		public static int uniqueQuery(String sql, Object... p) {
			Connection connection = getConnection();
			int n = 0;
			try {
				PreparedStatement ps = connection.prepareStatement(sql);
				for (int i = 0; i < p.length; i++) {
					ps.setObject(i + 1, p[i]);
				}
				ResultSet rs = ps.executeQuery();
				rs.next();
				n = rs.getInt(1);
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				releaseConnection(connection);
			}
			return n;

		}


	
	
	
	
	
	
}
