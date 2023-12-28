function createContact() {
        var data = {
            "firstName": $("#firstName").val(),
            "lastName": $("#lastName").val(),
            "company": $("#company").val(),
            "email": $("#email").val(),
            "phoneNumber": $("#phoneNumber").val()
        };
        $.ajax({
            type: "POST",
            url: "/contacts",
            data: JSON.stringify(data),
            contentType: "application/json",
            success: function (response) {
                $('#myModal').modal('hide');
                 location.reload();
            },
            error: function (error) {
                console.error("Error while saving data:", error);
            }
        });
    }

    function updateContact() {
    }

    function deleteContact(contactId) {
            $.ajax({
                type: "DELETE",
                url: "/delete-contact/"+contactId,
                success: function (response) {
                     location.reload();
                },
                error: function (error) {
                    console.error("Error while saving data:", error);
                }
            });
//        windows.location.href = "/contact/"+contactId;
    }

