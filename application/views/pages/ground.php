<?php 

if (!isset($this->session->userdata['logged_in'])) {
    redirect('/login');
}
?>
<div class="container text-center" id="cases_container">

</div>

<div class="container text-center" id="available_container">

</div>
<script>
    document.onreadystatechange = function(){
        reload_costs(<?=$id?>);
        reload_cases(<?=$id?>);
    }
</script>

