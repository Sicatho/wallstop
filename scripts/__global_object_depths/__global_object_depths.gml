function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_controller
	global.__objectDepths[1] = 0; // obj_plr
	global.__objectDepths[2] = 0; // obj_portal
	global.__objectDepths[3] = 0; // obj_evil
	global.__objectDepths[4] = 0; // obj_wall
	global.__objectDepths[5] = 0; // obj_start_game
	global.__objectDepths[6] = 0; // obj_help
	global.__objectDepths[7] = 0; // obj_back
	global.__objectDepths[8] = 0; // obj_rm_001
	global.__objectDepths[9] = 0; // obj_rm_002
	global.__objectDepths[10] = 0; // obj_rm_003
	global.__objectDepths[11] = 0; // obj_rm_004
	global.__objectDepths[12] = 0; // obj_rm_005
	global.__objectDepths[13] = 0; // obj_rm_006
	global.__objectDepths[14] = 0; // obj_rm_007
	global.__objectDepths[15] = 0; // obj_rm_008
	global.__objectDepths[16] = 0; // obj_rm_009
	global.__objectDepths[17] = -2; // obj_pink
	global.__objectDepths[18] = 0; // obj_reset
	global.__objectDepths[19] = 0; // obj_moveAround
	global.__objectDepths[20] = 0; // obj_death
	global.__objectDepths[21] = 0; // obj_goal


	global.__objectNames[0] = "obj_controller";
	global.__objectNames[1] = "obj_plr";
	global.__objectNames[2] = "obj_portal";
	global.__objectNames[3] = "obj_evil";
	global.__objectNames[4] = "obj_wall";
	global.__objectNames[5] = "obj_start_game";
	global.__objectNames[6] = "obj_help";
	global.__objectNames[7] = "obj_back";
	global.__objectNames[8] = "obj_rm_001";
	global.__objectNames[9] = "obj_rm_002";
	global.__objectNames[10] = "obj_rm_003";
	global.__objectNames[11] = "obj_rm_004";
	global.__objectNames[12] = "obj_rm_005";
	global.__objectNames[13] = "obj_rm_006";
	global.__objectNames[14] = "obj_rm_007";
	global.__objectNames[15] = "obj_rm_008";
	global.__objectNames[16] = "obj_rm_009";
	global.__objectNames[17] = "obj_pink";
	global.__objectNames[18] = "obj_reset";
	global.__objectNames[19] = "obj_moveAround";
	global.__objectNames[20] = "obj_death";
	global.__objectNames[21] = "obj_goal";


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
