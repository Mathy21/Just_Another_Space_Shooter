function player_idle_state(){
    hspd = 0;
    vspd = 0;
    if(moving){
        state = PLAYER_STATE.MOVING;
    }
}

function player_moving_state(){
    var _move = move_function();
    if(!_move){
        state = PLAYER_STATE.IDLE;
    }
}

function player_shooting_state(){
    
}