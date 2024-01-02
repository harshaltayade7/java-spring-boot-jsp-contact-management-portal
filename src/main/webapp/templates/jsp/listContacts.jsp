<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/templates/includes/loadstatic.jsp" %>
<title>Contact Management</title>
</head>
<body>
    <div class="container mt-2">
      <h1 class="text-danger">Contact Management</h1>
      <div class="text-end mb-1 m-0 mw-100 btn-wrapper">
        <button class="btn btn-primary" data-toggle="modal" data-target="#addContact">
          Add New Contact
        </button>
        <button style={{ marginLeft: "4px" }} class="btn btn-danger" onclick="logout()">
          Logout
        </button>
      </div>
     <div>
     <%@ include file="/templates/table/contacttable.jsp" %>
     <%@ include file="/templates/popup/addcontact.jsp" %>
     <%@ include file="/templates/popup/updatecontact.jsp" %>
 </div>
</body>
</html>
