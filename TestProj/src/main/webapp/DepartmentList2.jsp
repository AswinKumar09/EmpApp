
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.ibm.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp" %>
<c:import url="header.jsp" ></c:import>



<div class="container">
 <h2>Department List</h2>
             
  <table class="table table-striped">
 
      <tr>
        <th>Dept Id</th>
        <th>Dept Name</th>
      </tr>
 
   <%-- <c:forEach items="${depts}" var="dpt">
     <% List<Department> depts= (List<Department>)request.getAttribute("depts");
    for(Department d :depts){
    %>
     <tr>
     <td><%=d.getDeptId() %></td>
     <td><%=d.getDeptName() %></td>
    </tr>
    </c:forEach>
    <%
    }
    %> --%>
    
    <c:forEach items="${depts}" var="dpt">
     <tr>
     <td>${dpt.deptId}</td>
     <td>${dpt.deptName}</td>
    </tr>
    </c:forEach>
  </table>
</div>

</body>
</html>