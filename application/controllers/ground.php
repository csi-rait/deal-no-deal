<?php

//session_start(); //we need to start session in order to access it through CI

Class ground extends CI_Controller {
    public function __construct() {
        parent::__construct();
        
        // Load form helper library
     //   $this->load->helper('form');
        
        // Load form validation library
      //  $this->load->library('form_validation');
        
        // Load session library
        $this->load->library('session');
        
        // Load database
    }

    // Show login page
   
   public function player($id){
    $data['id'] = $id;
    $this->load->view('templates/header');
    $this->load->view('pages/ground',$data);
    $this->load->view('templates/footer');
}
    
   
}

?>