package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.User;
import com.db.DbUtil;

public class UserDao {
	private Connection connection;

	public UserDao() {
		connection = DbUtil.getConnection();
	}
	
	public void insertUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into users(id, passwd, name, age, gender, email) values (?, ?, ?, ?, ?, ?)");
			
			preparedStatement.setString(1, user.getId());
			preparedStatement.setString(2, user.getPasswd());
			preparedStatement.setString(3, user.getName());
			preparedStatement.setInt(4, user.getAge());
			preparedStatement.setString(5, user.getGender());
			preparedStatement.setString(6, user.getEmail());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int userCheck(User user) {
		int check = -1;
		ResultSet rs = null;
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("SELECT passwd FROM users WHERE id=?");
			
			preparedStatement.setString(1, user.getId());
			rs = preparedStatement.executeQuery();
			
			if(rs.next()) {
				if(user.getPasswd().equals(rs.getString("passwd"))) {
					check = 1;
				}else {
					check = 0;
				}
			}else {
				check = -1;
			}
			

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return check;
	}
	
	public List<User> getUsers() {
		List<User> users = new ArrayList<User>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from users");
			
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getString("id"));
				user.setPasswd(rs.getString("passwd"));
				user.setName(rs.getNString("name"));
				user.setAge(rs.getInt("age"));
				user.setGender(rs.getString("gender"));
				user.setEmail(rs.getString("email"));
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}
	
	public User getUserById(String id) {
		User user = new User();
		try {
			PreparedStatement preparedStatement = connection.
					prepareStatement("select * from users where id=?");
			preparedStatement.setString(1, id);
			ResultSet rs = preparedStatement.executeQuery();
			
			if (rs.next()) {
				user.setId(rs.getString("id"));
				user.setPasswd(rs.getString("passwd"));
				user.setName(rs.getNString("name"));
				user.setAge(rs.getInt("age"));
				user.setGender(rs.getString("gender"));
				user.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}
	
	public int updateUser(User user) {
		int check =0;
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("SELECT passwd FROM users WHERE id=?");
			preparedStatement.setString(1, user.getId());
			ResultSet rs = preparedStatement.executeQuery();
			
			if(rs.next()) {
				if(user.getPasswd().equals(rs.getString("passwd"))) {
					preparedStatement.close();
					preparedStatement = null;
					
					preparedStatement = connection
							.prepareStatement("UPDATE users SET name=?,age=?,gender=?,email=? WHERE id=?");
					preparedStatement.setString(1, user.getName());
					preparedStatement.setInt(2, user.getAge());
					preparedStatement.setString(3, user.getGender());
					preparedStatement.setString(4, user.getEmail());
					preparedStatement.setString(5, user.getId());
					
					preparedStatement.executeUpdate();
					
					check =1;
				}else {
					check =0;
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return check;
	}
	
	public int deleteUser(User user) {
		int check =0;
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("SELECT passwd FROM users WHERE id=?");
			preparedStatement.setString(1, user.getId());
			ResultSet rs = preparedStatement.executeQuery();
			
			if(rs.next()) {
				if(user.getPasswd().equals(rs.getString("passwd"))) {
					preparedStatement.close();
					preparedStatement = null;
					
					preparedStatement = connection
							.prepareStatement("DELETE FROM users WHERE id=?");
					preparedStatement.setString(1, user.getId());
					
					preparedStatement.executeUpdate();
					
					check =1;
				}else {
					check =0;
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return check;
	}
	
	public void AdminDelUser(String userId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from users where id=?");
			preparedStatement.setString(1, userId);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void AdminUpdateUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update users set passwd=?, name=?, age=?, gender=?, email=?" +
							"where id=?");

			preparedStatement.setString(1, user.getPasswd());
			preparedStatement.setString(2, user.getName());
			preparedStatement.setInt(3, user.getAge());
			preparedStatement.setString(4, user.getGender());
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.setString(6, user.getId());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
