#include "Common.h"

BackGroundMusic::BackGroundMusic(const char *_name)
{
	backGroundMusicHandle = LoadSoundMem(_name);
	// 音量の設定
	ChangeVolumeSoundMem(255 * 80 / 100, backGroundMusicHandle);
}

BackGroundMusic::~BackGroundMusic()
{

}

void BackGroundMusic::PlayBackGroundMusic()
{
	// 再生
	PlaySoundMem(backGroundMusicHandle, DX_PLAYTYPE_LOOP, TRUE);
}

void BackGroundMusic::OnePlayBackGroundMusic()
{
	// 一回だけ再生
	backGroundMusicCount = 0;
	backGroundMusicCount++;

	if (backGroundMusicCount == 1 && !isPronunciation)
	{
		isPronunciation = true;
		PlaySoundMem(backGroundMusicHandle, DX_PLAYTYPE_LOOP, TRUE);
	}
}

void BackGroundMusic::StopBackGroundMusic()
{
	// 停止
	StopSoundMem(backGroundMusicHandle);
	isPronunciation = false;
}

void BackGroundMusic::Release()
{
	// 解放
	DeleteSoundMem(backGroundMusicHandle);
	backGroundMusicHandle = NULL;
}
