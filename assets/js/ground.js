function reload_cases(id) {
    //reload_costs(id);
    $.ajax({
        type: 'POST',
        url: '../../Game/refresh',
        data: {
            'id':id
        },
        success: function (resp) {
            if(resp == 'NA'){
                window.location = '../../leaderboard';
            }
            $('#cases_container').html(resp);
        }
    });
}


function get_leaderboard(){
    $.ajax({
        type: 'POST',
        url: 'Game/get_leaderboard',
        
        success: function (resp) {
            $('#table_container').html(resp);
        }
    });
}

function selectkeptcase(id,case_no){
    $.ajax({
        type: 'POST',
        url: '../../Game/selectcasekept',
        data: {
            'id':id,
            'case_no':case_no
        },
        success: function (resp) {
            reload_cases(id);

        }
    });
}

function reload_costs(id) {
    $.ajax({
        type: 'POST',
        url: '../../Game/costs',
        data: {
            'id':id
        },
        success: function (resp) {
            $('#available_container').html(resp);
        }
    });
}

function continue_game(id){
    $.ajax({
        type: 'POST',
        url: '../../Game/continue_game',
        data: {
            'id':id
        },
        success: function (resp) {
            if(resp == 'success'){
                reload_costs(id);
                reload_cases(id);
            }
        }
    });
}

function take_deal(id){
    $.ajax({
        type: 'POST',
        url: '../../Game/takedeal',
        data: {
            'id':id
        },
        success: function (resp) {
            resp = JSON.parse(resp);
            if(resp.success =='success'){
                alert('Your final amount is $' + resp.amount + ' Thank you for playing!');
                window.location = '../../leaderboard';
            }
        }
    });
}



function finalround(id,case_no){
    $.ajax({
        type: 'POST',
        url: '../../Game/selectfinal',
        data: {
            'id':id,
            'case_no':case_no
        },
        success: function (resp) {
            resp = JSON.parse(resp);
            if(resp.success =='success'){
                alert('Your final score is $' + resp.amount +'Thank you for playing!');
                window.location = '../../leaderboard';
            }
        }
    });
}

function select(id, case_no){
    $.ajax({
        type: 'POST',
        url: '../../Game/select',
        data: {
            'id':id,
            'case_no':case_no
        },
        success: function (resp) {
            reload_cases(id);
            reload_costs(id);
        }
    });
}

    //get_leaderboard();
    window.setInterval(function(){
        get_leaderboard();
    },1000);