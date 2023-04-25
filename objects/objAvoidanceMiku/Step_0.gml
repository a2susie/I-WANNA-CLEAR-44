/// @description Insert description here
// You can write your code in this editor
atime += 1;
//Start
if (atime=40)
{
spawnX3=400;
spawnY3=17;
spawnLayer3="Instances_3";
spawnAngle3=0;
spawnNum3=20;
spawnSpeed3=16;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime=40)
{
spawnX3=400;
spawnY3=592;
spawnLayer3="Instances_3";
spawnAngle3=0;
spawnNum3=20;
spawnSpeed3=16;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime=59)
{
spawnX3=780;
spawnY3=588;
spawnLayer3="Instances_3";
spawnAngle3=0;
spawnNum3=20;
spawnSpeed3=16;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime=59)
{
spawnX3=16;
spawnY3=16;
spawnLayer3="Instances_3";
spawnAngle3=0;
spawnNum3=20;
spawnSpeed3=16;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime>92) and (atime<100)
{
spawnX=400;
spawnY=350;
spawnLayer="Instances_3";
spawnAngle=90;
spawnNum=4;
spawnSpeed=40;
spawnObj=objCherry;
o = scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime=120)
{
spawnX3=400;
spawnY3=350;
spawnLayer3="Instances_3";
spawnAngle3=0;
spawnNum3=20;
spawnSpeed3=16;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime=134)
{
spawnX3=400;
spawnY3=350;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=16;
spawnSpeed3=20;
spawnObj3=objCherrySlowingDown;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if atime = 177
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(400,16+(i*32),"Instances_3",objCherrySlowingDown)
o.direction = 180
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
//First Barrage
if (atime>197) and (atime<462) and (atime mod 5 == 0)
{
spawnX4=15
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(0.5,5)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if atime = 487
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),400,"Instances_3",objCherrySlowingDown)
o.direction = 90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
if atime = 487
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),400,"Instances_3",objCherrySlowingDown)
o.direction = -90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
if (atime=512)
{
instance_destroy(objCherry)
}
if (atime>512) and (atime<787) and (atime mod 4 == 0)
{
spawnX4=561
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(0.5,5)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if atime = 797
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),207,"Instances_3",objCherrySlowingDown)
o.direction = 90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
if atime = 797
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),207,"Instances_3",objCherrySlowingDown)
o.direction = -90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
//Second Barrage(a)
if (atime=824)
{
instance_destroy(objCherry)
}
if (atime>824) and (atime<1254) and (atime mod 7 == 0)
{
spawnX4=400
spawnY4=300
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(2,4)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=855)
{
spawnX3=400;
spawnY3=300;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=40;
spawnSpeed3=25;
spawnObj3=objCherrySlowingDownNoNegative;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime=895)
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(432,16+(i*32),"Instances_3",objCherrySlowingDown)
o.direction = 180
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
if (atime=935)
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),207,"Instances_3",objCherrySlowingDown)
o.direction = -90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
if (atime=985)
{
instance_destroy(objCherrySlowingDownNoNegative)
}
if (atime=986)
{
spawnX3=400;
spawnY3=300;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=50;
spawnSpeed3=30;
spawnObj3=objCherrySlowingDownNoNegative;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if atime = 1173
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),528,"Instances_3",objCherrySlowingDown)
o.direction = 90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
if atime = 1254
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),400,"Instances_3",objCherrySlowingDown)
o.direction = 90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
if atime = 1254
{
instance_destroy(objCherry)
}
if atime=1286
{
instance_destroy(objCherrySlowingDownNoNegative)
}
if (atime>1286) and (atime<1425) and (atime mod 6 == 0)
{
spawnX4=81
spawnY4=78
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(4,6)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime>1286) and (atime<1425) and (atime mod 6 == 0)
{
spawnX4=491
spawnY4=78
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(4,6)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=1452)
{
instance_destroy(objCherry)
}
if atime = 1420
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),207,"Instances_3",objCherrySlowingDown)
o.direction = -90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
//Interlude
if (atime>(197+1255)) and (atime<(462+1255)) and (atime mod 5 == 0)
{
spawnX4=555
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(0.5,5)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if atime = (487+1255)
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),400,"Instances_3",objCherrySlowingDown)
o.direction = 90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
if atime = (487+1255)
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),400,"Instances_3",objCherrySlowingDown)
o.direction = -90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
if (atime=(512+1255))
{
instance_destroy(objCherry)
}
//Third Barrage(a)
if (atime=(824+943))
{
instance_destroy(objCherry)
}
if (atime>(824+943)) and (atime<(1254+943)) and (atime mod 7 == 0)
{
spawnX4=400
spawnY4=300
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(2,4)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=(855+943))
{
spawnX3=400;
spawnY3=300;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=40;
spawnSpeed3=25;
spawnObj3=objCherrySlowingDownNoNegative;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime=(895+943))
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(432,16+(i*32),"Instances_3",objCherrySlowingDown)
o.direction = 180
o.speed = 30
o.sprite_index = (sprCherryPinker)
}
}
if (atime=(935+943))
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),400,"Instances_3",objCherrySlowingDown)
o.direction = 90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
if (atime=(985+943))
{
instance_destroy(objCherrySlowingDownNoNegative)
}
if (atime=(986+943))
{
spawnX3=400;
spawnY3=300;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=50;
spawnSpeed3=30;
spawnObj3=objCherrySlowingDownNoNegative;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if atime = (1173+943)
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),79,"Instances_3",objCherrySlowingDown)
o.direction = -90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
if atime = (1254+943)
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),207,"Instances_3",objCherrySlowingDown)
o.direction = -90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
if atime = (1254+943)
{
instance_destroy(objCherry)
}
if atime = (1286+943)
{
instance_destroy(objCherrySlowingDownNoNegative)
}
if (atime>(1286+943)) and (atime<(1425+943)) and (atime mod 7 == 0)
{
spawnX4=81
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(3,5)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime>(1286+943)) and (atime<(1425+943)) and (atime mod 7 == 0)
{
spawnX4=491
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(3,5)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=(2393))
{
instance_destroy(objCherry)
}
//Buildup1
if atime = (2394)
{
spawnX3=14+64;
spawnY3=300;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=16;
spawnSpeed3=15;
spawnObj3=objCherrySlowingDown;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if atime = (2394)
{
spawnX4=785-64;
spawnY4=300;
spawnLayer4="Instances_3";
spawnAngle4=5;
spawnNum4=16;
spawnSpeed4=15;
spawnObj4=objCherrySlowingDown;
scrMakeCircle(spawnX4, spawnY4, spawnLayer4, spawnAngle4, spawnNum4, spawnSpeed4, spawnObj4) {
}
}
if atime = (2431)
{
spawnX4=400;
spawnY4=300;
spawnLayer4="Instances_3";
spawnAngle4=5;
spawnNum4=16;
spawnSpeed4=15;
spawnObj4=objCherrySlowingDown;
scrMakeCircle(spawnX4, spawnY4, spawnLayer4, spawnAngle4, spawnNum4, spawnSpeed4, spawnObj4) {
}
}
if (atime>(2471)) and (atime<(2500)) and (atime mod 3 == 0)
{
spawnX4=400
spawnY4=300
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(5,6)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if atime = 2530
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(400,16+(i*32),"Instances_3",objCherrySlowingDown)
o.direction = 180
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
//Buildup2
if atime = (2394+153)
{
spawnX3=190;
spawnY3=494;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=16;
spawnSpeed3=15;
spawnObj3=objCherrySlowingDown;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if atime = (2394+153)
{
spawnX4=688;
spawnY4=111;
spawnLayer4="Instances_3";
spawnAngle4=5;
spawnNum4=16;
spawnSpeed4=15;
spawnObj4=objCherrySlowingDown;
scrMakeCircle(spawnX4, spawnY4, spawnLayer4, spawnAngle4, spawnNum4, spawnSpeed4, spawnObj4) {
}
}
if atime = (2431+153)
{
spawnX4=400;
spawnY4=300;
spawnLayer4="Instances_3";
spawnAngle4=5;
spawnNum4=16;
spawnSpeed4=15;
spawnObj4=objCherrySlowingDown;
scrMakeCircle(spawnX4, spawnY4, spawnLayer4, spawnAngle4, spawnNum4, spawnSpeed4, spawnObj4) {
}
}
if (atime>(2471+153)) and (atime<(2500+153)) and (atime mod 3 == 0)
{
spawnX4=400
spawnY4=300
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(5,6)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=(2683))
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),(528+32+32+32),"Instances_3",objCherrySlowingDown)
o.direction = 90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
//Buildup3
if atime = (2394+153+153)
{
spawnX3=14+64;
spawnY3=300;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=16;
spawnSpeed3=15;
spawnObj3=objCherrySlowingDown;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if atime = (2394+153+153)
{
spawnX4=785-64;
spawnY4=300;
spawnLayer4="Instances_3";
spawnAngle4=5;
spawnNum4=16;
spawnSpeed4=15;
spawnObj4=objCherrySlowingDown;
scrMakeCircle(spawnX4, spawnY4, spawnLayer4, spawnAngle4, spawnNum4, spawnSpeed4, spawnObj4) {
}
}
if atime = (2431+153+153)
{
spawnX4=400;
spawnY4=300;
spawnLayer4="Instances_3";
spawnAngle4=5;
spawnNum4=16;
spawnSpeed4=15;
spawnObj4=objCherrySlowingDown;
scrMakeCircle(spawnX4, spawnY4, spawnLayer4, spawnAngle4, spawnNum4, spawnSpeed4, spawnObj4) {
}
}
if (atime>(2471+153+153)) and (atime<(2500+153+153)) and (atime mod 3 == 0)
{
spawnX4=400
spawnY4=300
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(5,6)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if atime = (2683+153)
{
for (i=1; i<50; i+=1) 
{
o =instance_create_layer(16+(i*32),79,"Instances_3",objCherrySlowingDown)
o.direction = -90
o.speed = 35
o.sprite_index = (sprCherryPinker)
}
}
//Final Buildup
if (atime=(2864))
{
spawnX3=400;
spawnY3=300;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=40;
spawnSpeed3=25;
spawnObj3=objCherrySlowingDownNoNegative;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime>2863) and (atime<2975) and (atime mod 3 == 0)
{
spawnX4=400
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
if(instance_exists(objPlayer))
{
o.direction = point_direction(o.x,o.y,objPlayer.x,objPlayer.y)
}
o.speed = 6
o.sprite_index = choose(sprCherryPink, sprCherryPinker)
}
if (atime=2997)
{
spawnX3=400;
spawnY3=303;
spawnLayer3="Instances_3";
spawnAngle3=0;
spawnNum3=20;
spawnSpeed3=16;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
//Final
if (atime=3020)
{
instance_destroy(objCherrySlowingDownNoNegative)
}
if (atime=(3021))
{
spawnX3=400;
spawnY3=300;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=20;
spawnSpeed3=35;
spawnObj3=objCherrySlowingDown;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime>(3020)) and (atime<(3648)) and (atime mod 6 == 0)
{
spawnX4=400
spawnY4=300
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(4,6)
o.sprite_index = choose(sprCherryPinker, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=(3176))
{
spawnX3=400;
spawnY3=300;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=20;
spawnSpeed3=35;
spawnObj3=objCherrySlowingDown;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime=(3176+156))
{
spawnX3=400;
spawnY3=300;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=20;
spawnSpeed3=35;
spawnObj3=objCherrySlowingDown;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime=(3176+156+156))
{
spawnX3=400;
spawnY3=300;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=20;
spawnSpeed3=35;
spawnObj3=objCherrySlowingDown;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime=(3176+156+156+156))
{
spawnX3=400;
spawnY3=300;
spawnLayer3="Instances_3";
spawnAngle3=5;
spawnNum3=20;
spawnSpeed3=35;
spawnObj3=objCherrySlowingDown;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime=3644)
{
audio_stop_sound(musPinkMiku)
instance_create_layer(385,340,"Instances_3",objWarpNextAutosave)
}
if atime > 3644
{
instance_destroy(objCherry)
instance_destroy(objCherrySlowingDown)
instance_destroy(objCherrySlowingDownNoNegative)
}