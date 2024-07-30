package com.web.app.dao;
import java.sql.*;
import com.web.app.entities.User;


public class UserDao {
    private final Connection con;

    // insert user data
    public UserDao(Connection con) {
        this.con = con;
    }
    
    // method to insert user
    public boolean saveUser(User user)  {
       boolean f= false;
        try {
            String q="insert into user_data(user_name,email,password,gender,profile) values(?,?,?,?,?)";
            PreparedStatement pstmt=con.prepareStatement(q);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getProfile());
            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    } 
    
    // get user by email and password;
    
    public User getUser(String email, String password) {
        User user=null;
        
        try {
            
            String q = "select * from user_data where email =? and password =?";
            PreparedStatement pstmt=con.prepareStatement(q);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
        
            ResultSet set= pstmt.executeQuery();
        
             if (set.next()) {
                 user=new User();
                 
                user.setEmail(set.getString("email"));
                user.setId(set.getInt("id"));
                user.setName(set.getString("user_name"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setProfile(set.getString("profile"));
            
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }
    
    public boolean updateUser(User user) {
        boolean f= false;
        try{
            String query="update user_data set user_name=?, email=?, password=?, gender=? where id=?;";
            
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setInt(5, user.getId());
            
            pstmt.executeUpdate();
            f=true;
            
        }catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
}
