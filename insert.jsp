<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	tr,td{
		padding: 10px;
	}
	span{
		color: red;
	}
</style>

<script type="text/javascript">
function checkFname()
{
	var f=document.insert.fname.value;
	var reg=/^[A-Za-z]+$/;
	if(f=="")
	{
		document.getElementById("fname").innerHTML="Please Enter First Name";
		document.insert.action.disabled="true";
	}
	else if(!reg.test(f))
	{
		document.getElementById("fname").innerHTML="Please Enter Only Alphabets";
		document.insert.action.disabled="true";
	}
	else
	{
		document.getElementById("fname").innerHTML="";
		document.insert.action.disabled="";
	}
}
function checkLname()
{
	var f=document.insert.lname.value;
	var reg=/^[A-Za-z]+$/;
	if(f=="")
	{
		document.getElementById("lname").innerHTML="Please Enter Last Name";
		document.insert.action.disabled="true";
	}
	else if(!reg.test(f))
	{
		document.getElementById("lname").innerHTML="Please Enter Only Alphabets";
		document.insert.action.disabled="true";
	}
	else
	{
		document.getElementById("lname").innerHTML="";
		document.insert.action.disabled="";
	}
}
function checkEmail()
{
	var f=document.insert.email.value;
	var reg=/^[A-Za-z0-9-_.]+@[A-Za-z]+\.[A-Za-z]{2,4}$/;
	if(f=="")
	{
		document.getElementById("email").innerHTML="Please Enter Email";
		document.insert.action.disabled="true";
	}
	else if(!reg.test(f))
	{
		document.getElementById("email").innerHTML="Please Enter Valid Email";
		document.insert.action.disabled="true";
	}
	else
	{
		document.getElementById("email").innerHTML="";
		document.insert.action.disabled="";
	}
}
function checkMobile()
{
	var f=document.insert.mobile.value;
	var reg=/^\d{10}$/;
	if(f=="")
	{
		document.getElementById("mobile").innerHTML="Please Enter Mobile";
		document.insert.action.disabled="true";
	}
	else if(!reg.test(f))
	{
		document.getElementById("mobile").innerHTML="Please Enter 10 Digits Only";
		document.insert.action.disabled="true";
	}
	else
	{
		document.getElementById("mobile").innerHTML="";
		document.insert.action.disabled="";
	}
}
function checkPassword()
{
	var f=document.insert.password.value;
	var reg=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
	if(f=="")
	{
		document.getElementById("password").innerHTML="Please Enter Password";
		document.insert.action.disabled="true";
	}
	else if(!reg.test(f))
	{
		document.getElementById("password").innerHTML="Minmum 1 Upper,Lower,Number & Special(8-15)";
		document.insert.action.disabled="true";
	}
	else
	{
		document.getElementById("password").innerHTML="";
		document.insert.action.disabled="";
	}
}
function checkCPassword()
{
	var p1=document.insert.password.value;
	var p2=document.insert.cpassword.value;
	if(p2=="")
	{
		document.getElementById("cpassword").innerHTML="Please Enter Confirm Password";
		document.insert.action.disabled="true";
	}
	else if(p1!=p2)
	{
		document.getElementById("cpassword").innerHTML="Password & Confirm Password Does Not Matched";
		document.insert.action.disabled="true";
	}
	else
	{
		document.getElementById("cpassword").innerHTML="";
		document.insert.action.disabled="";
	}
}
</script>
</head>
<body>
<%
	if(request.getAttribute("msg")!=null)
	{
		out.println(request.getAttribute("msg"));
	}
%>
<form name="insert" method="post" action="StudentController">
	<table>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname" onblur="checkFname();"></td>
			<td><span id="fname"></span></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname" onblur="checkLname();"></td>
			<td><span id="lname"></span></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" onblur="checkEmail();"></td>
			<td><span id="email"></span></td>
		</tr>
		<tr>
			<td>Mobile</td>
			<td><input type="text" name="mobile" onblur="checkMobile();"></td>
			<td><span id="mobile"></span></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><textarea rows="5" cols="22" name="address"></textarea></td>
		</tr>
		<tr>
			<td>Gender</td>
			<td>
				<input type="radio" name="gender" value="male">Male
				<input type="radio" name="gender" value="female">Female
			</td>
		</tr>
		<tr>
			<td>Education</td>
			<td>
				<select name="education">
					<option>---Select Eduction---</option>
					<option value="10th">10th</option>
					<option value="12th">12th</option>
					<option value="BE">BE</option>
					<option value="ME">ME</option>
					<option value="CA">CA</option>
					<option value="BCA">BCA</option>
					<option value="BSC IT">BSC IT</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" onblur="checkPassword();"></td>
			<td><span id="password"></span></td>
		</tr>
		<tr>
			<td>Confirm Password</td>
			<td><input type="cpassword" name="cpassword" onblur="checkCPassword();"></td>
			<td><span id="cpassword"></span></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="action" value="insert" class="btn btn-primary">
			</td>
		</tr>
	</table>
</form>
<a href="show.jsp">Show All Students</a>
</body>
</html>
