/client
		//////////////////////
		//BLACK MAGIC THINGS//
		//////////////////////
	parent_type = /datum
		////////////////
		//ADMIN THINGS//
		////////////////
	var/datum/admins/holder = null
	var/datum/admins/deadmin_holder = null

		/////////
		//OTHER//
		/////////
	var/datum/preferences/prefs = null
	var/move_delay		= 1
	var/moving			= null
	var/adminobs		= null

	var/adminhelped = 0

	var/staffwarn = null
	var/lastping = 0
	var/avgping = 0
		///////////////
		//SOUND STUFF//
		///////////////
	var/ambience_playing= null
	var/played			= 0

		////////////
		//SECURITY//
		////////////
	// comment out the line below when debugging locally to enable the options & messages menu
	//control_freak = 1

	var/received_irc_pm = -99999
	var/irc_admin			//IRC admin that spoke with them last.
	var/mute_irc = 0
	var/warned_about_multikeying = 0	// Prevents people from being spammed about multikeying every time their mob changes.

		////////////////////////////////////
		//things that require the database//
		////////////////////////////////////
	var/player_age = 0 	//So admins know why it isn't working - Used to determine how old the account is - in days.
	var/related_accounts_ip = "Requires database"	//So admins know why it isn't working - Used to determine what other accounts previously logged in from this ip
	var/related_accounts_cid = "Requires database"	//So admins know why it isn't working - Used to determine what other accounts previously logged in from this computer id

	preload_rsc = 1 // This is 0 so we can set it to an URL once the player logs in and have them download the resources from a different server.
	var/static/obj/screen/click_catcher/void
	fps = 50

		////////////
		//PARALLAX//
		////////////
	var/list/parallax = list()
	var/list/parallax_movable = list()
	var/parallax_offset_x = 0
	var/parallax_offset_y = 0
	var/turf/previous_turf = null
	var/obj/screen/plane_master/parallax_master/parallax_master = null
	var/obj/screen/plane_master/parallax_dustmaster/parallax_dustmaster = null
	var/obj/screen/plane_master/parallax_spacemaster/parallax_spacemaster = null
