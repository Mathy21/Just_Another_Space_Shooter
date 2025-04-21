// Movement
spd = 4;
hspd = 0;
vspd = 0;
dir = 270;
// State Machine
enum ENEMY_BULLET_STATE{
    MOVING,
    DESTROIED
};
state = ENEMY_BULLET_STATE.MOVING;
state_array[ENEMY_BULLET_STATE.MOVING] = enemy_bullet_moving_state;
state_array[ENEMY_BULLET_STATE.DESTROIED] = enemy_bullet_destroied_state;




// Functions
delete_outside_room = function(){
    if(x < 0 || x > room_width || y < 0 || y > room_height){
        instance_destroy();
    }
}