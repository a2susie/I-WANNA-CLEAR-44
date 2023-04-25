/// @description snap to the block (works for non-solid instances too)
/// @param works for non-solid instances too
if (!scrIsBlock(other)) exit;

//Redundant for solid instances
x = xprevious;
y = yprevious;

//Replace move_contact_solid
scrMoveContactObject(sign(hspeed), 0, abs(hspeed), other.id);
scrMoveContactObject(0, sign(vspeed), abs(vspeed), other.id);

//Same as in the original code
speed = 0;
gravity = 0;

