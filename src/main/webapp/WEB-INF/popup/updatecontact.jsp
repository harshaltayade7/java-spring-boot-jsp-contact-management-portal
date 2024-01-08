 <div class="modal" id="updateContact">
         <div class="modal-dialog">
             <div class="modal-content">
                 <!-- Modal Header -->
                 <div class="modal-header">
                     <h4 class="modal-title font-weight-bold">Update Contact</h4>
                 </div>
                 <!-- Modal Body -->
                 <div class="modal-body">
                     <!-- Input fields -->
                     <form  id="updateForm" action="/contacts/update/${contact.id}" method="post">
                         <div class="form-group">
                             <label for="firstName-update">First Name:</label>
                             <input type="text" class="form-control" id="firstName-update" name="firstName">
                         </div>
                         <div class="form-group">
                             <label for="lastName-update">Last Name:</label>
                             <input type="text" class="form-control" id="lastName-update" name="lastName">
                         </div>
                         <div class="form-group">
                             <label for="company-update">Company:</label>
                             <input type="text" class="form-control" id="company-update" name="company">
                         </div>
                         <div class="form-group">
                             <label for="email-update">Email:</label>
                             <input type="email" class="form-control" id="email-update" name="email">
                         </div>
                         <div class="form-group">
                             <label for="phoneNumber-update">Phone Number:</label>
                             <input type="text" class="form-control" id="phoneNumber-update" name="phoneNumber">
                         </div>
                         <div class="form-group modal-footer">
                              <input type="submit" class="btn btn-primary" value="Save Changes"/>
                              <input type="button" class="btn btn-secondary" data-dismiss="modal" value="Close" />
                         </div>
                     </form>
                 </div>
             </div>
         </div>
     </div>