<?php 

if (!isset($this->session->userdata['logged_in'])) {
    redirect('/login');
}
?>
<?php 
    $data = $this->game_management->get_leaderboard();
    //print_r($data);
    
?>

<div class="container text-center" >
    <h1 >Leaderboard </h1>
    <table style="font-size:30px;" class="table table-bordered">
        <thead>
            <tr>
                <th>
                    Rank 
                </th>
                <th>
                    Receipt No. 
                </th>
                <th>
                    Amount 
                </th>
            </tr>
        </thead>
        <tbody id="table_container">
            
        </tbody>
    </table>
    
</div>
<script>

</script>