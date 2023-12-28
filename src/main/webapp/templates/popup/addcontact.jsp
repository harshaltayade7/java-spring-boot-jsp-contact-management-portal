 <div class="modal" id="myModal">
         <div class="modal-dialog">
             <div class="modal-content">
                 <!-- Modal Header -->
                 <div class="modal-header">
                     <h4 class="modal-title">Edit Details</h4>
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                 </div>
                 <!-- Modal Body -->
                 <div class="modal-body">
                     <!-- Input fields -->
                     <form>
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
                             <input type="text" class="form-control" id="phoneNumber" name="phoneNumber">
                         </div>
                     </form>
                 </div>
                 <!-- Modal Footer -->
                 <div class="modal-footer">
                     <!-- Save Changes button -->
                     <button type="button" class="btn btn-primary" onclick="createContact()">Save Changes</button>
                     <!-- Close button -->
                     <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                 </div>
             </div>
         </div>
     </div>