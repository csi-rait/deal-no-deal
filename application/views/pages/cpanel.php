<?php 

if (!isset($this->session->userdata['logged_in']) || !$admin){
    redirect('/login');
}
?>
<div class="container text-center" id="main_container">
    <h1 >Admin dashboard</h1>
    <div class="row">
            <a href="<?=base_url()?>Game/reset/" class="btn btn-lg btn-default">Reset Rounds</a>
            <a href="<?=base_url()?>add"class="btn btn-lg btn-default">Add Players</a>
            <a href="<?=base_url()?>/leaderboard"class="btn btn-lg btn-default">View Leaderboard</a>
    </div>
    
</div>