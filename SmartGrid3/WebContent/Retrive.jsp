<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Grid</title>
</head>
<body>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page language="java"%>
<%@ page session="true"%>
<%
  try{
   //PrintWriter out=response.getWriter();

  out.println("Retrieve Image Example!");
  String driverName = "com.mysql.jdbc.Driver";
  String url = "jdbc:mysql://164.68.105.216:3306/";
  String dbName = "jsp";
  String userName = "root";
  String password = "root.123";
  Connection con = null;
  Class.forName(driverName);
  con = DriverManager.getConnection(url+dbName,userName,password);
  Statement st = con.createStatement();

 %>
  <table border='1'>
 <tr>
 <td>Name:</td><td>
 </td>My Name</td>
 </tr>
 <tr>
 <td>Image:</td>
 <td width=10px;>
 <%
 //PreparedStatement pre1 = con.prepareStatement("select * from CompanyMaster where companymid="+100015);
 PreparedStatement pre1 = con.prepareStatement("select * from upload_image where iImageID="+16);
 ResultSet rs1=pre1.executeQuery();
 while(rs1.next())   
 {byte[] bytearray1 = new byte[4096];  
              int size1=0;  
             InputStream sImage1;  
               sImage1 = rs1.getBinaryStream(2);  
               response.reset();  
              response.setContentType("image/jpeg");  
              response.addHeader("Content-Disposition","filename=logo.jpg");  
              while((size1=sImage1.read(bytearray1))!= -1 )  
                {  
                  response.getOutputStream().write(bytearray1,0,size1);  
                }  
              response.flushBuffer(); 
              sImage1.close();  
              rs1.close();  
           }


    out.println("Retrieved Successfully!");
  pre1.close();
  con.close();  
  }
  catch (Exception e){
  out.println(e.getMessage());
  }
%>

</td></tr>
 </table>
</body>
  </html>