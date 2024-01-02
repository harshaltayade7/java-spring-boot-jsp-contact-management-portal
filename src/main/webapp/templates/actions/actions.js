//function createContact() {
//        var data = {
//            "firstName": $("#firstName").val(),
//            "lastName": $("#lastName").val(),
//            "company": $("#company").val(),
//            "email": $("#email").val(),
//            "phoneNumber": $("#phoneNumber").val()
//        };
//        $.ajax({
//            type: "POST",
//            url: "/contacts",
//            data: JSON.stringify(data),
//            contentType: "application/json",
//            success: function (response) {
//                $('#myModal').modal('hide');
//                 location.reload();
//            },
//            error: function (error) {
//                console.error("Error while saving data:", error);
//            }
//        });
//    }
//
//    function updateContact() {
//    }

    function handleOnClickEdit(contactId, firstName, lastName, company, email, phoneNumber) {
      $('#updateForm').attr('action', `/contacts/update/${contactId}`);

      $('#firstName-update').val(firstName);
      $('#lastName-update').val(lastName);
      $('#company-update').val(company);
      $('#email-update').val(email);
      $('#phoneNumber-update').val(phoneNumber);
    }

      function logout() {
                window.location.href = "/logout";
      }

