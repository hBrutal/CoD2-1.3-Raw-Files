// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
/*QUAKED actor_ally_ranger_nrmdy_blake (0.0 0.25 1.0) (-16 -16 0) (16 16 72) SPAWNER FORCESPAWN UNDELETABLE NOENEMYINFO
defaultmdl="xmodel/character_us_ranger_pvt_a_low"
"count" -- max AI to ever spawn from this spawner
SPAWNER -- makes this a spawner instead of a guy
FORCESPAWN -- will try to delete an AI if spawning fails from too many AI
UNDELETABLE -- this AI (or AI spawned from here) cannot be deleted to make room for FORCESPAWN guys
NOENEMYINFO -- this AI when spawned will not get a snapshot of perfect info about all enemies
*/
main()
{
	self.team = "allies";
	self.accuracy = 0.2;
	self.health = 150;
	self.weapon = "m1carbine";
	self.secondaryweapon = "m1carbine";
	self.grenadeWeapon = "fraggrenade";
	self.grenadeAmmo = 0;

	character\american_ranger_blake::main();
}

spawner()
{
	self setspawnerteam("allies");
}

precache()
{
	character\american_ranger_blake::precache();

	precacheItem("m1carbine");
	precacheItem("m1carbine");
	precacheItem("fraggrenade");
}
