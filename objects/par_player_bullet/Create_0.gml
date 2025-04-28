// Movement
spd = 4;
hspd = 0;
vspd = 0;
dir = 90;

// Combat
collision = [par_enemy];
damage = 1;
instance =  noone;
// State Machine
enum PLAYER_BULLET_STATE{
    MOVING,
    DAMAGE,
    DESTROIED
};
state = PLAYER_BULLET_STATE.MOVING;
state_array[PLAYER_BULLET_STATE.MOVING] = player_bullet_moving_state;
state_array[PLAYER_BULLET_STATE.DAMAGE] = player_bullet_damage_state;
state_array[PLAYER_BULLET_STATE.DESTROIED] = player_bullet_destroied_state;




// Functions
delete_outside_room = function(){
    if(x < 0 || x > room_width || y < 0 || y > room_height){
        instance_destroy();
    }
}