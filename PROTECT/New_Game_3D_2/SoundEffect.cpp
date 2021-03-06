#include "Common.h"

SoundEffect::SoundEffect(const char * _name)
{
	soundEffectMusicHandle = LoadSoundMem(_name);
	// 音量の設定
	ChangeVolumeSoundMem(255 * 80 / 100, soundEffectMusicHandle);
	isPronunciation = false;
}

SoundEffect::~SoundEffect()
{

}

void SoundEffect::PlaySoundEffect()
{
	// 再生
	PlaySoundMem(soundEffectMusicHandle, DX_PLAYTYPE_BACK, TRUE);
}

void SoundEffect::OnePlaySoundEffect()
{
	// 一回だけ再生
	soundEffectMusicCount = 0;
	soundEffectMusicCount++;

	if (soundEffectMusicCount == 1 && !isPronunciation)
	{
		isPronunciation = true;
		PlaySoundMem(soundEffectMusicHandle, DX_PLAYTYPE_BACK, TRUE);
	}

}

void SoundEffect::StopSoundEffect()
{
	// 停止
	StopSoundMem(soundEffectMusicHandle);
	isPronunciation = false;
}

void SoundEffect::Release()
{
	// 解放
	DeleteSoundMem(soundEffectMusicHandle);
	soundEffectMusicHandle = NULL;
}
