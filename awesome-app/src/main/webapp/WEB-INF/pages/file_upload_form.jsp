<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Spring MVC Multiple File Upload</title>
<script>
	$(document)
			.ready(
					function() {
						//add more file components if Add is clicked
						$('#addFile')
								.click(
										function() {
											var fileIndex = $('#fileTable tr')
													.children().length - 1;
											$('#fileTable')
													.append(
															'<tr><td>'
																	+ '   <input type="file" name="files['+ fileIndex +']" />'
																	+ '</td></tr>');
										});

					});
</script>
</head>
<body>
	<h1>Spring Multiple File Upload example</h1>

	<form:form method="post" action="save.html" modelAttribute="uploadForm"
		enctype="multipart/form-data">

		<p>Select files to upload. Press Add button to add more file
			inputs.</p>

		<input id="addFile" type="button" value="Add File" />
		<table id="fileTable">
			<tr>
				<td><input name="files[0]" type="file" /></td>
			</tr>
			<tr>
				<td><input name="files[1]" type="file" /></td>
			</tr>
		</table>
		<br />
		<input type="submit" value="Upload" />
	</form:form>
</body>
</html>