<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<style>
.blue-button{
background: #25A6E1;
filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
padding:3px 5px;
color:#fff;
font-family:'Helvetica Neue',sans-serif;
font-size:12px;
border-radius:2px;
-moz-border-radius:2px;
-webkit-border-radius:4px;
border:1px solid #1A87B9
}
table {
  font-family: "Helvetica Neue", Helvetica, sans-serif;
   width: 50%;
}
th {
  background: SteelBlue;
  color: white;
}
td,th{

                border: 1px solid gray;
                width: 25%;
                text-align: left;
                padding: 5px 10px;
            }
</style>
</head>
<body>
<form:form method="post" modelAttribute="student" action="${pageContext.request.contextPath}/addStudent">
<table>
  <tr>
   <th colspan="2">Add Student</th>
  </tr>
  <tr>
  <form:hidden path="id" />
          <td><form:label path="name">Student Name:</form:label></td>
          <td><form:input path="name" size="30" maxlength="30"></form:input></td>
        </tr>
  <tr>
       <td><form:label path="department">Student Department:</form:label></td>
          <td><form:input path="department" size="30" maxlength="30"></form:input></td>
  </tr>
    <tr>
         <td><form:label path="country">Student Country:</form:label></td>
            <td><form:input path="country" size="30" maxlength="30"></form:input></td>
    </tr>
  <tr>
   <td colspan="2"><input type="submit"
    class="blue-button" /></td>
  </tr>
</table>
</form:form>
</br>
<h3>Student List</h3>
<c:if test="${!empty listOfStudents}">
<table class="tg">
<tr>
  <th width="80">id</th>
  <th width="120">name</th>
  <th width="120">department</th>
    <th width="120">country</th>
  <th width="60">Edit</th>
  <th width="60">Delete</th>
</tr>
<c:forEach items="${listOfStudents}" var="student">
  <tr>
   <td>${student.id}</td>
   <td>${student.name}</td>
   <td>${student.department}</td>
   <td>${student.country}</td>
   <td><a href="<c:url value='/updateStudent/${student.id}' />" >Edit</a></td>
   <td><a href="<c:url value='/deleteStudent/${student.id}' />" >Delete</a></td>
  </tr>
</c:forEach>
</table>
</c:if>
</body>
</html>