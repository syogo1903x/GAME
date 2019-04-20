#pragma once

class EffectBase;

class EffectDeathBlow :public EffectBase
{
public:
	EffectDeathBlow();
	~EffectDeathBlow();

	void EffectInit() override;
	void EffectUpdatePlayer(CharacterBase *_character) override;
	void EffectUpdateDefense(DefenseBase *_defense) override;
	void EffectUpdateTower(Tower *_tower) override;


private:



};