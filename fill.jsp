<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<title>Student Application Details</title>
<meta charset="utf-8">
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
<script type="text/javascript">
	$(document).ready(function() {
		$('#type').on('change', function() {
			if (this.value == 'interview')
			//.....................^.......
			{
				$("#i").show();
				$("#v").show();

			} else {
				$("#i").hide();
				$("#v").hide();
			}
		});
	});
</script>
<script>
	$(document).ready(function() {
		$("#idate").datepicker();
	});
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
<style type="text/css">
.head {
	background-color: #ffffff;
}

.di {
	background-color:  #0099e6;
	border: 0;
	
	margin-bottom: 0;
}

.a {
	color: white;
	font-size: 20px;
}

.aa:hover {
	background-color:  #4dc3ff;
}

@media only screen and (min-width: 100px) {
	.img-responsive {
		width: 100%;
		height: 650px;
	}
}

.img-responsive {
	width: 100%;
	max-height: 800px;
}

.rightt {
	float: right;
}

.body {
	background: url('./photos/back.jpg');
}
.ac{
  	background-color:#4dc3ff;
  	}

</style>
</head>
<body style="border: 0" class="body">
	<header class="container-fluid head">
		<div class="container" style="margin-top: 7px">
			<a href="http://www.sstsusa.com/"> <img class="img-rounded"
				src="http://learnbeyond.com/wordpress/wp-content/uploads/2014/04/logo52.png" width="216" height="55" border="0">
			</a>
			<ul class="list-inline navbar-nav navbar-right">
				<li class=""><a href="mailto:info@sstsusa.com" style="text-decoration:none"><span
						class="glyphicon glyphicon-envelope" style="color:  #0099e6"></span>
						<span style="color:  #0099e6">info@sstsusa.com</span></a></li>
				<li class=""><span class="glyphicon glyphicon-phone"
					style="color:  #0099e6"></span><span style="color:  #0099e6">
						816-282-8923</span></li>
				<li><a href="https://www.facebook.com/"><i
						class="fa fa-facebook" style="color: #0099e6"></i></a></li>
				<li><a href="https://twitter.com/"><i class="fa fa-twitter" style="color: #0099e6"></i></a></li>
			</ul></div>
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
						<li class="ac"><a href="#"><span></span> <span class="a">Welcome: ${s}</span></a></li>
							
							<li class="aa"><a href="recruiter.html"><span
									class="glyphicon glyphicon-off"></span> <span class="a">Log
										Out</span></a></li>
							<li class="ac"><a href="changerec.html"><span
									class="glyphicon glyphicon-user"></span> <span class="a">Change
										Password</span></a></li>
						</ul>
					</div>
				</div>
			</nav>
		
	<main>

	<form class="form-horizontal container" method="post"
		action="StudentDetails" name="frm">
		<fieldset>

			<!-- Form Name -->
			

			<legend style="position: relative; top: 10px;text-align:center">Student
				Applied form</legend>


			<div class="form-group" style='display: none;'>
				<label class="col-md-4 control-label" for="email">Recruiter Name</label>
				<div class="col-md-4">
					<input id="recruiter" name="recruiter" type="text"
						placeholder="Enter vendor Company name"
						class="form-control input-md" required="" value="${s}">

				</div>
			</div>
			
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="name">Date</label>
				<div class="col-md-4" style="position: relative; top: 5px">
					<script type="text/javascript">
						var currentTime = new Date();
						var month = currentTime.getMonth() + 1;
						var day = currentTime.getDate();
						var year = currentTime.getFullYear();
						document.write(month + "/" + day + "/" + year);
					</script>
				</div>

			</div>

		
			<%
			   
				PrintWriter write = response.getWriter();
				try {
					
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","VMS","root");
					 
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from consultant");
					
					
			%>
			<div class="form-group">
				<label class="col-md-4 control-label" for="name">Consultant</label>
				<div class="col-md-4">
					<select id="name" name="name" class="form-control input-md"
						required="">
						<option value="">-Select-</option>
						<%
							while (rs.next()) {
						%>
						<option><%=rs.getString("name")%></option>
						<%
							}
						%>
					</select>
				</div>
			</div>

			<%
				
					rs.close();
					st.close();
					con.close();
				} catch (Exception e) {

				}
			%>
			<div class="form-group">
				<label class="col-md-4 control-label" for="name">Skill</label>
				<div class="col-md-4">
					<select id="skill" name="skill" class="form-control input-md"
						required="">
						<option value="">-Select-</option>
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
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="name">Type</label>
				<div class="col-md-4">
					<select id="type" name="type" class="form-control input-md"
						required="">
						<option value="">-Select-</option>
						<option value="interview">Interview</option>
						<option value="submission">Submission</option>

					</select>

				</div>
			</div>


			<!-- Text input-->
			<div class="form-group" id="i" style='display: none;'>
				<label class="col-md-4 control-label" for="email">Interview
					Date</label>
				<div class="col-md-4">
					<input id="idate" name="idate" class="form-control input-md"
						placeholder="mm/dd/yyyy" />

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group" id="v" style='display: none;'>
				<label class="col-md-4 control-label" for="email">Status</label>
				<div class="col-md-4">
					<select id="status" name="status" class="form-control input-md">
						<option value="">-Select-</option>
						<option value="cleared">Cleared</option>
						<option value="uncleared">Uncleared</option>

					</select>

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Agreement</label>
				<div class="col-md-4">

					<label class="radio-inline"><input type="radio"
						name="agreement" value="yes" checked> Yes</label> <label
						class="radio-inline"><input type="radio" name="agreement"
						value="no"> No</label>
				</div>
			</div>


			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Vendor
					Company Name</label>
				<div class="col-md-4">
					<input id="vendorcompany" name="vendorcompany" type="text"
						placeholder="Enter vendor Company name"
						class="form-control input-md" required="">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Vendor
					Name</label>
				<div class="col-md-4">
					<input id="vendor" name="vendor" type="text"
						placeholder="Enter vendor name" class="form-control input-md"
						required="">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Vendor
					Phone</label>
				<div class="col-md-4">
					<input id="vendorphone" name="vendorphone" type="number"
						placeholder="Enter vendor phone" class="form-control input-md"
						required="">

				</div>
			</div>
			
			<div class="form-group">
  <label class="col-md-4 control-label" for="email">Prime Vendor</label>  
  <div class="col-md-4">
 
    <label class="radio-inline"><input type="radio" name="prime" value="yes"> Yes</label>
    <label class="radio-inline"><input type="radio" name="prime" value="no" checked> No</label>
  </div>
