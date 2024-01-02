
    <table class="table table-hover align-middle" id="table-container">
        <thead>
            <tr>
                 <th>First Name</th>
                 <th>Last Name</th>
                 <th>Company</th>
                 <th>Email</th>
                 <th>Phone</th>
                 <th>Edit</th>
                 <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <!-- Your table content here -->
                <c:forEach items="${contactList}" var="contact">
                        <tr>
                            <td>${contact.firstName}</td>
                            <td>${contact.lastName}</td>
                            <td>${contact.company}</td>
                            <td>${contact.email}</td>
                            <td>${contact.phoneNumber}</td>
                            <td>
                                   <a class="btn fa fa-edit border" id="update"
                                       data-toggle="modal" data-target="#updateContact" onclick="handleOnClickEdit('${contact.id}', '${contact.firstName}', '${contact.lastName}', '${contact.company}', '${contact.email}', '${contact.phoneNumber}')"></a>
                            </td>
                            <td>
                              <a class="btn fa fa-trash border" id="delete"
                                  href="/contacts/delete/${contact.id}"></a>
                            </td>
                        </tr>
                    </c:forEach>
        </tbody>
    </table>

