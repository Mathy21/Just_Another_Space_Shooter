// Movement
spd = 0;
hspd = 0;
vspd = 0;

// Main
life = 0;

// State Machine
enum PLAYER_STATE{
    IDLE,
    MOVING,
    SHOOTING
}
state = PLAYER_STATE.IDLE,
state_array[PLAYER_STATE.IDLE] = player_idle_state;
state_array[PLAYER_STATE.MOVING] = player_moving_state;
state_array[PLAYER_STATE.SHOOTING] = player_shooting_state;

