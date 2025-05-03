function player_bullet_moving_state(){
    var _dir = dir;
    hspd = lengthdir_x(spd,_dir);
    vspd = lengthdir_y(spd,_dir);
    for(var i=0; i<array_length(collision) && array_length(collision) > 0; i++){
        if(place_meeting(x,y,collision[i])){
            instance = collision[i];
            state = PLAYER_BULLET_STATE.DAMAGE; 
        }
    }
}

function player_bullet_damage_state(){
    var _col = instance_place(x,y,instance);
    var _damage = damage;
    with(_col){
        _col.damage_system(_damage);
    }
    state = PLAYER_BULLET_STATE.DESTROIED;
}

function player_bullet_destroied_state(){
    instance_destroy();
}