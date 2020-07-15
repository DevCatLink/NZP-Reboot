//
// beta_entities.qc - swap beta entities with their current variants.
//
float betainit;
/*
====================
 GENERIC CONVERT
====================
*/
// mostly for entities that share the same classname
// as they did in beta. scans and converts per-case.
void() beta_convert =
{
    if (betainit)
        return;

    local entity scanner;

    betamap = true;

	// player
	scanner = find(world, classname, "player");
	while(scanner) {
		setsize(scanner, [-16, -16, -32], [16, 16, 32]);
		scanner.view_ofs = VEC_QVIEW_OFS;
        scanner.new_ofs_z = scanner.view_ofs_z;

		scanner = find(scanner, classname, "player");
	}

	// barricade
	scanner = find(world, classname, "window");
	while(scanner) {
		#ifdef PSP
		scanner.scalefactor_x = 0.62;
		scanner.scalefactor_y = 0.62;
		scanner.scalefactor_z = 0.62;
		#endif

        scanner.origin_x += 30;
        scanner.origin_y -= 52;
        scanner.origin_z += 56;

		scanner = find(scanner, classname, "window");
	}

    betainit = true;
}


/*
====================
 PERKS
====================
*/
// quick revive
void() item_revive =
{
	perk_revive();

	#ifdef PSP
	self.scalefactor_x = 0.85;
	self.scalefactor_y = 0.85;
	self.scalefactor_z = 0.85;
	#endif

	self.origin_z += 8;
	self.origin_y -= 2;

    self.betaitem = true;
}

// jug
void() item_juggernog =
{
	perk_juggernog();

	#ifdef PSP
	self.scalefactor_x = 0.85;
	self.scalefactor_y = 0.85;
	self.scalefactor_z = 0.85;
	#endif

	self.origin_z += 8;
	self.origin_y -= 2;

    self.betaitem = true;
}

// speed
void() item_speed =
{
	perk_speed();

	#ifdef PSP
	self.scalefactor_x = 0.85;
	self.scalefactor_y = 0.85;
	self.scalefactor_z = 0.85;
	#endif
	
	self.origin_z += 8;
	self.origin_y -= 2;
    
    self.betaitem = true;
}

// dt
void() item_douple =
{
	perk_double();

	#ifdef PSP
	self.scalefactor_x = 0.85;
	self.scalefactor_y = 0.85;
	self.scalefactor_z = 0.85;
	#endif
	
	self.origin_z += 8;
	self.origin_y -= 2;

    self.betaitem = true;
}

// flopper
void() item_flopper =
{
	perk_flopper();

	#ifdef PSP
	self.scalefactor_x = 0.85;
	self.scalefactor_y = 0.85;
	self.scalefactor_z = 0.85;
	#endif
	
	self.origin_z += 8;
	self.origin_y -= 2;

    self.betaitem = true;
}
