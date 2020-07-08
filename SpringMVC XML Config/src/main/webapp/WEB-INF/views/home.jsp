<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>${msg}</h1>
	<form:errors path="st.*"/>
	<!-- <h2><a href="welcome">click here</a></h2> -->
	<div align="center">

		<form action="welcome" method="post">
			<table cellpadding="10" cellspacing="10">

				<tr>

					<td>Student Name:</td>
					<td><input type="text" name="studentName"></td>

				</tr>
				<tr>

					<td>Student Hobby:</td>
					<td><input type="text" name="studentHobby"></td>

				</tr>
				<tr>

					<td>Student Mobile:</td>
					<td><input type="text" name="studentMobile"></td>

				</tr>
				<tr>

					<td>Student DOB:</td>
					<td><input type="text" name="studentDOB"></td>

				</tr>
				<tr>

					<td>Student Skills:</td>
					<td><select name="studentSkills">
							<option value="core">Core</option>
							<option value="Advance">Advance</option>
							<option value="core">Spring</option>
					</select></td>

				</tr>
				<tr>
					<td>Student Address:</td>
					<td><input type="text" name="studentAddress.country"></td>
					<td><input type="text" name="studentAddress.city"></td>
					<td><input type="text" name="studentAddress.street"></td>
					<td><input type="text" name="studentAddress.pinCode"></td>
				</tr>
				<tr>

					<td><input type="submit" value="save"></td>

				</tr>

			</table>


		</form>




	</div>
</body>
</html>