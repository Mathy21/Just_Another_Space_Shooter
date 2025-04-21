// Movement
spd = 4;
hspd = 0;
vspd = 0;
dir = 90;
// State Machine
enum BULLET_STATE{
    MOVING,
    DESTROIED
};
state = BULLET_STATE.MOVING;
state_array[BULLET_STATE.MOVING] = bullet_moving_state;
state_array[BULLET_STATE.DESTROIED] = bullet_destroied_state;




// Functions
delete_outside_room = function(){
    if(x < 0 || x > room_width || y < 0 || y > room_height){
        instance_destroy();
    }
}