#include "Common.h"

EffectDeathBlow_Ruby::EffectDeathBlow_Ruby()
{

}

EffectDeathBlow_Ruby::~EffectDeathBlow_Ruby()
{

}

void EffectDeathBlow_Ruby::EffectInit()
{
	effectHandle = LoadEffekseerEffect("Effect/5/DeathBlow_Ruby.efk");

	if (effectHandle < 0)
	{
		printfDx("error\n");
	}

}

void EffectDeathBlow_Ruby::EffectUpdatePlayer(CharacterBase * _character)
{
	// 必殺技が使われれば
	if (_character->GetDeathBlowAnimationCount() == 1)
	{
		// エフェクトを再生する。
		playingEffectHandle = PlayEffekseer3DEffect(effectHandle);

		// エフェクトの拡大率を設定する。
		SetScalePlayingEffekseer3DEffect(playingEffectHandle, 6.f, 6.f, 6.f);
	}

	if (_character->GetDeathBlowAnimationCount() == 40) { StopEffekseer3DEffect(playingEffectHandle); }

	// エフェクトの位置を変える
	if (_character->GetDeathBlowAnimationCount() == 1) { SetPosPlayingEffekseer3DEffect(playingEffectHandle, _character->GetPos().x, _character->GetPos().y, _character->GetPos().z); }

	// エフェクトの回転を変える
	SetRotationPlayingEffekseer3DEffect(playingEffectHandle, 0, _character->GetAngle().y, 0);

}

void EffectDeathBlow_Ruby::EffectUpdateDefense(DefenseBase * _defense)
{
	// 防御アイテム用
	// ~特になし
}

void EffectDeathBlow_Ruby::EffectUpdateTower(Tower * _tower)
{
	// タワー用
	// ~特になし
}
