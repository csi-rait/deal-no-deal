<?php 

Class game_management extends CI_Model{
    public function fillcases($id,$data){
        $table_name = 'ground'.$id;
        for($i=0; $i<26; $i++){
            $entry['case'.($i+1)] = $data['cases'][$i];
        }
        $entry['remain'] = $data['remain'];
        $entry['round'] = $data['round'];
        $entry['kept'] = $data['kept'];
        $entry['active'] = $data['active'];

        $this->db->where('uid',1);
        if($this->db->update($table_name,$entry)){
            return true;
        }else{
            return $this->db->error();
        }
    }

    public function keptcase($id,$case_no){
        $table_name = 'ground'.$id;
        $this->db->set('kept',$case_no);
        $this->db->where('uid',1);
        if($this->db->update($table_name)){
            return true;
        }else{
            return $this->db->error();
        }


    }
    public function reset_all(){
        for($i=0; $i<10; $i++){
            $table_name = 'ground'.($i+1);
           // $entry['remain'] = '6';
            $entry['active'] = 0;
            $entry['final_amount'] = 0;
            $entry['player'] = 'Not Assigned';
            $this->db->where('uid',1);
            $this->db->update($table_name,$entry);
        }
    }
    public function get_player_list(){
        
        for($i=1;$i<=10;$i++){
            $data['ground'.$i] = $this->get_data($i);
        }
        return $data;
    }
    public function get_leaderboard(){
        $a = array();
        for($i=1;$i<=10;$i++){
            $data['ground'.$i] = $this->get_data($i);
        }
        foreach($data as $d){
            if($d['player']!='Not Assigned'){
                array_push($a,$d);
            }
        }
        for($i=0;$i<count($a);$i++){
            for($j=0;$j<count($a)-$i-1;$j++){
                if($a[$j+1]['final_amount']>$a[$j]['final_amount']){
                    $temp = $a[$j+1];
                    $a[$j+1] = $a[$j];
                    $a[$j] = $temp;
                }
            }
        }
        return $a;
    }
    public function amount_of_case($id,$case_no){
        $table_name = 'ground'.$id;
        $case_name = 'case'.$case_no;
        $data = $this->get_data($id);
        //echo $case_no;
        $value = $data[$case_name];
        return $value;
    }
    public function closedeal($id,$amount){
        $table_name = 'ground'.$id;
        $this->db->set('active',0);
        //$this->db->set('player','Not Assigned');

        $this->db->set('final_amount',$amount);
        $this->db->where('uid',1);
        if($this->db->update($table_name)){
            return json_encode(array('amount'=>$amount,'success'=>'success')); 
        }else{
            return $this->db->error();
        }
    }
    public function getbankeroffer($id){
        $table_name = 'ground'.$id;
        $data = $this->get_data($id);
        $array = array();
        for($i=0;$i<26;$i++){
            if($data['case'.($i+1)]){
            array_push($array,$data['case'.($i+1)]);
            }
        }
        $sum = array_sum($array);
        $avg = $sum /count($array);
        $avg = round(($avg),0);
        $this->db->set('final_amount',$avg);
        $this->db->where('uid',1);
        $this->db->update($table_name);
        return $avg;
    }
    public function get_data($id){
        $table_name = 'ground'.$id;
        return $this->db->get($table_name)->row_array();
    }

    public function selectcase($id,$case_no){
        $table_name = 'ground'.$id;
        $case_name = 'case'.$case_no;
        $data = $this->get_data($id);
        //echo $case_no;
        $value = $data[$case_name];
        $remain = $data['remain'];
        $this->db->set($case_name,0);
        $this->db->where('uid',1);
        if($this->db->update($table_name)){
            $this->db->set('remain',$remain-1);
            $this->db->where('uid',1);
            if($this->db->update($table_name)){
                return $value;
            }
        }else{
            return 'There was an error selecting the case!';
        }
    }
    public function roundincrement($id){
        $table_name = 'ground'.$id;
        //return $table_name;
        $data = $this->get_data($id);
        $round = $data['round'];
        $this->db->set('round',$round+1);
        $this->db->set('remain',6);
        $this->db->where('uid',1);
        if($this->db->update($table_name)){
            if($round+1 == 4){
                $this->db->set('remain',4);
                $this->db->where('uid',1);
                return $this->db->update($table_name);
            }
            if($round+1 == 5){
                $this->db->set('remain',2);
                $this->db->where('uid',1);
                return $this->db->update($table_name);
            }
            if($round+1 == 6){
                $this->db->set('remain',0);
                $this->db->where('uid',1);
                return $this->db->update($table_name);
            }
            return true;
        }else{
            return $this->db->error();
        }
    }
}

?>