</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Client
					Company Name</label>
				<div class="col-md-4">
					<input id="clientcompany" name="clientcompany" type="text"
						placeholder="Enter Client Company Name"
						class="form-control input-md" required="">

				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="password">Client
					Name</label>
				<div class="col-md-4">
					<input id="client" name="client" type="text"
						placeholder="Enter client name" class="form-control input-md"
						required="">
				</div>
			</div>


			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Client
					Phone</label>
				<div class="col-md-4">
					<input id="clientphone" name="clientphone" type="number"
						placeholder="Enter Client phone" class="form-control input-md"
						required="">

				</div>
			</div>


			<div class="form-group">
				<label class="col-md-4 control-label" for="email">State</label>
				<div class="col-md-4">
					<select id="state" name="state" class="form-control input-md">
					<option value="">-Select-</option>
						<option value="AL">Alabama</option>
						<option value="AK">Alaska</option>
						<option value="AZ">Arizona</option>
						<option value="AR">Arkansas</option>
						<option value="CA">California</option>
						<option value="CO">Colorado</option>
						<option value="CT">Connecticut</option>
						<option value="DE">Delaware</option>
						<option value="DC">District Of Columbia</option>
						<option value="FL">Florida</option>
						<option value="GA">Georgia</option>
						<option value="HI">Hawaii</option>
						<option value="ID">Idaho</option>
						<option value="IL">Illinois</option>
						<option value="IN">Indiana</option>
						<option value="IA">Iowa</option>
						<option value="KS">Kansas</option>
						<option value="KY">Kentucky</option>
						<option value="LA">Louisiana</option>
						<option value="ME">Maine</option>
						<option value="MD">Maryland</option>
						<option value="MA">Massachusetts</option>
						<option value="MI">Michigan</option>
						<option value="MN">Minnesota</option>
						<option value="MS">Mississippi</option>
						<option value="MO">Missouri</option>
						<option value="MT">Montana</option>
						<option value="NE">Nebraska</option>
						<option value="NV">Nevada</option>
						<option value="NH">New Hampshire</option>
						<option value="NJ">New Jersey</option>
						<option value="NM">New Mexico</option>
						<option value="NY">New York</option>
						<option value="NC">North Carolina</option>
						<option value="ND">North Dakota</option>
						<option value="OH">Ohio</option>
						<option value="OK">Oklahoma</option>
						<option value="OR">Oregon</option>
						<option value="PA">Pennsylvania</option>
						<option value="RI">Rhode Island</option>
						<option value="SC">South Carolina</option>
						<option value="SD">South Dakota</option>
						<option value="TN">Tennessee</option>
						<option value="TX">Texas</option>
						<option value="UT">Utah</option>
						<option value="VT">Vermont</option>
						<option value="VA">Virginia</option>
						<option value="WA">Washington</option>
						<option value="WV">West Virginia</option>
						<option value="WI">Wisconsin</option>
						<option value="WY">Wyoming</option>
					</select>

				</div>
			</div>


			<div class="form-group">
				<!-- Password -->
				<label class="col-md-4 control-label" for="password_confirm">City</label>
				<div class="col-md-4">
					<input type="text" id="city" name="city"
						placeholder="Enter City Name" class="form-control input-md"
						required="">
				</div>
			</div>

			<div class="form-group">
				<!-- Password -->
				<label class="col-md-4 control-label" for="password_confirm">Pay
					Rate</label>
				<div class="col-md-4">
					<input type="number" id="pay" name="pay"
						placeholder="Enter pay rate" class="form-control input-md"
						required="">
				</div>
			</div>


			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="signup"></label>
				<div class="col-md-4">
					<button id="signup" name="signup" type="Submit"
						class="btn btn-success" >Submit</button>
				</div>
			</div>
		</fieldset>
	</form>

	</main>


</body>
</html>