<?php 

if (!isset($this->session->userdata['logged_in'])) {
    redirect('/login');
}
?>
<?php 
$players = $this->game_management->get_player_list();

?>

<div class="container text-center" id="main_container">
    <h1 >Select player</h1>

    <?php $i=0;$j=0; foreach($players as $player){
        $j++;
        if($i%5 == 0){
            
             ?>
                 <div class="row m-t-20">
        <?php }
         if($player['active']){
            $i++;
        ?>
            <a href="<?=base_url()?>ground/player/<?=$j?>" class="btn btn-lg btn-default"><?=$player['player']?></a>
        <?php }if($i%5 == 0){ ?>

            </div>        <?php } ?>
 
    <?php  } ?>
</div>