audio_play_sound(sndBossHit,0,false);

with (other)
    instance_destroy();

currentHP -= 1;

if (currentHP <= 0)
{
    with (objBlockInvis)
        instance_destroy();
    
    global.noPause = false;
    
    if (!global.bossItem[0])
        {
        with instance_create(384,544,objBossItem){
            itemNum = 0;
            sprite_index = sprBossIcon01
            }
        }
    
    instance_destroy();
}

