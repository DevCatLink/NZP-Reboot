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
	//self.origin_z += 8;
}

// jug
void() item_juggernog =
{
    betamap = true;
	perk_juggernog();
	//self.origin_z += 8;
}

// speed
void() item_speed =
{
    betamap = true;
	perk_speed();
	//self.origin_z += 8;
}

// dt
void() item_douple =
{
    betamap = true;
	perk_double();
	//self.origin_z += 8;
}

// flopper
void() item_flopper =
{
    betamap = true;
	perk_flopper();
	//self.origin_z += 8;
}