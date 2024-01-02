 <div class="modal" id="addContact">
         <div class="modal-dialog">
             <div class="modal-content">
                 <!-- Modal Header -->
                 <div class="modal-header">
                     <h4 class="modal-title font-weight-bold">Add Contact</h4>
                </div>
                 <!-- Modal Body -->
                 <div class="modal-body">
                     <!-- Input fields -->
                     <form  id="addForm" action="/contacts/add" method="post">
                         <div class="form-group">
                             <label for="firstName">First Name:</label>
                             <input type="text" class="form-control" id="firstName" name="firstName">
                         </div>
                         <div class="form-group">
                             <label for="lastName">Last Name:</label>
                             <input type="text" class="form-control" id="lastName" name="lastName">
                         </div>
                         <div class="form-group">
                             <label for="company">Company:</label>
                             <input type="text" class="form-control" id="company" name="company">
                         </div>
                         <div class="form-group">
                             <label for="email">Email:</label>
                             <input type="email" class="form-control" id="email" name="email">
                         </div>
                         <div class="form-group">
                             <label for="phoneNumber">Phone Number:</label>
                             <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required>
                         </div>
                         <div class="form-group modal-footer">
                              <input type="submit" class="btn btn-primary" value="Update Changes"/>
                              <input type="button" class="btn btn-secondary" data-dismiss="modal" value="Close" />
                         </div>
                     </form>
                 </div>
             </div>
         </div>
     </div>