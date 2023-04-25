/// @description Vertical movement
if (!instance_exists(objPlayer)) exit;

//Find Player to push
player = instance_place(x, y, objPlayer);

//Movement
with (player){ //Move with the block
    var t_BvSpd = 0;
    var t_BvSide = 0; //-1 = left, 1 = right
    if (yprevious - 2 < other.bbox_tPrevious + (other.bbox_bPrevious - other.bbox_tPrevious)/2){//get bbox_top difference
        t_BvSpd = other.bbox_top - other.bbox_tPrevious;
        t_BvSide = -1;
    }else{ //get bbox_bottom difference
        t_BvSpd = other.bbox_bottom - other.bbox_bPrevious;
        t_BvSide = 1;
    }
    if (!place_meeting(x, y - PvSpd + t_BvSpd + t_BvSide, other)){
        if (t_BvSide == -1){
            if (global.grav == 1){
                y = other.bbox_top - 9;
                vspeed = 0; //stand
                other.wasCarrying = true;
            }else{
                y = other.bbox_top - 13;
                vspeed = min(0, t_BvSpd, vspeed); //bonk
            }
        }else{ //+1 to account for bbox_bottom being offset by 1 pixel
            if (global.grav == 1){
                y = other.bbox_bottom + 13;
                vspeed = max(0, t_BvSpd, vspeed); //bonk
            }else{
                y = other.bbox_bottom + 9; 
                vspeed = 0; //stand
                other.wasCarrying = true;
            }
        }
        //Get pushed horizontally if the player is pushed into a Better Block that would have pushed the player out if vertical movement was handled first
        if (place_meeting(x, y, objBetterBlock)){
            with (objBetterBlock){
                if (place_meeting(x, y, other)) event_user(0);
            }
        }
    }
}

