function player_base_state(){
    hspd = 0;
    vspd = 0;
    shoot_cooldown = 0;
    state = PLAYER_STATE.IDLE;
}

function player_idle_state(){
    hspd = 0;
    vspd = 0;
    if(moving){
        state = PLAYER_STATE.MOVING;
    }
    if(shooting){
        state = PLAYER_STATE.SHOOTING;
    }
}

function player_moving_state(){
    var _move = move_function();
    if(!_move){
        state = PLAYER_STATE.BASE;
    }
    if(shooting){
        state = PLAYER_STATE.SHOOTING;
    }
}

function player_shooting_state(){
    var _move = move_function();
    if(!_move && !shoot){
        state = PLAYER_STATE.BASE;
    }
    if(!_move){
        hspd = 0;
        vspd = 0;
    }
    shoot_function();
    if(!shoot){
      state = PLAYER_STATE.BASE;
    }
}