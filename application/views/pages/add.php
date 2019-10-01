<?php 
if (!isset($this->session->userdata['logged_in'])) {
    redirect('/login');
}

?>
<div class="container text-center" id="main_container">
    
    
    <form style="font-size:30px;" action="<?=base_url()?>Game/add" method="POST" role="form">
        
        <h1>Add A Player</h1>
        <div class="form-group">
             <input name="name" type="text" id="" placeholder="Receipt No.">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <?php if(isset($error)){ ?>
        
        <div style="width:300px;font-size:20px;margin: 0 auto;margin-top:10px;" class="alert alert-danger">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong><?=$error?></strong>
            </div>
        <?php } ?>
    </form>
    
</div>