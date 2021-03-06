#include "Common.h"

Coin::Coin()
{
}

// 削除
Coin::~Coin()
{
	MV1DeleteModel(itemModelHandle);
	itemModelHandle = NULL;
}

// 初期化
void Coin::Init(int model)
{
	itemModelHandle = MV1DuplicateModel(model);
	isLost = true;
	itemPos = VGet(0, -200, 0);
	// 大きさ三倍
	MV1SetScale(itemModelHandle, VGet(3, 3, 3));
	//
	isGet = false;

	rota = 0;
	// 効果音読み込み
	se = new SoundEffect("Music/SE/pickup03.mp3");

}

// 更新
void Coin::ItemUpdate(CharacterBase * _enemy)
{
	// 敵が出現していたら非表示
	if (_enemy->GetLife() > 0)
	{
		isGet = false;
	}

	// 敵が死んだら表示　かつ　回転
	if (!_enemy->GetDead())
	{
		rota = 0;
		itemPos = _enemy->GetPos();
		isLost = true;
	}
	else
	{
		// 回転
		rota += 0.25f;

		if ((int)rota % 2 == 0)itemPos.y += 0.1f;
		else itemPos.y -= 0.1f;

		isLost = false;
	}

	MV1SetRotationXYZ(itemModelHandle, VGet(0, rota, 0));

}
