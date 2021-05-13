// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Ability(){

	stateAttack = ATTACKSTATE.ABILITY;
	
	if (abilityState == ABILITYSTATE.GETSUGA){
		if (manaPoints >= abilityCost){ 
		//audio_play_sound(sndGetsuga,10,false);
		switch (sprite_index){
			case  sPlayerdown:
				sprite_index = sAbilityGetsugaDown;
				image_index = 0;
				break;
			case  sPlayerdownidol:
				sprite_index = sAbilityGetsugaDown;
				image_index = 0;
				break;
			case  sPlayerup:
				sprite_index = sAbilityGetsugaUp;
				image_index = 0;
				break;
			case   sPlayerupidol:
				sprite_index = sAbilityGetsugaUp;
				image_index = 0;
				break;
			case sPlayerright:
				sprite_index = sAbilityGetsugaRight;
				image_index = 0;
				break;	
			case sPlayerrightidol:
				sprite_index = sAbilityGetsugaRight;
				image_index = 0;
				break;	
			case sPlayerleft :
				sprite_index = sAbilityGetsugaLeft;
				image_index = 0;
				break;		
			case sPlayerleftidol:
				sprite_index = sAbilityGetsugaLeft;
				image_index = 0;
				break;
				}

			if (objPlayer.abilityCreated = false){
				objPlayer.abilityCreated = true;
				instance_create_layer(x,y,"Objects", objGetsuga);
				manaPoints -= abilityCost;
				}
			} else state = PLAYERSTATE.FREE;
	}
}
