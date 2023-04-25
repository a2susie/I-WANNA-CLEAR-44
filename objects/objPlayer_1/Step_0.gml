/// @description Ladders
ladderud = 0;

    if(scrButtonCheck(global.upButton)) == true or (scrButtonCheck(global.downButton)) == true
        {
        if ladder == false && place_meeting(x,y,objLadder) == true
            {
            ladder = true;
            djump=true
            }
        }
    if(ladder == true)
        {
        if(place_meeting(x,y,objLadder) == false)
            {ladder = false;}
        else
            {
            if(scrButtonCheck(global.upButton)) == true
                {
                y -= maxSpeed;
                gravity = 0;
                vspeed = 0;
                ladderud = 1;
                }
            if(scrButtonCheck(global.downButton)) == true
                {
                y += maxSpeed;
                gravity = 0;
                vspeed = 0;
                ladderud = 1;
                }
            if(scrButtonCheckPressed(global.jumpButton)) == true
                {
                ladderjump=true
                ladder=false
                }
            }
        }
if(ladder=false)
    {gravity = 0.4 * global.grav;}

//check left/right button presses
var L = (scrButtonCheck(global.leftButton) || (global.directionalTapFix && scrButtonCheckPressed(global.leftButton)));
var R = (scrButtonCheck(global.rightButton) || (global.directionalTapFix && scrButtonCheckPressed(global.rightButton)));

var h = 0;

if (!frozen)    //don't move if frozen
{
    if (R)
        h = 1;
    else if (L)
        h = -1;
}

var slipBlockTouching = instance_place(x,y+(1*global.grav),objSlipBlock);   //check if on a slip block

//vine checks
var notOnBlock = (place_free(x,y+(global.grav)) && !instance_exists(riding));
var onVineL = (place_meeting(x-1,y,objWalljumpL) && notOnBlock);
var onVineR = (place_meeting(x+1,y,objWalljumpR) && notOnBlock);

//ADDED: support for custom player sprites
var sprRunning = sprPlayerRunning;
var sprIdle = sprPlayerIdle;
var sprJump = sprPlayerJump;
var sprFall = sprPlayerFall;
var sprSliding = sprPlayerSliding;

if (global.flippedJumpSprites = true) and (global.grav = -1) { //ADDED: swap fall and jump sprites if legacy jump sprites is active
    var sprJump = sprPlayerFall;
    var sprFall = sprPlayerJump;
}

if (h != 0)  //player is moving
{
    if (!onVineR && !onVineL)   //make sure not currently touching a vine
    {
        xScale = h;
    }
    if ((h == -1 && !onVineR) || (h == 1 && !onVineL))
    {
        if (slipBlockTouching == noone) //not touching a slip block, move immediately at full speed
        {
            hspeed = maxSpeed * h;
        }
        else    //touching a slip block, use acceleration
        {
            hspeed += (slipBlockTouching.slip) * h;
            
            if (abs(hspeed) > maxSpeed)
                hspeed = maxSpeed * h;
        }
        
        sprite_index = sprRunning;
        image_speed = 0.5;
    }
}
else    //player is not moving
{
    if (slipBlockTouching == noone) //not touching a slip block, stop immediately
        hspeed = 0;
    else    //touching a slip block, slow down
    {
        if (hspeed > 0)
        {
            hspeed -= slipBlockTouching.slip;
            
            if (hspeed <= 0)
                hspeed = 0;
        }
        else if (hspeed < 0)
        {
            hspeed += slipBlockTouching.slip;
            
            if (hspeed >= 0)
                hspeed = 0;
        }
    }
  
    sprite_index = sprIdle;
    image_speed = 0.2;
}


if (!onPlatform)    //check if standing on a platform
{
    if((vspeed * global.grav) < -0.05) {sprite_index = sprJump;}
    else if((vspeed * global.grav) > 0.05) {sprite_index = sprFall;}
}
else
{
    if (!place_meeting(x,y+(4*global.grav),objPlatform)) and (!place_meeting(x,y+(4*global.grav),objFloatPlatform))
        {onPlatform = false;} //ADDED: also check if the player is not on a Float Platform either before setting onPlatform to false
}

var slideBlockTouching = instance_place(x,y+(global.grav),objSlideBlock);   //check if on a slide block

if (slideBlockTouching != noone)    //on a slide block, start moving with it
    hspeed += slideBlockTouching.h;

if (abs(vspeed) > maxVspeed) {vspeed = sign(vspeed)*maxVspeed;} //check if moving vertically faster than max speed

if (!frozen)    //check if frozen before doing anything
{
    if (scrButtonCheckPressed(global.shootButton))
        scrPlayerShoot();
    if (scrButtonCheckPressed(global.jumpButton))
        scrPlayerJump();
    if (scrButtonCheckReleased(global.jumpButton))
        scrPlayerVJump();
    if (scrButtonCheckPressed(global.suicideButton))
        scrKillPlayer();
}

if (global.adAlign && place_meeting(x,y+(global.grav),objBlock) && !frozen)  // A/D align
{
    if (scrButtonCheckPressed(global.alignLeftButton)) {hspeed -= 1;}
    if (scrButtonCheckPressed(global.alignRightButton)) {hspeed += 1;}
}


