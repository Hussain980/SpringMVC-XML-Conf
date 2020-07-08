<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>${msg}</h1>
	<br>
	<table cellpadding="10" cellspacing="10">
		<tr>
			<td>Student Name:</td>
			<td>${st.studentName}</td>
		</tr>
		<tr>
			<td>Student Hobby:</td>
			<td>${st.studentHobby}</td>
		</tr>
		<tr>
			<td>Student Mobile:</td>
			<td>${st.studentMobile}</td>
		</tr>
		<tr>
			<td>Student DOB:</td>
			<td>${st.studentDOB}</td>
		</tr>
		<tr>
			<td>Student Skills:</td>
			<td>${st.studentSkills}</td>
		</tr>
		<tr>
		<td>Student Address</td>
		<td>${st.studentAddress.country}</td>
		<td>${st.studentAddress.city}</td>
		<td>${st.studentAddress.street}</td>
		<td>${st.studentAddress.pinCode}</td>
		</tr>

	</table>
</body>
</html>