// Function: Get the relative positioning of an object from the specified origin point. ex: [-1,0,0] <--> [x,y,z]

params["_object","_origin"];
private["_objectpos","_originpos","_getX","_getY","_getZ","_relpos"];

_objectpos = getPos _object;
_originpos = getPos _origin;

_getX = ( (_objectpos select 0) - (_originpos select 0));
_getY = ( (_objectpos select 1) - (_originpos select 1));
_getZ = ( (_objectpos select 2) - (_originpos select 2));

_relpos = [_getX,_getY,_getZ];
_relpos;