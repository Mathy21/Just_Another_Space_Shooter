function enemy_idle_state(){
    hspd = 0;
    vspd = 0;
        
}

function enemy_move_state(){
    var _dir = dir;
    hspd = lengthdir_x(spd,_dir);
    vspd = lengthdir_y(spd,_dir);
}

function enemy_shooting_state(){
    
}

function enemy_dead_state(){
    
}