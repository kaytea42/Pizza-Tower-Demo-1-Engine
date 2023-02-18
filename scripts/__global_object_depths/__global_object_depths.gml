function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_machalleffect
	global.__objectDepths[1] = -4; // obj_mach3effect
	global.__objectDepths[2] = -5; // obj_mach3effect1
	global.__objectDepths[3] = -5; // obj_mach3effect2
	global.__objectDepths[4] = 0; // obj_highjumpcloud2
	global.__objectDepths[5] = 0; // obj_highjumpcloud1
	global.__objectDepths[6] = -6; // obj_cloudeffect
	global.__objectDepths[7] = 0; // obj_bumpeffect
	global.__objectDepths[8] = -6; // obj_slidecloud
	global.__objectDepths[9] = 0; // obj_shotgunbullet
	global.__objectDepths[10] = -9999; // obj_fadeout
	global.__objectDepths[11] = -6; // obj_landcloud
	global.__objectDepths[12] = 0; // obj_vomit
	global.__objectDepths[13] = 0; // obj_null
	global.__objectDepths[14] = 0; // obj_keyeffect
	global.__objectDepths[15] = 0; // obj_uparrow
	global.__objectDepths[16] = -6; // obj_endlevelfade
	global.__objectDepths[17] = 0; // spr_shotgunbulletdown
	global.__objectDepths[18] = 0; // obj_speedlines
	global.__objectDepths[19] = -6; // obj_dashcloud
	global.__objectDepths[20] = -6; // obj_dashcloud2
	global.__objectDepths[21] = 0; // obj_jumpdust
	global.__objectDepths[22] = 0; // obj_camera
	global.__objectDepths[23] = 99999999; // obj_background
	global.__objectDepths[24] = -6; // obj_player
	global.__objectDepths[25] = 0; // obj_grabhitbox
	global.__objectDepths[26] = 0; // obj_cutscene_upstairs
	global.__objectDepths[27] = 5; // obj_door
	global.__objectDepths[28] = 5; // obj_goldendoor
	global.__objectDepths[29] = 5; // obj_keydoor
	global.__objectDepths[30] = -4; // obj_lock
	global.__objectDepths[31] = 2; // obj_exitgate
	global.__objectDepths[32] = 0; // obj_pizzakinshroom
	global.__objectDepths[33] = 0; // obj_pizzakincheese
	global.__objectDepths[34] = 0; // obj_pizzakinsausage
	global.__objectDepths[35] = 0; // obj_pizzakintomato
	global.__objectDepths[36] = 0; // obj_pizzakinpineapple
	global.__objectDepths[37] = 999; // obj_slopes
	global.__objectDepths[38] = 55; // obj_water2
	global.__objectDepths[39] = 0; // obj_collisionparent
	global.__objectDepths[40] = 0; // obj_enemiesbumpable
	global.__objectDepths[41] = 0; // obj_bumbable
	global.__objectDepths[42] = 2; // obj_onewaywall
	global.__objectDepths[43] = 0; // obj_onewaysolid
	global.__objectDepths[44] = 999; // obj_wall
	global.__objectDepths[45] = 0; // obj_baddie


	global.__objectNames[0] = "obj_machalleffect";
	global.__objectNames[1] = "obj_mach3effect";
	global.__objectNames[2] = "obj_mach3effect1";
	global.__objectNames[3] = "obj_mach3effect2";
	global.__objectNames[4] = "obj_highjumpcloud2";
	global.__objectNames[5] = "obj_highjumpcloud1";
	global.__objectNames[6] = "obj_cloudeffect";
	global.__objectNames[7] = "obj_bumpeffect";
	global.__objectNames[8] = "obj_slidecloud";
	global.__objectNames[9] = "obj_shotgunbullet";
	global.__objectNames[10] = "obj_fadeout";
	global.__objectNames[11] = "obj_landcloud";
	global.__objectNames[12] = "obj_vomit";
	global.__objectNames[13] = "obj_null";
	global.__objectNames[14] = "obj_keyeffect";
	global.__objectNames[15] = "obj_uparrow";
	global.__objectNames[16] = "obj_endlevelfade";
	global.__objectNames[17] = "spr_shotgunbulletdown";
	global.__objectNames[18] = "obj_speedlines";
	global.__objectNames[19] = "obj_dashcloud";
	global.__objectNames[20] = "obj_dashcloud2";
	global.__objectNames[21] = "obj_jumpdust";
	global.__objectNames[22] = "obj_camera";
	global.__objectNames[23] = "obj_background";
	global.__objectNames[24] = "obj_player";
	global.__objectNames[25] = "obj_grabhitbox";
	global.__objectNames[26] = "obj_cutscene_upstairs";
	global.__objectNames[27] = "obj_door";
	global.__objectNames[28] = "obj_goldendoor";
	global.__objectNames[29] = "obj_keydoor";
	global.__objectNames[30] = "obj_lock";
	global.__objectNames[31] = "obj_exitgate";
	global.__objectNames[32] = "obj_pizzakinshroom";
	global.__objectNames[33] = "obj_pizzakincheese";
	global.__objectNames[34] = "obj_pizzakinsausage";
	global.__objectNames[35] = "obj_pizzakintomato";
	global.__objectNames[36] = "obj_pizzakinpineapple";
	global.__objectNames[37] = "obj_slopes";
	global.__objectNames[38] = "obj_water2";
	global.__objectNames[39] = "obj_collisionparent";
	global.__objectNames[40] = "obj_enemiesbumpable";
	global.__objectNames[41] = "obj_bumbable";
	global.__objectNames[42] = "obj_onewaywall";
	global.__objectNames[43] = "obj_onewaysolid";
	global.__objectNames[44] = "obj_wall";
	global.__objectNames[45] = "obj_baddie";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
