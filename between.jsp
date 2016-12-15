<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <%@page import="java.sql.*"%>
        <%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@page import="java.sql.*"%>


<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
        <html>
        <head>
        <title>Employee Applications</title>
        <script src="https://code.jquery.com/jquery-1.12.3.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
    
    <script type="text/javascript">
$(document).ready(function () {

    function exportTableToCSV($table, filename) {

        var $rows = $table.find('tr:has(td)'),

            // Temporary delimiter characters unlikely to be typed by keyboard
            // This is to avoid accidentally splitting the actual contents
            tmpColDelim = String.fromCharCode(11), // vertical tab character
            tmpRowDelim = String.fromCharCode(0), // null character

            // actual delimiter characters for CSV format
            colDelim = '","',
            rowDelim = '"\r\n"',

            // Grab text from table into CSV formatted string
            csv = '"' + $rows.map(function (i, row) {
                var $row = $(row),
                    $cols = $row.find('td');

                return $cols.map(function (j, col) {
                    var $col = $(col),
                        text = $col.text();

                    return text.replace(/"/g, '""'); // escape double quotes

                }).get().join(tmpColDelim);

            }).get().join(tmpRowDelim)
                .split(tmpRowDelim).join(rowDelim)
                .split(tmpColDelim).join(colDelim) + '"',

            // Data URI
            csvData = 'data:application/csv;charset=utf-8,' + encodeURIComponent(csv);

        $(this)
            .attr({
            'download': filename,
                'href': csvData,
                'target': '_blank'
        });
    }

    // This must be a hyperlink
    $(".export").on('click', function (event) {
        // CSV
        exportTableToCSV.apply(this, [$('table'), 'Applied Applications.csv']);
        
        // IF CSV, don't do event.preventDefault() or return false
        // We actually need this to be a typical hyperlink
    });
});
</script>
<script type="text/javascript">
$(document).ready(function () {
	document.getElementById("show").style.pointerEvents = "visiblePainted";
	
});
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <style>
        td{FONT: 13px Arial,sans-serif;}
        .th{background-color:#4dc3ff;text-align:center;font-size:20px}
        input{FONT: 13px Arial,sans-serif;border: solid 1;}
        select{font: 13px Arial,sans-serif}
        .navbar-inverse {
    background-color: #0099e6;
    border-color: #4dc3ff;
}
.table{
position:relative;
margin-top:30px;
}
        #button{cursor:hand}
        A:hover {COLOR:#4dc3ff }</style>
        <script type="text/javascript">
        window.history.forward();
        function noback() { window.history.forward(); }
        </script>
        </head>
        <body>
        <a href="#" class="export" style="float:right;font-size:30px;text-decoration:none"><i class="fa fa-file-excel-o"> Copy to Excel</i></a>
   
        <table border=1 width="100%" align="center" cellpadding="5" cellspacing="0" id="example">
        
        <thead>
        
        <tr>
        <td class="input-sm th" data-orderable="false">Date</td>
        <td class="input-sm th" data-orderable="false">Recruiter</td>
        <td class="input-sm th" data-orderable="false">Consultant</td>
        <td class="input-sm th" data-orderable="false">Type</td>
        <td class="input-sm th" data-orderable="false">Interview Date</td>
        <td class="input-sm th" data-orderable="false">Interview Status</td>
        <td class="input-sm th" data-orderable="false">skill</td>
        <td class="input-sm th" data-orderable="false">Agreement</td>
        <td class="input-sm th" data-orderable="false">Vendor</td>
        <td class="input-sm th" data-orderable="false">Client</td>
        <td class="input-sm th" data-orderable="false">City</td>
        <td class="input-sm th" data-orderable="false">pay</td></tr>
        
        </thead><tbody>
        <%

   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
   %>
        <%
        PrintWriter write=response.getWriter();
        String from;
        String to;
        try{
        	String s = request.getParameter("datepicker");
			String ss = request.getParameter("datepicker1");
		
			DateFormat userDateFormat = new SimpleDateFormat("MM/dd/yyyy");
			DateFormat dateFormatNeeded = new SimpleDateFormat("dd-MMM-yy");
			
				Date date = userDateFormat.parse(s);
				from = dateFormatNeeded.format(date);
				
				Date date1 = userDateFormat.parse(ss);
				to = dateFormatNeeded.format(date1);
			
        	
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","VMS","root");
				
        Statement st=con.createStatement();
        int mid;
        int SNo=1;
        ResultSet rs=st.executeQuery("select * from vendor where dat between '"+from+"' and '"+to+"'");
        RequestDispatcher rd=request.getRequestDispatcher("/date.jsp");
        rd.include(request,response);
        while(rs.next()){
        %>  
<tr><td align="center" bgcolor="#ededed"><%=rs.getDate("dat")%></td>
<td align="center" bgcolor="#ededed"    ><%=rs.getString("recruiter")%></td>
<td align="center" bgcolor="#ededed"><%=rs.getString("name")%></td>
<td align="center" bgcolor="#ededed"><%=rs.getString("type")%></td>
<td align="center" bgcolor="#ededed"><%=rs.getDate("idate")%></td>
<td align="center" bgcolor="#ededed"><%=rs.getString("status")%></td>
<td align="center" bgcolor="#ededed"><%=rs.getString("skill")%></td>
<td align="center" bgcolor="#ededed"><%=rs.getString("agreement")%></td>
<td align="center" bgcolor="#ededed"><%=rs.getString("vendor")%></td>
<td  align="center" bgcolor="#ededed"><%=rs.getString("client")%></td>
<td align="center" bgcolor="#ededed"><%=rs.getString("city")%></td>
<td align="center" bgcolor="#ededed"><%=rs.getInt("pay")%></td>
</tr>
 <%
    SNo++;
    }
    rs.close();
    st.close();
    con.close();
    }
    catch(Exception e){}
    %>
    </tbody></table>
    </body>
    </html>

  

   