
<%@page import="java.io.*" import="java.sql.*" %>
<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@ include file="Conn.jsp"%>


<%-- <jsp:useBean id="smart" class="com.smartgrid.beans.Smart" scope="page"> --%>

<% 
Connection conn=null;
Statement st=null;
%>
<% 
try
{
Class.forName("org.gjt.mm.mysql.Driver"); 
//conn=DriverManager.getConnection("jdbc:mysql://164.68.105.216/db_leaveapplication","erp","1@erp");
conn=DriverManager.getConnection(MM_dbConn_STRING,MM_dbConn_USERNAME, MM_dbConn_PASSWORD);
//conn=DriverManager.getConnection("jdbc:mysql://164.68.105.216/db_leaveapplication","fleetview","1@flv");

ResultSet rst=null;
String sql="";
st=conn.createStatement();
String city = request.getParameter("city");
System.out.println("country--"+city);
//String html = "<option value='Select' selected='selected'>Select</option>";
String html=" ";

// if(country.equalsIgnoreCase("Select") || country=="Select"){
    
// 	html = "<option value='Select'>Select</option>";
	
// }

if(city!="Select" || city!="Other"){
	sql = "SELECT Distinct(Area) FROM smartgrid.t_countrycitystateinfo where city='"+city+"' Order by Area asc ";
	System.out.println("sql:-"+sql);
	System.out.println("sql"+sql);
	rst =st.executeQuery(sql);
	
	while(rst.next())
	{
		html += "<option value='"+rst.getString("Area")+"'>"+rst.getString("Area")+"</option>";
		System.out.println("html:-"+html);
	}
	html+="<option value='Other'>Other Area</option>";
}
 out.println("<option value='Select'>*Select Area&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </option>"+html); 
}

catch(Exception e)
{
	e.printStackTrace();
}

%>
<%-- </jsp:useBean> --%>
