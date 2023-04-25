/// @description Platform behavior
if (!instance_exists(objPlayer)) exit;
player = instance_place(x, y-2*global.grav, objPlayer);
if (wasCarrying && player == noone) player = instance_place(xprevious, yprevious-2*global.grav, objPlayer); //prev. frame

if (player == noone && global.grav == 1 && wasCarrying){
    player = instance_place(xprevious, y-2*global.grav - max(bbox_top - bbox_tPrevious, 0), objPlayer);
}
if (player == noone && global.grav == -1 && wasCarrying){
    player = instance_place(xprevious, y-2*global.grav - min(bbox_bottom - bbox_bPrevious, 0), objPlayer); //prev. frame position and scale
}

//Inside the block (In normal gameplay, this would kill the player regardless)
if (player != noone && place_meeting(x, y, player))
    player = noone;

//Interactions
if (player != noone && (!instance_exists(player.riding) || player.riding = id)){
    with (player){
        riding = other;
        djump = 1;
        onPlatform = true;
        
        //Vertical Movement
        if (global.grav == 1){
            if (vspeed > 0) vspeed = 0;
            platCheck = (other.bbox_top - 9) - y;
            for(platCounter=1; platCounter<=ceil(abs(platCheck)); platCounter++){
                if (platCounter > abs(platCheck)) //for non-integer values
                    platCounter = abs(platCheck);
                if (place_meeting(x, y+platCounter*sign(platCheck), objBlock)){
                    with (objBlock){
                        if (scrIsBlock() && place_meeting(x, y-other.platCounter*sign(other.platCheck), other)){
                            other.platCheck = (other.platCounter-1)*sign(other.platCheck);
                            other.platCounter = ceil(abs(other.platCheck)); //end the for loop
                            if (other.platCheck > 0){
                                other.onPlatform = (object_is_ancestor(object_index, objPlatform) || object_index == objPlatform);
                            }
                            break;
                        }
                    }
                }
            }
            y += platCheck;
        }else if (global.grav == -1){ //we add 9 pixels instead of 8 to make up for the 1 pixel offset bbox_bottom has
            if (vspeed < 0) vspeed = 0;
            platCheck = (other.bbox_bottom + 9) - y;
            for(platCounter=1; platCounter<=ceil(abs(platCheck)); platCounter++){
                if (platCounter > abs(platCheck)) //for non-integer values
                    platCounter = abs(platCheck);
                if (place_meeting(x, y+platCounter*sign(platCheck), objBlock)){
                    with (objBlock){
                        if (scrIsBlock() && place_meeting(x, y-other.platCounter*sign(other.platCheck), other)){
                            other.platCheck = (other.platCounter-1)*sign(other.platCheck);
                            other.platCounter = ceil(abs(other.platCheck));
                            if (other.platCheck < 0){ //avoid being pulled into a block
                                other.onPlatform = (object_is_ancestor(object_index, objPlatform) || object_index == objPlatform);
                            }
                            break;
                        }
                    }
                }
            }
            y += platCheck;
        }
        
        //Horizontal Movement
        if (other.carry){
            platCheck = riding.x - riding.xprevious;
            platCheck -= hPush;
            if (place_meeting(x + platCheck, y + global.grav, riding) || sign(platCheck) == sign(PhSpd)){ //prevents the player from falling off the edge of a moving platfom when they should still be on it
                for(platCounter=1; platCounter<=ceil(abs(platCheck)); platCounter++){
                    if (platCounter > abs(platCheck)) //for non-integer values
                        platCounter = abs(platCheck);
                    if (place_meeting(x+platCounter*sign(platCheck), y, objBlock)){
                        with (objBlock){
                            if (scrIsBlock() && place_meeting(x-other.platCounter*sign(other.platCheck), y, other)){
                                other.platCheck = (other.platCounter-1)*sign(other.platCheck);
                                other.platCounter = ceil(abs(other.platCheck));
                                break;
                            }
                        }
                    }
                }
                x += platCheck;
            }
        }
    }
}

wasCarrying = (player != noone);

