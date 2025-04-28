function enemy_idle_state(){
    hspd = 0;
    vspd = 0;
    if(can_move){
        state = ENEMY_STATE.MOVE;    
    } 
    if(can_shoot){
        state = ENEMY_STATE.SHOOTING;
    }
}

function enemy_move_state(){
    movement_function(dir,spd);
    if(can_shoot){
        state = ENEMY_STATE.SHOOTING;
    }
}

function enemy_shooting_state(){
    if(can_move){
        movement_function(dir,spd);    
    }
    if(can_shoot){
        shoot_function();    
    }
    if(!can_move && !can_shoot){
        state = enemy_idle_state();
    }
        else if(!can_shoot){
            state = enemy_move_state();
        }
}

function enemy_dead_state(){
    
}