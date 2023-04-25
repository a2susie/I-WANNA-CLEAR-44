/// @description Insert description here
// You can write your code in this editor
//if we haven't been triggered yet, and an announcement was made for our trg value,
if (!triggered && global.trigger[trg]) 
{
	direction = dir;
        speed = spd;

    //finally, mark that we have been triggered now so it doesn't happen again
    triggered = true; 
}