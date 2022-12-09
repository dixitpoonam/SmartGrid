<%@include file="headernew.jsp"%> 
 <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.text.DecimalFormat"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Local Storage Report</title>
   
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  
   
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.dataTables.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 --><link rel="stylesheet" href="css/styleMakePlan.css">

<!-- Export Options Links of DataTables -->

<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css">
<script src=" https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script> 
<script src=" https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script> 
<script src=" https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
<script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script src=" https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script src=" https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js "></script>
 <script type="text/javascript" src="//cdn.datatables.net/plug-ins/1.10.19/sorting/date-dd-MMM-yyyy.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.4/moment.min.js"></script>
 <script type="text/javascript" src="//cdn.datatables.net/plug-ins/1.10.19/sorting/datetime-moment.js"></script>
 
 <script type="text/javascript">
 $(document).ready(function() {
	    $('#example').DataTable( {
	     "pagingType": "full_numbers",
            dom: 'Blfrtip',
            responsive: true,
            scrollY:        "400px",
            scrollX:        true,
            scrollCollapse: true,
            fixedColumns: true,

            /* "columnDefs": [
                { type: 'date-dd-mmm-yyyy', targets: 5 },
              ], */
              
	        buttons: [
	        	
	        	{
	        		extend: 'collection',
	        		
	        		text: 'Export',
	        		buttons: [
	        			
		        			{
		                        extend: 'excel',
		                        title: 'Media Centre Report',
		                        },
		                    {
		                        extend: 'pdf',
		                        title: 'Media Centre Report',
		                        pageSize : 'A1',
		                    },
		                    {
		                        extend: 'csv',
		                        title: 'Media Centre Report',
		                    },
		                    {
		                        extend: 'print',
		                        title: 'Media Centre Report-',
		                    },
		                    {
		                        extend: 'copy',
		                        title: 'Media Centre Report-',
		                    },
		                   
	            				/* 'copy', 'csv', 'excel', 'pdf', 'print' */
	            			]
	        	}
	        ],
        	lengthMenu: [[10, 25, 50, 100,-1], [10, 25, 50, 100,"All" ]]
	    	
	    } );
	} );

</script>

<!--Delete function  -->
<script type="text/javascript">

function delete1(v,s,t) {
  
	/* alert("DO YOU WANT TO DELETE IMAGE ?? "); */
	
  var txt="DO YOU WANT TO DELETE THIS IMAGE ?? Image Name = "+s;
	       
   	      
  var status="Delete";
    
    if (confirm(txt)) {
    	
    	
    	location.assign("mediacenter.jsp?Country="+v+"&State="+s+"&status="+status+"&City="+t);
    	
      }        
 else {
       
        return false;
    }
} 

function Redirect()
{
	alert("Record Delete Successfull..!");
  	location.assign("mediacenter.jsp");
	}

</script>
<style>


.popup {
background-color: #98AFC7;
position: absolute;
visibility: hidden;
}
.popupnew {
background-color: #98AFC7;
position: absolute;
visibility: visible;
}
#ad {
  text-decoration: underline;
  text-align: left;
  padding-left: 25px;
  
}
  
</style>
<style>
#example {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#example td, #example th  {
    border: 1px solid #ddd;
    padding: 8px;
}

#example tr:nth-child(even){background-color: #f2f2f2;}

#example tr:hover {background-color: #ddd;}

 #delete td:hover {background-color: #ddd;}
#example th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>

<script type="text/javascript">
 function showFTPImage(imageName)
 {	
 	var url="http://twtech.in/SmartGrid/Media/"+imageName;

 	//var url="https://s3.ap-south-1.amazonaws.com/smartgridinfra/" +imageName;
 	testwindow1 = window.open(url,"Image", "width=500,height=500");
    testwindow1.moveTo(250,100);
 }
 												
 </script>
  
