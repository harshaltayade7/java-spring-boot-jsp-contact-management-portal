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
      <div class="text-end mb-1 m-0 mw-100">
        <button class="btn btn-primary" >
          Add New Contact
        </button>
        <button style={{ marginLeft: "4px" }} class="btn btn-danger" >
          Logout
        </button>
      </div>
     <div>
    <table class="table table-hover align-middle">
        <thead>
            <tr>
                 <th>First Name</th>
                 <th>Last Name</th>
                 <th>Company</th>
                 <th>Email</th>
                 <th>Mobile</th>
                 <th>Edit</th>
                 <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <!-- Your table content here -->
        </tbody>
    </table>
     </div>
 </div>
</body>
</html>
