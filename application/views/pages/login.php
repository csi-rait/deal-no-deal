<?php
//$admin = 0;
if (isset($this->session->userdata['logged_in'])) {
    redirect('/play');
}
?><div class="container text-center" id="main_container">
    
    
    <form style="font-size:30px;" action="<?=base_url()?>Auth/validate" method="POST" role="form">
        
        <h1>Login</h1>
        <div class="form-group">
             <input name="username" type="text" id="" placeholder="Username">
        </div>
        <div class="form-group">
             <input name="password" type="password" id="" placeholder="Password">
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