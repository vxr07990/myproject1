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
<title>Application Details</title>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="./photos/b.jpg">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://momentjs.com/downloads/moment-with-locales.js"></script>
<script src="http://momentjs.com/downloads/moment-timezone-with-data.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script>
	$(document).ready(function() {
		$("#datepicker").datepicker();
		$("#datepicker1").datepicker();
		$("#datepicker2").datepicker({ dateFormat: 'yy-mm-dd' })
	});
</script>
<script type="text/javascript">
	function visible(argument) {
		//var c=document.getElementById("frame");
		//c.style.display='block';

		document.getElementById("frame").innerHTML = '<object type="type/html" data="between.jsp"></objecct>';
	}
</script>
</script>
<script type="text/javascript">
	(function(global) {

		if (typeof (global) === "undefined") {
			throw new Error("window is undefined");
		}

		var _hash = "!";
		var noBackPlease = function() {
			global.location.href += "#";

			// making sure we have the fruit available for juice (^__^)
			global.setTimeout(function() {
				global.location.href += "!";
			}, 50);
		};

		global.onhashchange = function() {
			if (global.location.hash !== _hash) {
				global.location.hash = _hash;
			}
		};

		global.onload = function() {
			noBackPlease();

			// disables backspace on page except on input fields and textarea..
			document.body.onkeydown = function(e) {
				var elm = e.target.nodeName.toLowerCase();
				if (e.which === 10 && (elm !== 'input' && elm !== 'textarea')) {
					e.preventDefault();
				}
				// stopping event bubbling up the DOM tree..
				e.stopPropagation();
			};
		}

	})(window);
</script>
<script type="text/javascript">
    
    function validateForm() {
    	var x = document.forms["frm"]["datepicker"].value;
        if (x == null || x == "") {
            alert("Select From Date");
            return false;
        }
        var y = document.forms["frm"]["datepicker1"].value;
        if (y == null || y == "") {
            alert("Select To Date");
            return false;
        }
}
    </script>
   
<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable( {
        initComplete: function () {
            this.api().columns(1).every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                   
                   $('#dropdown2') .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
            this.api().columns(2).every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                   
                   $('#dropdown1') .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
            this.api().columns(3).every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                   
                   $('#dropdown3') .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
            this.api().columns(7).every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                   
                   $('#dropdown4') .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
            this.api().columns(5).every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                   
                   $('#dropdown5') .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
            this.api().columns(4).every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                   
                   $('#datepicker2') .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
            this.api().columns(6).every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                   
                   $('#dropdown7') .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
        }
    } );
} );
</script>
<style type="text/css">
.head {
	background-color: #ffffff;
}

.di {
	background-color: #0099e6;
	border: 0;
	margin-bottom: 0;
}

.a {
	color: white;
	font-size: 20px;
}

.aa:hover {
	background-color: #4dc3ff;
}

.img-responsive {
	width: 100%;
	max-height: 550px;
}

.rightt {
	float: right;
}

.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	/* Set the fixed height of the footer here */
	height: 30px;
}

