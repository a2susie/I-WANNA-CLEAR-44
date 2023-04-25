/// @description Horizontal movement
if (!instance_exists(objPlayer)) exit;
//Find Player to push
player = instance_place(x, y, objPlayer);

//Movement
with (player){
    var t_BhSpd = 0;
    var t_BhSide = 0; //-1 = left, 1 = right
    if (xprevious < other.bbox_lPrevious + (other.bbox_rPrevious - other.bbox_lPrevious)/2){//get bbox_left difference
        t_BhSpd = other.bbox_left - other.bbox_lPrevious;
        t_BhSide = -1;
    }else{ //get bbox_right difference
        t_BhSpd = other.bbox_right - other.bbox_rPrevious;
        t_BhSide = 1;
    }
    if (!place_meeting(x - PhSpd + ceil(t_BhSpd) + t_BhSide, y, other)){
        if (t_BhSide == -1){
            hPush += (other.bbox_left - 6) - x;
            x = other.bbox_left - 6;
        }else{
            hPush += (other.bbox_right + 6) - x;
            x = other.bbox_right + 6; //5 + 1 since bbox_right is one pixel off
        }
        
        //Fix for very specific glitch which occurs when the player walks off a block into a Better Block, and is then pushed out by said Better Block
        if (place_meeting(x, y, objBlock) && !place_meeting(x, y-gravity, objBlock)) y -= gravity;
    }
}

