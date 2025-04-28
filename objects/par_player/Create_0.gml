// Movement
spd = 2;
hspd = 0;
vspd = 0;

// Main
life = 0;
inputs = {
  up: vk_up,
  sec_up: ord("w"),
  left: vk_left,
  sec_left: ord("A"),
  down: vk_down,
  sec_down: ord("S"),
  right: vk_right,
  sec_right: ord("D"),
  shoot: vk_space  
};
up = 0;
left = 0;
down = 0;
right = 0;
shoot = 0;
moving = 0;
shooting = 0;

// Shoot
shoot_cooldown_v = 10;
shoot_cooldown = 0;

// State Machine
enum PLAYER_STATE{
    BASE,
    IDLE,
    MOVING,
    SHOOTING
}
state = PLAYER_STATE.BASE;
state_array[PLAYER_STATE.BASE] = player_base_state;
state_array[PLAYER_STATE.IDLE] = player_idle_state;
state_array[PLAYER_STATE.MOVING] = player_moving_state;
state_array[PLAYER_STATE.SHOOTING] = player_shooting_state;

// Main Functions

set_inputs = function(_up,_left,_down,_right,_shoot){
    up = keyboard_check(_up);
    left = keyboard_check(_left);
    down = keyboard_check(_down);
    right = keyboard_check(_right);
    shoot = keyboard_check(_shoot);
    moving = up || left || down || right ? true : false;
    shooting = shoot ? true : false;
}

move_function = function(){
    if(moving){
        var _dir = point_direction(0,0,(right-left),(down-up));
        hspd = lengthdir_x(spd,_dir);
        vspd = lengthdir_y(spd,_dir);
        return true;
    }
        else{
            return false;
        }
}

shoot_function = function(){
    if(shoot_cooldown > 0){
        shoot_cooldown --;
    }
    if(shoot_cooldown <= 0){
        instance_create_layer(x,y,"Bullets",par_player_bullet);
        shoot_cooldown = shoot_cooldown_v;
    }
}
