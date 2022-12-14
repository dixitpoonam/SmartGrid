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
		                        title: 'Device Master Report',
		                        },
		                    {
		                        extend: 'pdf',
		                        title: 'Device Master Report',
		                        pageSize : 'A1',
		                    },
		                    {
		                        extend: 'csv',
		                        title: 'Device Master Report',
		                    },
		                    {
		                        extend: 'print',
		                        title: 'Device Master Report-',
		                    },
		                    {
		                        extend: 'copy',
		                        title: 'Device master Report-',
		                    },
		                   
	            				/* 'copy', 'csv', 'excel', 'pdf', 'print' */
	            			]
	        	}
	        ],
        	lengthMenu: [[10, 25, 50, 100,-1], [10, 25, 50, 100,"All" ]]
	    	
	    } );
	} );

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

#example td, #example th {
    border: 1px solid #ddd;
    padding: 8px;
}

#example tr:nth-child(even){background-color: #f2f2f2;}

#example tr:hover {background-color: #ddd;}

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
       

  <script>
      $(function() {
    	 /* var date=new Date();
    	    var date1=new Date();
    	   
    	    date.setDate(date.getDate()-3);
    	    date1.setDate(date1.getDate());  */
    	        	        	    
         $('#date_ex1').ejDateTimePicker({
        
        dateTimeFormat: "dd-MMM-yyyy HH:mm:ss",
          timePopupWidth: "150px",
         timeDisplayFormat: "HH:mm:ss",
         interval: 01,
         pickDate: false,
        pickSeconds: false,
        pick12HourFormat: false , 
        /* pickDate: false,
         pickSeconds: false,
         pick12HourFormat: false   */
         // pick24HourFormat: false,   // enables the 12-hour format time picker
         
         // minDateTime:date,
         // maxDateTime:date1,
          width: '200px'
       });
    });
  </script>
  <script type="text/javascript">
  
 
</script>
   
 </head>
 
 	<%
 	
	try {
		Class.forName("org.gjt.mm.mysql.Driver");
		Connection con1 = DriverManager.getConnection("jdbc:mysql://164.68.105.216/smartgrid", "fleetview",
				"1@flv");
%>
	

 <body>
<br>
 <br>
 <div id="head" name="head"  class="form" align="center" style="font-size: 16px;  " >
 
 <form id="camera_jpg_report" name="camera_jpg_report" action="" method="post"  " >
 <font id="head1" name="head1" face="san-serif" color="#333" size="3"><b>Device Master Report</b></font>
 	  <br>
 	 </br>
 
 
<div id="ad">
		<font face="Arial" size="2"><a href="DeviceConfigureEntry.jsp"
			style="font-weight: bold; color: blue;">Add </a></font>
	</div>
	<div align="right"> 
 <font size="2">
<td align="right" bgcolor="#FFFFFF">
<%=new SimpleDateFormat("dd-MMM-yyyy HH:mm").format(new java.util.Date())%>
</td>
</div>

	
<div class="form" style="margin-left: 2%;margin-top: 2%;">
<table id="example" class="display" style="width:100%" cellspacing="0" >
 <thead>
		 <tr>
		 	<th width ="5%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">Edit</th>
			<th width ="5%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">Sr No</th>
		    <th width ="30%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">Country</th>
			<th width ="15%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">State</th>
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">City</th>
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">Location</th>
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">Company</th>
            <th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">PoleId</th>
            <th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">DeviceId</th>
            <th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">Status</th>
            <th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">LastIP</th> 
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">LatestIPDateTime</th>
            <th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">Route</th> 
		    <th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">Area</th> 
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">EndCustomer</th>
            <th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">SeatingCapacity</th>
            <th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">AssetType</th> 
		    <th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">EntryTime</th> 
			<th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">EnterBy</th>
            <th width ="10%" style="font-size: 14px ; face:san-serif; border: 1px solid #ddd; padding: 10px;padding-top: 12px;padding-bottom: 12px; text-align: left; background-color: #424658; color: white;">UpdateOn</th> 
		 
		
			</tr>
</thead>

	
	
	<%
	     int i=1;
	     String Country=" ";
	     String State=" ";
	     String City=" ";
	     String Location=" ";
	     String Company=" ";
	     String PoleId=" ";
	     String DeviceId=" ";
	     String Status=" ";
	     String LastIP=" ";
	     String LatestIPDateTime=" ";
	     String Route=" ";
	     String Area=" ";
	     String EndCustomer=" ";
	     String SeatingCapacity=" ";
	     String AssetType=" ";
	     String EntryTime=" ";
	     String EnterBy=" ";
	     String UpdateOn=" ";
	     String id= " ";
	     
	     
	     Statement stmt0 = con1.createStatement();
	     String sql = " select id,Country,State,City,Location,Company,polid,Deviceid,status,locationcode,premium,LastIP,Date_Format(LatestIPDateTime,'%d-%b-%Y %H:%i') as LatestIPDateTime,Route,Area,End_Customer,seating_capacity,AssetType,Date_Format(EntryTime,'%d-%b-%Y %H:%i') as EntryTime,EnterBy,Date_Format(UpdateOn,'%d-%b-%Y %H:%i') as UpdateOn   from smartgrid.t_polmaster";
	     
	     System.out.println(sql);
			ResultSet result = stmt0.executeQuery(sql);
			while (result.next()) {

				Country = result.getString("Country");
				State = result.getString("State");
				City = result.getString("City");
				Location = result.getString("Location");
				Company = result.getString("Company");
				PoleId = result.getString("polid");
				DeviceId = result.getString("Deviceid");
				Status = result.getString("status");
				LastIP = result.getString("LastIP");
				LatestIPDateTime = result.getString("LatestIPDateTime");
				Route = result.getString("Route");
				Area = result.getString("Area");
				EndCustomer = result.getString("End_Customer");
				SeatingCapacity = result.getString("seating_capacity");
				AssetType = result.getString("AssetType");
				EntryTime = result.getString("EntryTime");
				EnterBy = result.getString("EnterBy");
				UpdateOn = result.getString("UpdateOn");
				id = result.getString("id");
	
	%>
	
	<tr>
						<td><a
								href="editpol.jsp?id=<%=id%>"
								target="_blank">Edit</a></td>
						<td><%=i%></td>
						<td><%=Country%></td>
						<td><%=State%></td>
						<td><%=City%></td>
						<td><%=Location%></td>
						<td><%=Company%></td>
						<td><%=PoleId%></td>
						<td><%=DeviceId%></td>
						<td><%=Status%></td>
						<td><%=LastIP%></td>
						<td><%=LatestIPDateTime%></td>
						<td><%=Route%></td>
						<td><%=Area%></td>
						<td><%=EndCustomer%></td>
						<td><%=SeatingCapacity%></td>
						<td><%=AssetType%></td>
						<td><%=EntryTime%></td>
						<td><%=EnterBy%></td>
						<td><%=UpdateOn%></td>
						
						
						

					</tr>

					<%
						i++;
					System.out.println("iiiiiiiiiiii" + i );
							}

						} catch (Exception e) {
							e.printStackTrace();
						}
					%>
</tbody>
				</table>
			</div>
</body>
</html>
<%@include file="footer.jsp"%>



	