.main-login {
	background-color: #fff;
	/* shadows and rounded borders */
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.main-center {
	margin-top: 30px;
	margin: 0 auto;
	max-width: 330px;
	padding: 40px 40px;
}

.login-button {
	margin-top: 5px;
}

.login-register {
	font-size: 11px;
	text-align: center;
}

.embed-responsive-item {
	display: none;
}

.body {
	background: url('./photos/back.jpg');
}

.ac {
	background-color: #4dc3ff;
}
.show{
 pointer-events: none;
}
</style>
</head>
<body style="border: 0" class="body">
	<header class="container-fluid head">

	<div class="container" style="margin-top: 7px">
		<a href="http://www.sstsusa.com/"> <img class="img-rounded"
			src="http://learnbeyond.com/wordpress/wp-content/uploads/2014/04/logo52.png"
			width="216" height="55" border="0">
		</a>
		<ul class="list-inline navbar-nav navbar-right">
			<li class=""><a href="mailto:info@sstsusa.com"
				style="text-decoration: none"><span
					class="glyphicon glyphicon-envelope" style="color: #0099e6"></span>
					<span style="color: #0099e6">info@sstsusa.com</span></a></li>
			<li class=""><span class="glyphicon glyphicon-phone"
				style="color: #0099e6"></span><span style="color: #0099e6">
					816-282-8923</span></li>
			<li><a href="https://www.facebook.com/"><i
					class="fa fa-facebook" style="color: #0099e6"></i></a></li>
			<li><a href="https://twitter.com/"><i class="fa fa-twitter"
					style="color: #0099e6"></i></a></li>
		</ul>
	</div>
	</header>
	<nav class="navbar navbar-inverse di">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="http://www.sstsusa.com/"><span
				class="a">SSTS USA</span></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="aa"><a href="login.html"><span class="a">Home</span></a></li>
				<li class="aa"><a href="http://www.sstsusa.com/about.html"><span
						class="a">About Us</span></a></li>
				<li class="aa"><a href="http://www.sstsusa.com/contact.html"><span
						class="a">Contact</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="aa"><a href="admin1.html"><span
						class="glyphicon glyphicon-off"></span> <span class="a">Log
							Out</span></a></li>
				<li class="aa ac"><a href="change.html"><span
						class="glyphicon glyphicon-user"></span> <span class="a">Change
							Password</span></a></li>
			</ul>
		</div>
	</div>
	</nav>

	<main>

	<form class="form-horizontal container" name="frm"
		style="position: relative; top: 20px;" method="get"
		action="between.jsp" onsubmit="return validateForm()">
		<div class="container">
			<div class="form-group">
				<label class="col-md-2 control-label" for="name">From</label>
				<div class="col-md-2">
					<input id="datepicker" name="datepicker"
						class="form-control input-md" placeholder="mm/dd/yyyy" required=""
						readonly type="text"/>
				</div>
				<label class="col-md-2 control-label" for="name">To</label>
				<div class="col-md-2">
					<input id="datepicker1" name="datepicker1"
						class="form-control input-md" placeholder="mm/dd/yyyy" required=""
						readonly />
				</div>
				<div class="col-md-2">
     <input class="btn btn-info form-control input-md" type="submit" name="result" value="Get Results">
    </div></div> 
   
    </div>
  
			<%
				PrintWriter write = response.getWriter();
				try {

					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "VMS", "root");

					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from consultant");
			%>
			<div class="container show" id="show">
			<div class="form-group">
				<label class="col-md-2 control-label" for="name"></label>
				<div class="col-md-2">
					<select id="dropdown1" name="name" class="form-control input-md">
						<option value="">-Consultant-</option>
						<%
							while (rs.next()) {
						%>
						<option><%=rs.getString("name")%></option>
						<%
							}
						%>
					</select>
				</div>
				<%
					rs.close();
				%>
				<div class="col-md-2">
					<select id="dropdown2" name="name" class="form-control input-md">
						<option value="">-Recruiter-</option>
						<%
							ResultSet rs1 = st.executeQuery("select * from recruiter");
								while (rs1.next()) {
						%>
						<option><%=rs1.getString("name")%></option>
						<%
							}
						%>
					</select>
				</div>
				<%
					rs1.close();
						st.close();
						con.close();
					} catch (Exception e) {

					}
				%>
				<div class="col-md-2">
					<select id="dropdown3" name="type" class="form-control input-md">
						<option value="">-Select Type-</option>
						<option value="interview">Interview</option>
						<option value="submission">Submission</option>

					</select>

				</div>
				<div class="col-md-2">
					<select id="dropdown4" name="type" class="form-control input-md">
						<option value="">-Agreement-</option>
						<option value="yes">Yes</option>
						<option value="no">No</option>

					</select>

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-2 control-label" for="name"></label>
				<div class="col-md-2">
					<select id="dropdown5" name="status" class="form-control input-md">
						<option value="">-Status-</option>
						<option value="cleared">Cleared</option>
						<option value="uncleared">Uncleared</option>

					</select>
				</div>
				<div class="col-md-2">
					<input id="datepicker2" name="datepicker2"
						class="form-control input-md  " placeholder="Interview Date"
						/>
				</div>
				<div class="col-md-2">
					<select id="dropdown7" name="skill" class="form-control input-md">
						<option value="">-Skill-</option>
						<option value="Java">Java</option>
						<option value=".Net">.Net</option>
						<option value="devops">devops</option>
						<option value="Selenium">Selenium</option>
						<option value="UI">UI</option>
						<option value="sales force">Sales Force</option>
						<option value="Informatica">Informatica</option>
						<option value="Bussiness Analyst">Bussiness Analyst</option>
						<option value="IOS">IOS</option>
						<option value="Android">Android</option>
						<option value="Hadoop">Hadoop</option>
						<option value="SAS">SAS</option>
						<option value="DB Administrator">DB Administrator</option>
						<option value="SAP">SAP</option>


					</select>

				</div>
				<div class="col-md-2">.</div>
			</div>
		</div>
	</form>

	</main>


</body>
</html>