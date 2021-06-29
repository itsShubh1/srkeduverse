<?php
  include('./dbConnection.php');
  // Header Include from mainInclude 
  include('./mainInclude/header.php'); 
    
	$ORDER_ID = "";
	
	if (isset($_POST["ORDER_ID"]) && $_POST["ORDER_ID"] != "") {
		$ORDER_ID = $_POST["ORDER_ID"];
	}

?>  
   <div class="container-fluid bg-dark pl-0 pr-0"> <!-- Start Course Page Banner -->
     <div class="row">
       <img src="./image/srkk.jpg" alt="courses" style="height:481px; width:100%; object-fit:cover; box-shadow:10px;"/>
     </div> 
   </div> <!-- End Course Page Banner -->
   <div class="container">
   
   <div class="col-sm text-center text-primary ">
      <br></br>
        <h1> <i class="far fa-smile-beam fa-spin mr-4"></i> Payment Status</h1>
   </div>
     <form method="post" action="">
     <div class="form-group row">
        <label class="offset-sm-1 col-form-label font-weight-bold"> ✔ 𝒀𝒐𝒖𝒓 𝑶𝒓𝒅𝒆𝒓 𝑰𝑫: </label>
        <div>
          <input class="form-control mx-3" style="width:27%" id="ORDER_ID" tabindex="1" maxlength="20" size="20" name="ORDER_ID" autocomplete="off" value="<?php echo $ORDER_ID ?>">
        </div>
        <div>
          <br> </br>
          <input class="btn btn-primary mx-4" value="View" type="submit"	onclick="">
        </div>
      </div>
     </form>
    </div>
    <div class="container">
    <?php
      if (isset($_POST['ORDER_ID']))
      { 
        $sql = "SELECT order_id FROM courseorder";
        $result = $conn->query($sql);
        while($row = $result->fetch_assoc()){
          if($_POST["ORDER_ID"] == $row["order_id"]){ ?>
            <div class="row justify-content-center">
              <div class="col-auto">
                <h2 class="text-center">Payment Receipt</h2>
                <table class="table table-bordered">
                  <tbody>
                      <tr >
                        <td><label>Order ID</label></td>
                        <td><?php if (isset($row["order_id"])) echo $row["order_id"] ?></td>
                      </tr>
                      <tr >
                        <td><label>Status</label></td>
                        <td>Success</td>
                      </tr>
                      <tr>
                        <td></td>
                          <td><button class="btn btn-primary" onclick="javascript:window.print();">Print Receipt</button></td>
                      </tr>
                    </tbody>
                  </table>      
                </div>
              </div>
      <?php
      } } } ?>

    </div>  
<div class="mt-5">
<?php 
  // Contact Us
  include('./contact.php'); 
?> 
</div>

<?php 
  // Footer Include from mainInclude 
  include('./mainInclude/footer.php'); 
?>  
