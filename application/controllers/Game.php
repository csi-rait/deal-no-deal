<?php

//session_start(); //we need to start session in order to access it through CI

Class Game extends CI_Controller {
    public function __construct() {
        parent::__construct();
        
        // Load form helper library
     //   $this->load->helper('form');
        
        // Load form validation library
      //  $this->load->library('form_validation');
        $this->load->library('session');
        
        // Load database
        $this->load->model('login_database');
        $this->load->model('game_management');
        // Load session library

    }

    public function reset(){
       // echo "<script>prompt(\"Are you sure?\")</script>";
        for($i=1; $i<=10; $i++){
            $this->fill($i);
        }
        $this->game_management->reset_all();
        redirect('/leaderboard');
        
        
    }
    public function get_leaderboard(){
        $data = $this->game_management->get_leaderboard();
        $response = '';
         $i=1; foreach($data as $d){  
            $player = $d['player'];
            $final_amount = number_format($d['final_amount']);
           $response .=" <tr>
                <th>$i</th>
                <th>
                    $player
                </th>
                <th>
                   $$final_amount
                </th>
            </tr>";
         $i++; } 
         echo $response;
    }
    public function add(){

        $name = $this->input->post('name');
        for($i=1; $i<=10; $i++){
            $data['case'.$i] = $this->game_management->get_data($i);
        }
        $i=1;
        foreach($data as $data1){
            if($data1['active'] == 0 && $data1['final_amount'] == 0 && $data1['player'] == 'Not Assigned'){
                $this->fill($i);
                $this->db->set('active',1);
                $this->db->set('player',$name);
                $this->db->where('uid',1);
                if($this->db->update('ground'.$i)){
                    
                    redirect('/play');
                }
            }
            $i++;
        }
        $data['error'] = 'All slots filled';
        $this->load->view('templates/header');
        $this->load->view('pages/add',$data);
        $this->load->view('templates/footer');

        //redirect('/leaderboard');

    }

    public function selectcasekept(){
        $id = $this->input->post('id');
        $case_no = $this->input->post('case_no');

        //$data['remain'] = 6;
        //$data['round'] = 1;
        //$data['active'] = 0;
       // $data['cases'] = array(50,75,100,200,300,500,1000,2000,2500,5000,7500,10000,20000,25000,50000,60000,75000,100000,200000,250000,300000,500000,600000,700000,750000,1000000);
        //shuffle($data['cases']);
        //$random = rand(1,26);
        //$data['kept'] = 0;
        if($this->game_management->keptcase($id,$case_no)){
            echo 'success';
        }else{
            echo 'error';
        }
    }

    public function fill($id){
        $data['remain'] = 6;
        $data['round'] = 1;
        $data['active'] = 0;
        $data['cases'] = array(50,75,100,200,300,500,1000,2000,2500,5000,7500,10000,20000,25000,50000,60000,75000,100000,200000,250000,300000,500000,600000,700000,750000,1000000);
        shuffle($data['cases']);
        //$random = rand(1,26);
        $data['kept'] = 0;
        if($this->game_management->fillcases($id,$data)){
            echo 'success';
        }else{
            echo 'error';
        }
    }
    public function takedeal(){
        $id = $this->input->post('id');
        $data = $this->game_management->get_data($id);
        $amount = $data['final_amount']; 
        echo $this->game_management->closedeal($id,$amount);
    }

    public function selectfinal(){
        $id = $this->input->post('id');
        $case_no = $this->input->post('case_no');
        $amount = $this->game_management->amount_of_case($id,$case_no);
        echo $this->game_management->closedeal($id,$amount);
    }

    // Show login page
    public function refresh(){

        $id = $this->input->post('id');
        $data = $this->game_management->get_data($id);
        $remain = $data['remain'];
        $round = $data['round'];
        $name = $data['player'];
        $kept = $data['kept'];
        $active = $data['active'];
       //echo $remain;
        if(!$active){
            echo 'NA';
            return false;
        }
        //$remain = 0;
        if($round == 6 && $remain == 0){
            $response = '';
            for($i=0; $i<26; $i++){
                $case_no = $i+1;
                if($kept==$i+1){
                    continue;
                }
                if($data['case'.($i+1)] !=0){
                    $last = $i+1;
                }
            }
            $response .= "<h1> $name - Select final case (The case you select will be your final amount!)</h1>";
            $response .= "<br><br><h1>
            <a onclick=\"finalround($id,$last)\" style=\"font-size:40px;margin-right:40px;\" class=\"btn btn-lg btn-default\">Case $last</a>   or   <a onclick=\"finalround($id,$kept)\" class=\"btn btn-3x btn-default\" style=\"font-size:40px;margin-left:30px;\">Case $kept</a>
            </h1><br><br>";
        }else if($kept == 0 ){
            $response = '';
            $response .= "<h1> $name - Select initial case (This case will be kept with you and not discarded)</h1>";
            for($i=0; $i<26; $i++){
                $case_no = $i+1;
                $response .= "<button onclick=\"selectkeptcase($id,$case_no)\" class=\"btn btn-lg btn-default m-5\">Case  ".($i+1)."</button>";
            }

        }
        else if($remain == 0){
           // echo "x";
            $response = '';
            $response .= "<h2>$name - You have been given <button  class=\"btn btn-lg btn-default  m-5\" >Case ".$kept."</button></h2>";
            $offer = $this->game_management->getbankeroffer($id);
            $response .= "<h1>Banker's Offer : $".number_format($offer);
            $response .= "<br><br><h1>
            <a style=\"font-size:40px;margin-right:40px;\" onclick=\"take_deal($id)\" class=\"btn btn-lg btn-success\">Deal</a>   or   <a onclick=\"continue_game($id)\" class=\"btn btn-3x btn-danger\" style=\"font-size:40px;margin-left:30px;\" >No Deal</a>
            </h1><br><br>";
            //echo $response;
        }else{
        $response = '';
        if($remain == 1){
            $s = '';
        }else{
            $s = 's';
        }
        $response = "<h1>Round $round - $name </h1>
        ";
        $offer = $this->game_management->getbankeroffer($id);

        $response .= "<h2> <span class=\"pull-left\">You have been given <button  class=\"btn btn-lg btn-default  m-5\" >Case ".$kept."</button> </span> <span class=\"pull-right\"> Current Offer: $".number_format($offer)."</span> </h2><br>";
        $response .= "<div class=\"col-sm-12\"><h1 >Select $remain case$s</h1>";
        for($i=0; $i<26; $i++){
            $case_no = $i+1;
            if($kept==$i+1){
                continue;
            }
            if($data['case'.($i+1)] ==0){
                $response .= "<button onclick=\"reload_cases($id)\" class=\"btn btn-lg btn-default  m-5\ hidden\">Case ".($i+1)."</button>";
            }else{
                $response .= "<button onclick=\"select($id,$case_no)\" class=\"btn btn-lg btn-default m-5\">Case  ".($i+1)."</button>";
            }
        }
    }
        echo $response."</div>";  

    }

    public function continue_game(){
        $id = $this->input->post('id');
       // echo "x";
        if($this->game_management->roundincrement($id)){
            echo 'success';
        }
    }
    public function select(){
        $id = $this->input->post('id');
        $case_no = $this->input->post('case_no');
        echo $this->game_management->selectcase($id,$case_no);
    }
    public function costs(){
        $id = $this->input->post('id');
        $data = $this->game_management->get_data($id);
        $remain = $data['remain'];
        $round = $data['round'];
        unset($data['final_amount']);
        $response = '';
        $response = "<h1>Remaining amounts</h1>";
        $cases = array(50,75,100,200,300,500,1000,2000,2500,5000,7500,10000,20000,25000,50000,60000,75000,100000,200000,250000,300000,500000,600000,700000,750000,1000000);
        foreach($cases as $case){
            //echo $case.",";

            if(in_array($case,$data)){
                
                $response .= "<button class=\"btn btn-lg btn-success m-5\" >$".number_format($case)."</button>";
            }else{
                $response .= "<button class=\"btn btn-lg btn-danger m-5\" >$".number_format($case)."</button>";
            }
        }
        
        echo $response;
    }
    
   
}

?>