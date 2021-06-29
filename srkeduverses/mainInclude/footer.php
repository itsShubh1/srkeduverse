<!-- Start Footer -->
<footer class="container-fluid bg-dark text-center p-2">
  <small class="text-white">Copyright &copy; 2019 || Designed By Shubham @IamSRKShubh ||
    <a href="#login" data-toggle="modal" data-target="#adminLoginModalCenter">Admin Login </a></small>
</footer>
<!-- end footer -->

<!-- student registeration form -->




<div class="modal fade" id="StuRegModalCenter" tabindex="-1" role="dialog" aria-labelledby="StuRegModalCenterLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="text-center text-primary">Student Registeration Form</h3>
        <button type="button" class="close" data-dismiss="modal"> &times; </button>
      </div>
      <div class="modal-body">
        <!-- start student registration form -->
        <?php include('studentRegistration.php'); ?>
        <!-- end student registration form -->
      </div>
      <div class="modal-footer">
        <span id="successMsg"></span>
        <button type="button" class="btn btn-primary" onclick="addStu()" id="signup">Sign Up</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close
        </button>
      </div>

    </div>

  </div>
</div>
</div>
<!-- end student registeration modal -->

<!-- student start login modal-->



<div class="modal fade" id="StuLoginModalCenter" tabindex="-1" role="dialog" aria-labelledby="StuLoginModalCenterLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="text-center text-primary">Student Login</h3>
        <button type="button" class="close" data-dismiss="modal"> &times; </button>
      </div>
      <div class="modal-body">
        <form id="stuLoginForm">

          <div class="form-group">
            <i class="fas fa-envelope"></i><label for="stuLogemail" class="pl-2 font-weight-bold">Email address</label>
            <input type="email" class="form-control" placeholder="Enter Your Email id" name="stuLogemail" id="stuLogemail" aria-describedby="emailHelp">
            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
          </div>
          <div class="form-group">
            <i class="fas fa-key"></i><label for="stuLogpass" class="pl-2 font-weight-bold">Password</label>
            <input type="password" placeholder="Enter your Password" class="form-control" name="stuLogpass" id="stuLogpass">
          </div>


        </form>
      </div>
      <div class="modal-footer">
        <small id="statusLogMsg"></small>
        <button type="button" class="btn btn-primary" id="stuLoginBtn" onclick="checkStuLogin()">Login</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel
        </button>
      </div>

    </div>

  </div>
</div>
</div>
<!-- end student login modal -->


<!-- admin login model start-->




<div class="modal fade" id="adminLoginModalCenter" tabindex="-1" role="dialog" aria-labelledby="StuLoginModalCenterLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="text-center text-primary">Admin Login</h3>
        <button type="button" class="close" data-dismiss="modal"> &times; </button>
      </div>
      <div class="modal-body">
        <form id="adminLoginForm">
          <!-- start admin login form -->
          <div class="form-group">
            <i class="fas fa-envelope"></i><label for="stuLogemail" class="pl-2 font-weight-bold">Email address</label>
            <input type="email" class="form-control" placeholder="Enter Your Email id" name="adminLogemail" id="adminLogemail" aria-describedby="emailHelp">
            <div id="emailHelp" class="form-text">.</div>
          </div>
          <div class="form-group">
            <i class="fas fa-key"></i><label for="adminLogpass" class="pl-2 font-weight-bold">Password</label>
            <input type="password" placeholder="Enter your Password" class="form-control" name="adminLogpass" id="adminLogpass">
          </div>


        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="adminLoginBtn" onclick="checkAdminLogin()">Login</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel
        </button>
      </div>

    </div>

  </div>
</div>
</div>



<!-- end admin login model -->

<!-- Jquery and Boostrap JavaScript -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/popper.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<!-- Font Awesome JS -->
<script type="text/javascript" src="js/all.min.js"></script>
<!-- Student Testimonial Owl Slider JS  -->
<script type="text/javascript" src="js/owl.min.js"></script>
<script type="text/javascript" src="js/testyslider.js"></script>

<!-- student ajax call js -->

<script type="text/javascript" src="js/ajaxrequest.js"></script>

<!-- admin ajax call js -->

<script type="text/javascript" src="js/adminajaxrequest.js"></script>



</body>

</html>