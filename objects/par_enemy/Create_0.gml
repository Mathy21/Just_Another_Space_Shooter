// Main
life = 10;

// Movement
spd = 2;
hspd = 0;
vspd = 0;
dir = 270;
can_move = true;

// Shoot
can_shoot = true;
shoot_cooldown_v = 60;
shoot_cooldown = 0;

// State Machine
enum ENEMY_STATE{
    IDLE,
    MOVE,
    SHOOTING,
    DEAD
};
state = ENEMY_STATE.IDLE;
state_array[ENEMY_STATE.IDLE] = enemy_idle_state;
state_array[ENEMY_STATE.MOVE] = enemy_move_state;
state_array[ENEMY_STATE.SHOOTING] = enemy_shooting_state;
state_array[ENEMY_STATE.DEAD] = enemy_dead_state;

// Main Functions
movement_function = function(_direction,_speed){
    hspd = lengthdir_x(_speed,_direction);
    vspd = lengthdir_y(_speed,_direction); 
}

shoot_function = function(){
    if(shoot_cooldown > 0){
        shoot_cooldown--;
    }
    if(shoot_cooldown <= 0){
        instance_create_layer(x,y,"Bullets",par_enemy_bullet);
        shoot_cooldown = shoot_cooldown_v;
    }
}
delete_outside_room = function(){
    if(x < 0 || x > room_width || y < 0 || y > room_height){
        instance_destroy();
    }
}

// Damage Function
damage_system = function(_value){
    if(_value != undefined){
        life -= _value;
    }
        else{
            life--;
        }
    if(life <= 0){
        instance_destroy();
    }
}