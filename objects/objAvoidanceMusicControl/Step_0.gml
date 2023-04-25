/// @description Insert description here
// You can write your code in this editor
atime += 1;
//Start
if (atime>32) and (atime<40)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=90;
spawnNum=4;
spawnSpeed=40;
spawnObj=objCherry;
o = scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>52) and (atime<60)
{
spawnX=304;
spawnY=209;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=4;
spawnSpeed=40;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>72) and (atime<80)
{
spawnX2=500;
spawnY2=405;
spawnLayer2="Instances_3";
spawnAngle2=45;
spawnNum2=4;
spawnSpeed2=40;
spawnObj2=objCherry;
scrMakeCircle(spawnX2, spawnY2, spawnLayer2, spawnAngle2, spawnNum2, spawnSpeed2, spawnObj2) {
}
}
if (atime>91) and (atime<99)
{
spawnX2=400;
spawnY2=304;
spawnLayer2="Instances_3";
spawnAngle2=0;
spawnNum2=5;
spawnSpeed2=40;
spawnObj2=objCherry;
scrMakeCircle(spawnX2, spawnY2, spawnLayer2, spawnAngle2, spawnNum2, spawnSpeed2, spawnObj2) {
}
}
if (atime>112) and (atime<122)
{
spawnX2=400;
spawnY2=304;
spawnLayer2="Instances_3";
spawnAngle2=0;
spawnNum2=4;
spawnSpeed2=40;
spawnObj2=objCherry;
scrMakeCircle(spawnX2, spawnY2, spawnLayer2, spawnAngle2, spawnNum2, spawnSpeed2, spawnObj2) {
}
}
if (atime>126) and (atime<128)
{
spawnX3=400;
spawnY3=304;
spawnLayer3="Instances_3";
spawnAngle3=0;
spawnNum3=14;
spawnSpeed3=15;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime>149) and (atime<165) and (atime mod 4 == 0)
{
spawnX4=400
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(3,5)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
//Random Sides
if (atime>192) and (atime<460) and (atime mod 2 == 0)
{
spawnX=239;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=4;
spawnSpeed=10;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>192) and (atime<466) and (atime mod 6 == 0)
{
spawnX4=239
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(0.5,6)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=467)
{
instance_destroy(objCherry)
}
if (atime=468) 
{
spawnX3=400;
spawnY3=304;
spawnLayer3="Instances_3";
spawnAngle3=0;
spawnNum3=10;
spawnSpeed3=15;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime=485)
{
spawnX3=400;
spawnY3=304;
spawnLayer3="Instances_3";
spawnAngle3=90;
spawnNum3=10;
spawnSpeed3=10;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime>520) and (atime<671) and (atime mod 2 == 0)
{
spawnX=559;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=4;
spawnSpeed=10;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>502) and (atime<671) and (atime mod 6 == 0)
{
spawnX4=559
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(0.5,6)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=789)
{
instance_destroy(objCherry)
}
if (atime>790) and (atime<792)
{
spawnX3=400;
spawnY3=304;
spawnLayer3="Instances_3";
spawnAngle3=0;
spawnNum3=14;
spawnSpeed3=15;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime>808) and (atime<830) and (atime mod 5 == 0)
{
spawnX4=559
spawnY4=504
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(5,7)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime>808) and (atime<830) and (atime mod 5 == 0)
{
spawnX4=237
spawnY4=504
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(5,7)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
//Cramped
if (atime>837) and (atime<1475) and (atime mod 5 == 0)
{
spawnX4=400
spawnY4=147
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(3,4)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime>860) and (atime<1475) and (atime mod 2 == 0)
{
spawnX=559;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=4;
spawnSpeed=5;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>860) and (atime<1475) and (atime mod 2 == 0)
{
spawnX=237;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=4;
spawnSpeed=5;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime=1475)
{
instance_destroy(objCherry)
}
if (atime>1476) and (atime<1631) and (atime mod 3 == 0)
{
spawnX4=400
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(1,1.5)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=1632)
{
instance_destroy(objCherry)
}
//Una's Patterns
if (atime>1632) and (atime<1634)
{
spawnX3=400;
spawnY3=304;
spawnLayer3="Instances_3";
spawnAngle3=45;
spawnNum3=8;
spawnSpeed3=12;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime>1642) and (atime<1654) and (atime mod 3 == 0)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=0;
spawnNum=4;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>1671) and (atime<1673)
{
spawnX3=400;
spawnY3=304;
spawnLayer3="Instances_3";
spawnAngle3=45;
spawnNum3=8;
spawnSpeed3=15;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime>1681) and (atime<1694) and (atime mod 3 == 0)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=3;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>1712) and (atime<1714)
{
spawnX3=400;
spawnY3=304;
spawnLayer3="Instances_3";
spawnAngle3=45;
spawnNum3=8;
spawnSpeed3=15;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime>1722) and (atime<1745) and (atime mod 2 == 0)
{
spawnX4=400
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
if(instance_exists(objPlayer))
{
o.direction = point_direction(o.x,o.y,objPlayer.x,objPlayer.y)
}
o.speed = 7
o.sprite_index = choose(sprCherryBlue, sprCherryWhite, sprCherryAzure, sprCherryEmerald)
}
if (atime>1761) and (atime<1784) and (atime mod 2 == 0)
{
spawnX4=400
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
if(instance_exists(objPlayer))
{
o.direction = point_direction(o.x,o.y,objPlayer.x,objPlayer.y)
}
o.speed = 7
o.sprite_index = choose(sprCherryBlue, sprCherryWhite, sprCherryAzure, sprCherryEmerald)
}
//Flip-Flop
if (atime>1791) and (atime<1852) and (atime mod 6 == 0)
{
spawnX4=400
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(6,7)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime>1870) and (atime<1935) and (atime mod 3 == 0)
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
o.sprite_index = choose(sprCherryBlue, sprCherryWhite, sprCherryAzure, sprCherryEmerald)
}
if (atime>1870) and (atime<1950) and (atime mod 3 == 0)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=4;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>1950) and (atime<2104) and (atime mod 2 == 0)
{
spawnX=239;
spawnY=143;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=4;
spawnSpeed=10;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>1950) and (atime<2104) and (atime mod 5 == 0)
{
spawnX4=239
spawnY4=143
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(0.5,6)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=2104)
{
instance_destroy(objCherry)
}
if (atime>2104) and (atime<2233) and (atime mod 2 == 0)
{
spawnX=558;
spawnY=464;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=4;
spawnSpeed=10;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>2104) and (atime<2233) and (atime mod 5 == 0)
{
spawnX4=558
spawnY4=464
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(0.5,6)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=2233)
{
instance_destroy(objCherry)
}
if (atime>2233) and (atime<2235)
{
spawnX3=400;
spawnY3=304;
spawnLayer3="Instances_3";
spawnAngle3=45;
spawnNum3=10;
spawnSpeed3=15;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
if (atime>2249) and (atime<2251)
{
spawnX3=400;
spawnY3=304;
spawnLayer3="Instances_3";
spawnAngle3=0;
spawnNum3=10;
spawnSpeed3=15;
spawnObj3=objCherry;
scrMakeCircle(spawnX3, spawnY3, spawnLayer3, spawnAngle3, spawnNum3, spawnSpeed3, spawnObj3) {
}
}
//Buildup
if (atime>2274) and (atime<2831) and (atime mod 6 == 0)
{
spawnX4=400
spawnY4=500
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(0.5,2)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=2831)
{
instance_destroy(objCherry)
}
if (atime>2831) and (atime<2841) and (atime mod 3 == 0)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=4;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>2850) and (atime<2860) and (atime mod 3 == 0)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=0;
spawnNum=8;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>2869) and (atime<2871)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=0;
spawnNum=8;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
//Final1
if (atime>2911) and (atime<2913)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=0;
spawnNum=15;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>2911) and (atime<2953) and (atime mod 3 == 0)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=4;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>2922) and (atime<2932) and (atime mod 2 == 0)
{
spawnX4=400
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
if(instance_exists(objPlayer))
{
o.direction = point_direction(o.x,o.y,objPlayer.x,objPlayer.y)
}
o.speed = 7
o.sprite_index = choose(sprCherryBlue, sprCherryWhite, sprCherryAzure, sprCherryEmerald)
}
if (atime>2943) and (atime<2953) and (atime mod 2 == 0)
{
spawnX4=400
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
if(instance_exists(objPlayer))
{
o.direction = point_direction(o.x,o.y,objPlayer.x,objPlayer.y)
}
o.speed = 7
o.sprite_index = choose(sprCherryBlue, sprCherryWhite, sprCherryAzure, sprCherryEmerald)
}
if (atime>2972) and (atime<2980) and (atime mod 3 == 0)
{
spawnX1=240
spawnY1=230
spawnLayer1="Instances_3"
o = instance_create_layer(spawnX1,spawnY1,spawnLayer1,objCherry)
o.direction = random(360)
o.speed = random_range(7,8)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime>2994) and (atime<3002) and (atime mod 3 == 0)
{
spawnX1=556
spawnY1=230
spawnLayer1="Instances_3"
o = instance_create_layer(spawnX1,spawnY1,spawnLayer1,objCherry)
o.direction = random(360)
o.speed = random_range(7,8)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime>3013) and (atime<3152) and (atime mod 2 == 0)
{
spawnX=400;
spawnY=230;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=4;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>3013) and (atime<3152) and (atime mod 5 == 0)
{
spawnX4=400
spawnY4=144
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(5,6)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=3152)
{
instance_destroy(objCherry)
}
if (atime>3152) and (atime<3154)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=0;
spawnNum=15;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>3172) and (atime<3174)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=0;
spawnNum=15;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>3192) and (atime<3219) and (atime mod 3 == 0)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=8;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
//Final2
if (atime>3232) and (atime<3393) and (atime mod 2 == 0)
{
spawnX=239;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=45;
spawnNum=4;
spawnSpeed=10;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>3232) and (atime<3393) and (atime mod 6 == 0)
{
spawnX4=239
spawnY4=304
spawnLayer4="Instances_3"
o = instance_create_layer(spawnX4,spawnY4,spawnLayer4,objCherry)
o.direction = random(360)
o.speed = random_range(4,6)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime=3393)
{
instance_destroy(objCherry)
}
if (atime>3393) and (atime<3450) and (atime mod 4 == 0)
{
spawnX5=400
spawnY5=304
spawnLayer5="Instances_3"
o = instance_create_layer(spawnX5,spawnY5,spawnLayer5,objCherry)
o.direction = random(360)
o.speed = random_range(4.5,6)
o.sprite_index = choose(sprCherry, sprCherryWhite, sprCherryBlack, sprCherryPink)
}
if (atime>3474) and (atime<3476)
{
spawnX=400;
spawnY=144;
spawnLayer="Instances_3";
spawnAngle=0;
spawnNum=15;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>3492) and (atime<3494)
{
spawnX=591;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=0;
spawnNum=15;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>3511) and (atime<3513)
{
spawnX=207;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=0;
spawnNum=15;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
if (atime>3530) and (atime<3534)
{
spawnX=400;
spawnY=304;
spawnLayer="Instances_3";
spawnAngle=0;
spawnNum=15;
spawnSpeed=15;
spawnObj=objCherry;
scrMakeCircle(spawnX, spawnY, spawnLayer, spawnAngle, spawnNum, spawnSpeed, spawnObj) {
}
}
//End
if (atime=3552)
{
audio_stop_sound(musRoki)
instance_create_layer(385,192,"Instances_3",objWarpNextAutosave)
}