//walljumps

if (onVineL || onVineR)
{
    if (onVineR)
        xScale = -1;
    else
        xScale = 1;
    
    vspeed = 2 * global.grav;
    sprite_index = sprSliding;
    image_speed = 1/2;
    
    //pressed away from the vine
    if (onVineL && scrButtonCheckPressed(global.rightButton)) || (onVineR && scrButtonCheckPressed(global.leftButton))
    {
        if (scrButtonCheck(global.jumpButton))  //jumping off vine
        {
            if (onVineR)
                hspeed = -15;
            else
                hspeed = 15;
            
            vspeed = -9 * global.grav;
            audio_play_sound(sndWallJump,0,false);
            sprite_index = sprJump;
        }
        else    //moving off vine
        {
            if (onVineR)
                hspeed = -3;
            else
                hspeed = 3;
            
            sprite_index = sprFall;
        }
    }
}

//slopes

if (instance_exists(objSlope) && hspeed != 0)
{
    var moveLimit = abs(hspeed);    //sets how high/low the player can go to snap onto a slope, this can be increased to make the player able to run over steeper slopes (ie setting it to abs(hspeed)*2 allows the player to run over slopes twice as steep)
    
    var slopeCheck;
    var hTest;
    
    var ySlope;
    
    //falling onto a slope
    if (place_meeting(x+hspeed,y+vspeed+gravity,objSlope) && (vspeed+gravity)*global.grav > 0 && notOnBlock)
    {
        var xLast = x;
        var yLast = y;
        var hLast = hspeed;
        var vLast = vspeed;
        
        vspeed += gravity;
        
        x += hspeed;
        hspeed = 0;
        
        if(!place_free(x,y+vspeed))
        {
            if (global.grav == 1)   //normal
                move_contact_solid(270,abs(vspeed));
            else    //flipped
                move_contact_solid(90,abs(vspeed));
            vspeed = 0;
        }
        
        y += vspeed;            
        
        if (!place_free(x,y+(global.grav)) && place_free(x,y))  //snapped onto the slope properly
        {
            djump = 1;
            notOnBlock = false;
        }
        else    //did not snap onto the slope, return to previous position
        {
            x = xLast;
            y = yLast;
            hspeed = hLast;
            vspeed = vLast;
        }
    }
    
    //moving down a slope
    if (!notOnBlock)
    {
        var onSlope = (place_meeting(x,y+(global.grav),objSlope));    //treat normal blocks the same as slopes if we're standing on a slope
        
        slopeCheck = true;
        hTest = hspeed;
        
        while (slopeCheck)
        {
            ySlope = 0;
            //check how far we should move down
            while ((!place_meeting(x+hTest,y-ySlope+(global.grav),objSlope) || (onSlope && !place_meeting(x+hTest,y-ySlope+(global.grav),objBlock))) && ySlope*global.grav > -floor(moveLimit*(hTest/hspeed)))
            {
                ySlope -= global.grav;
            }
            
            //check if we actually need to move down
            if (place_meeting(x+hTest,y-ySlope+(global.grav),objSlope) || (onSlope && place_meeting(x+hTest,y-ySlope+(global.grav),objBlock)))
            {
                if (ySlope != 0 && !place_meeting(x+hTest,y-ySlope,objBlock))
                {
                    y -= ySlope;
                    
                    x += hTest;
                    hspeed = 0;
                    
                    slopeCheck = false;
                }
                else
                {
                    if (hTest > 0)
                    {
                        hTest -= 1;
                        if (hTest <= 0)
                            slopeCheck = false;
                    }
                    else if (hTest < 0)
                    {
                        hTest += 1;
                        if (hTest >= 0)
                            slopeCheck = false;
                    }
                    else
                    {
                        slopeCheck = false;
                    }
                }
            }
            else
            {
                slopeCheck = false;
            }
        }
    }
    
    //moving up a slope
    if (place_meeting(x+hspeed,y,objSlope))
    {
        slopeCheck = true;
        hTest = hspeed;
        
        while (slopeCheck)
        {
            ySlope = 0;
            
            //check how far we have to move up
            while (place_meeting(x+hTest,y-ySlope,objSlope) && ySlope*global.grav < floor(moveLimit*(hTest/hspeed)))
            {
                ySlope += global.grav;
            }
            
            //check if we actually need to move up
            if (place_free(x+hTest,y-ySlope))
            {            
                y -= ySlope;
                
                x += hTest;
                hspeed = 0;
                
                slopeCheck = false;
            }
            else
            {
                if (hTest > 0)
                {
                    hTest -= 1;
                    if (hTest <= 0)
                        slopeCheck = false;
                }
                else if (hTest < 0)
                {
                    hTest += 1;
                    if (hTest >= 0)
                        slopeCheck = false;
                }
                else
                {
                    slopeCheck = false;
                }
            }
        }
    }
    
    //set xprevious/yprevious coordinates for future solid collisions
    xprevious = x;
    yprevious = y;
}

