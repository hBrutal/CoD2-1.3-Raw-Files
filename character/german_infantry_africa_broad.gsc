// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	self setModel("xmodel/character_german_afrca_casualbody");
	self attach("xmodel/head_german_normandy_dan", "", true);
	self.hatModel = "xmodel/helmet_german_casual_africa";
	self attach(self.hatModel);
	self.voice = "german";
}

precache()
{
	precacheModel("xmodel/character_german_afrca_casualbody");
	precacheModel("xmodel/head_german_normandy_dan");
	precacheModel("xmodel/helmet_german_casual_africa");
}