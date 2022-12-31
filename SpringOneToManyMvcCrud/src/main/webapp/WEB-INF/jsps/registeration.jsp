<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form:form class="form-horizontal" modelAttribute="studentForm" method="post" action="insert">
<fieldset>

<!-- Form Name -->
<legend>Form Name</legend>

 <%-- <form:input id="id" path="id" type="hidden"
					 class="form-control input-md" required="" />
 --%>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">name</label>  
  <div class="col-md-4">
  <form:input id="name" path="name" name="name" type="text"
						placeholder=" " class="form-control input-md" required="" />
    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">mobile</label>  
  <div class="col-md-4">
  <form:input class="form-control input-md" path="mobile" id="mobile" required="" type="text" placeholder=" "/>
    
  </div>
</div>

<c:forEach items="${studentForm.addresses}" var="city" varStatus="row">
<%--  <c:choose>
<c:when test="${addresses.aid }==null">
</c:when>
<c:otherwise>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput"></label>  
  <div class="col-md-4">
  <form:input class="form-control input-md" path="addresses[${row.index}].aid" id="aid" required="" type="hidden" placeholder=" "/>
    
  </div>
</div>


</c:otherwise>
</c:choose>
 --%>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Address</label>  
  <div class="col-md-4">
  <form:input class="form-control input-md" path="addresses[${row.index}].city" id="city" required="" type="text" placeholder=" "/>
    
  </div>
</div>
</c:forEach>
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton">register</label>
  <div class="col-md-4">
    <button type="submit" name="singlebutton" class="btn btn-primary" id="singlebutton">register</button>
  </div>
</div>

</fieldset>
</form:form>
<a href="display">Display the records</a>
</body>
</html>