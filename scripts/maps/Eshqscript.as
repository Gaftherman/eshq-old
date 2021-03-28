#include "point_checkpoint"
#include "Eshqscript/trigger_suitcheck"
#include "Eshqscript/trigger_once_mp"
#include "Eshqscript/weapon_debug"
#include "Eshqscript/polling_check_players"
#include "leveldead_loadsaved"
#include "Eshqscript/HLSPClassicMode2"

void MapInit()
{
	RegisterPointCheckPointEntity();
	RegisterTriggerSuitcheckEntity();
	RegisterTriggerOnceMpEntity();
	RegisterWeaponDebug();
	ClassicModeMapInit();
	
	g_EngineFuncs.CVarSetFloat( "mp_classic_mode", 1 );
	g_EngineFuncs.CVarSetFloat( "mp_hevsuit_voice", 1 );
	
  poll_check();
}

void ActivateSurvival(CBaseEntity@ pActivator,CBaseEntity@ pCaller, USE_TYPE useType, float flValue)
{
	g_SurvivalMode.Activate();
}

