// Main
life = 0;

// Movement
spd = 0;
hspd = 0;
vspd = 0;
dir = 0;

// State Machine
enum ENEMY_STATE_MACHINE{
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