//
// beta_entities.qc - swap beta entities with their current variants,
// as well as set a global variable tied to beta maps.
//


/*
====================
 PERKS
====================
*/
// quick revive
void() item_revive =
{
    betamap = true;
	perk_revive();

	#ifdef PSP
	self.scalefactor_x = 0.85;
	self.scalefactor_y = 0.85;
	self.scalefactor_z = 0.85;
	#endif

	self.origin_z += 8;
	self.origin_y -= 2;
}

// jug
void() item_juggernog =
{
    betamap = true;
	perk_juggernog();

	#ifdef PSP
	self.scalefactor_x = 0.85;
	self.scalefactor_y = 0.85;
	self.scalefactor_z = 0.85;
	#endif

	self.origin_z += 8;
	self.origin_y -= 2;
}

// speed
void() item_speed =
{
    betamap = true;
	perk_speed();

	#ifdef PSP
	self.scalefactor_x = 0.85;
	self.scalefactor_y = 0.85;
	self.scalefactor_z = 0.85;
	#endif
	
	self.origin_z += 8;
	self.origin_y -= 2;
}

// dt
void() item_douple =
{
    betamap = true;
	perk_double();

	#ifdef PSP
	self.scalefactor_x = 0.85;
	self.scalefactor_y = 0.85;
	self.scalefactor_z = 0.85;
	#endif
	
	self.origin_z += 8;
	self.origin_y -= 2;
}

// flopper
void() item_flopper =
{
    betamap = true;
	perk_flopper();

	#ifdef PSP
	self.scalefactor_x = 0.85;
	self.scalefactor_y = 0.85;
	self.scalefactor_z = 0.85;
	#endif
	
	self.origin_z += 8;
	self.origin_y -= 2;
}