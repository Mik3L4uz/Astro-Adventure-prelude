var _finalVol = global.musicVolume * global.masterVolume;

if songAsset != targetSongAsset {
	
	if audio_exists(targetSongAsset){

		songInstance = audio_play_sound(targetSongAsset, 4, true)
	
		audio_sound_gain(songInstance, 0, 1)
		fadeInInstanceVolume = 0;
	
		}
		
		songAsset = targetSongAsset

}
	
	
if audio_is_playing(songInstance) {

	if startFadeInTime > 0 {
	
		if fadeInInstanceVolume < 1 {fadeInInstanceVolume += 1/startFadeInTime} else {fadeInInstanceVolume = 1}
	
	} else {

		fadeInInstanceVolume = 1;	
	
	}
	
	audio_sound_gain(songInstance, fadeInInstanceVolume * _finalVol, 0)

}