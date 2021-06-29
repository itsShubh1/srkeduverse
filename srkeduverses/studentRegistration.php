<!-- start student registration form -->
<form id="stuRegForm">
    <div class="form-group">
        <i class="fas fa-user"></i><label for="stuname" class="pl-2 font-weight-bold">Name</label><small id="statusMsg1"></small><input type="text" class="form-control" placeholder="Enter Your Shubh Name" name="stuname" id="stuname">

    </div>
    <div class="form-group">
        <i class="fas fa-envelope"></i><label for="stuemail" class="pl-2 font-weight-bold">Email address</label><small id="statusMsg2"></small>
        <input type="email" class="form-control" placeholder="Enter Your Email id" name="stuemail" id="stuemail" aria-describedby="emailHelp">
        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
    </div>
    <div class="form-group">
        <i class="fas fa-key"></i><label for="stupass" class="pl-2 font-weight-bold">Password</label><small id="statusMsg3"></small>
        <input type="password" placeholder="Enter Your New Password" class="form-control" id="stupass">
    </div>


</form>