<link href="http://cdn.syncfusion.com/16.4.0.42/js/web/flat-azure/ej.web.all.min.css" rel="stylesheet" />
 <!-- <script src="http://cdn.syncfusion.com/js/assets/external/jquery-1.10.2.min.js"> </script>
  -->   <script src="http://cdn.syncfusion.com/16.4.0.42/js/web/ej.web.all.min.js"></script>
       
  <style>
    div.absolute {
    position: absolute;
    left: 30px;
    width:100%;
    border:0;
  
    
} 
    </style>

   
 </head>
 
 	<%
 	
	try {
		Class.forName("org.gjt.mm.mysql.Driver");
		Connection con1 = DriverManager.getConnection("jdbc:mysql://164.68.105.216/smartgrid", "fleetview",
				"1@flv");
		
		String userid=session.getAttribute("userid").toString();
		System.out.println("userid" + userid );


%>
	

 <body>
<br>
 <br>
 <div id="head" name="head"  class="form" align="center" style="font-size: 16px;  " >
 
 <form id="camera_jpg_report" name="camera_jpg_report" action="" method="post"  " >
 <font id="head1" name="head1" face="san-serif" color="#333" size="3"><b>Media Centre Report</b></font>
 	  <br>
 	 </br>
 	<table width="95%" border="0">
			<tr align="left">
				<td><font face="Arial" size="2"><a href="Addmediacenter.jsp" style="font-weight: bold; color: blue; " >Add Media</a></font></td>

				<td align="right" bgcolor="#FFFFFF"><font size="2"><%=new SimpleDateFormat("dd-MMM-yyyy HH:mm").format(new java.util.Date())%></font></td>

			</tr>
		</table> 
 	
 
<%-- 	<div align="right"> 
 <font size="2">
<td align="right" bgcolor="#FFFFFF">
<%=new SimpleDateFormat("dd-MMM-yyyy HH:mm").format(new java.util.Date())%>
</td>
</div> --%>

</form>
</div>
 
<div class="form" style="margin-left: 2%;margin-top: 2%;">
       <% 
         int i=1;
         String Country=" ";  
	     String State=" ";
	     String City=" ";
	     String Location=" ";
	     String Company=" ";
	     String PoleId=" ";
	     String id= " ";
         String status=" ";
         
        status=request.getParameter("status");
   	
   	if(status==null) {%>	
<table id="example" class="display" style="width:100%" cellspacing="0" >
 <thead>
		 <tr align="center">
		    <th width ="8%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Delete</th>
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Sr No</th>
		    <th width ="25%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Uploaded Time</th>
			<th width ="17%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Media Name</th>
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Media Type</th>
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Duration</th>
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Description</th>
            <th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Brand Name</th>
            
			</tr>
</thead>

	
	
	<%
	     
	     
	     
	     Statement stmt0 = con1.createStatement();
	     String sql = "select Date_Format(CONCAT(Date,' ',Time),'%d-%b-%Y %H:%i') as Datetime,originalmedianame,duration,changemedianame,Uploadstatus,mediatype,describtion,Company,Date_Format(insertdate,'%d-%b-%Y %H:%i') as InsertTime from smartgrid.t_globalmediamaster where  UserId='"+userid+"'";
	     
	     System.out.println("sql -----"+sql); 
	     System.out.println("id -----"+id); 

			ResultSet result = stmt0.executeQuery(sql);
			while (result.next()) {

				Country = result.getString("Datetime"); //
				State = result.getString("originalmedianame"); //
				City = result.getString("mediatype");   //
				Location = result.getString("duration");
				Company = result.getString("describtion");
				PoleId = result.getString("Company");
				id = result.getString("changemedianame");

				if(PoleId==null || PoleId.equalsIgnoreCase(""))
				{
					PoleId="-";
				}
	
	%>
	
	               <tr align="center">
						<td  align="center">
						<a href="#" title="Click Here for Delete Media" onclick="return delete1('<%=Country %>','<%=State%>','<%=City%>')">
			            <img src="images/delete.jpeg" alt="Delete Record" width="20px" height="18px" style="border-style: none"></img></a></td>
						<td align="right"><%=i%></td>
						<td align="right"><%=Country%></td>
						<td align="left"><a href="http://twtech.in/SmartGrid/Media/<%=id%>"><%=State%></a></td>
						<td align="left"><%=City%></td>
						<td align="right"><%=Location%></td>
						<td align="left"><%=Company%></td>
						<td align="left"><%=PoleId%></td>
					
						
						
						

					</tr>

					<%
						i++;
					//System.out.println("iiiiiiiiiiii" + i );
							}

						
					%>
					<tfoot>
		  <tr align="center">
		    <th width ="8%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Delete</th>
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Sr No</th>
		    <th width ="25%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Uploaded Time</th>
			<th width ="17%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Media Name</th>
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Media Type</th>
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Duration</th>
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Description</th>
            <th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: center; background-color: #424658; color: white;">Brand Name</th>
            
</tfoot>
</tbody>
       
              
				</table>
            <%
   	}
    else{
    	Statement st=con1.createStatement();
    	
    	int count;
    	 Country=request.getParameter("State");
    	String detetequery="delete from smartgrid.t_globalmediamaster where originalmedianame='"+Country+"'";
    	
    	//String detetequery="delete from smartgrid.t_globalmediamaster where changemedianame='2017-01-2411:32:27Testindex6.jpg' ";
         System.out.println("detetequery====="+detetequery);
         
         count=st.executeUpdate(detetequery);
         System.out.println(count+" image deleted ");
         
          out.println("<script>  Redirect();</script>");
       
    }

   	} catch (Exception e) {
   	
		e.printStackTrace();
	}        
   	        	%>
            
			</div>
</body>
</html>
<%@include file="footer.jsp"%>



	