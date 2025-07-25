package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Student;
import com.util.StudentUtil;

public class StudentDao {

	public static void insertStudent(Student s)
	{
		try {
			Connection con=StudentUtil.createConnection();
			String sql="insert into student(fname,lname,email,mobile,address,gender,education) values(?,?,?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, s.getFname());
			pst.setString(2, s.getLname());
			pst.setString(3, s.getEmail());
			pst.setString(4, s.getMobile());
			pst.setString(5, s.getAddress());
			pst.setString(6, s.getGender());
			pst.setString(7, s.getEducation());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void updateStudent(Student s)
	{
		try {
			Connection con=StudentUtil.createConnection();
			String sql="update student set fname=?,lname=?,email=?,mobile=?,address=?,gender=?,education=? where sid=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, s.getFname());
			pst.setString(2, s.getLname());
			pst.setString(3, s.getEmail());
			pst.setString(4, s.getMobile());
			pst.setString(5, s.getAddress());
			pst.setString(6, s.getGender());
			pst.setString(7, s.getEducation());
			pst.setInt(8, s.getSid());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void deleteStudent(int sid)
	{
		try {
			Connection con=StudentUtil.createConnection();
			String sql="delete from student where sid=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setInt(1, sid);
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static List<Student> getAllStudent()
	{
		List<Student> list=new ArrayList<Student>();
		try {
			Connection con=StudentUtil.createConnection();
			String sql="select * from student";
			PreparedStatement pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Student s=new Student();
				s.setSid(rs.getInt("sid"));
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setEmail(rs.getString("email"));
				s.setMobile(rs.getString("mobile"));
				s.setAddress(rs.getString("address"));
				s.setGender(rs.getString("gender"));
				s.setEducation(rs.getString("education"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static Student getAllStudent(int sid)
	{
		Student s=null;
		try {
			Connection con=StudentUtil.createConnection();
			String sql="select * from student where sid=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setInt(1, sid);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				s=new Student();
				s.setSid(rs.getInt("sid"));
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setEmail(rs.getString("email"));
				s.setMobile(rs.getString("mobile"));
				s.setAddress(rs.getString("address"));
				s.setGender(rs.getString("gender"));
				s.setEducation(rs.getString("education"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}
}
