#pragma once

class DefenseBase;
class DefenseWall;
class DefenseAtackBall;
class DefenseSoldier;
class DefenseFire;
class DefenseBuyObject;

class Player;
class Enemy;
class MediumBoss;
class Boss;
class CharacterBase;

class SoundEffect;

enum SOUND_EFFECT_DEFENSE
{
	PURCASE,
	CHOICE,
	DECISION,
	INSTALLATION,
	CANSEL,
	ENTRYSHOP,
	CALL_ENTRY,
	CALL_BYE,
};

class DefenseManager
{
public:
	DefenseManager();
	~DefenseManager();

	void Init();
	void Update(CharacterBase *_player, CharacterBase *_small, CharacterBase *_medium, CharacterBase *_boss);
	void Draw();
	void ShopUpdate(CharacterBase *_player);
	void ShopDraw();

	void Release();

	
	// ゲッター
	bool GetLetsShop() { return isDefenseShoppingMode; }

	static int GetOpenShopEntry() { return nyutenShopAnimationCount; }
	static int GetCloseShopEntry() { return godbyeShopAnimationCount; }

private:
	const static int ITEM_MAX = 50;
	int openShopGraphHandle[10];
	int closeShopGraphHandle[18];
	bool isShopEntry;
	static int nyutenShopAnimationCount;
	static int godbyeShopAnimationCount;

	int openShopAnimationCount;
	int closeShopAnimationCount;


	int wallModelHamdel;
	int atackBallModelHandle;
	int fireModelHandle;
	int soldierModelHandle;
	int soldierBulletModelHandle;
	int buyObject;

	// 壁用変数
	list<DefenseBase*> defenseWallList;
	list<DefenseBase*> notDefenseWallList;
	list<DefenseBase*>::iterator defenseWallListIter;
	list<DefenseBase*>::iterator notDefenseWallIter;

	// 攻撃ボール用変数
	list<DefenseBase*> defenseAtackBallList;
	list<DefenseBase*> notDefenseAtackBallList;
	list<DefenseBase*>::iterator defenseAtackBallListIter;
	list<DefenseBase*>::iterator notDefenseAtackBallIter;

	// 炎攻撃用変数
	list<DefenseBase*> defenseFireList;
	list<DefenseBase*> notDefenseFireList;
	list<DefenseBase*>::iterator defenseFireListIter;
	list<DefenseBase*>::iterator notDefenseFireIter;

	// 兵士攻撃用変数
	list<DefenseBase*> defenseSoldierList;
	list<DefenseBase*> notDefenseSoldierList;
	list<DefenseBase*>::iterator defenseSoldierListIter;
	list<DefenseBase*>::iterator notDefenseSoldierIter;

	DefenseBase *defenseBuyObject;

	bool isDefenseShoppingMode;

	int backGroundGraphHadle;
	int woodGraphHamdle;
	int buyGraphHandle;
	int backGraphHandle;
	int mapGraphHandle;					// 
	int mapFrameGraphHandle;			// 
	int backGroundGraphHandle[2];		// 
	int moouseGraphHandle[2];			// 
	int itemFrameGraphHandle;			// 
	int buttonGraphHandle[4];			// 
	int nodeGraphHandle[4];

	// ライト格納用
	int lightHandle;
	int upLightHandle;

	int mouseX;
	int mouseY;
	int mouseSpeed;
	bool isChangeControlor;


	int animation;
	int itemNumber;

	int moneyGraphHandle;
	int numberGraphHandle[10];
	int possessionMoney;

	int wallSizeCount;
	int atackBallSizeCount;
	int fireSizeCount;
	int soldierSizeCount;

	bool isNodeFree[10][5];
	bool isWallNode[10][5];
	bool isAtackBallNode[10][5];
	bool isFireNode[10][5];
	bool isSoldierNode[10][5];

	bool isWall;
	bool isAtackBall;
	bool isFire;
	bool isSoldier;

	//
	int descriptionGraphHandle[2];
	int descriptionCount;
	bool isDescription;

	// 定数
	const VECTOR SHOP_INIT_POS = VGet(0, 0, 200);
	const int SHOP_LINE = 10;
	const int SHOP_COLUMN = 5;

	const float NODE_LINE = 150.0f;
	const float NODE_COLUMN = 80.0f;
	const int   NODE_DIVISION_LINE = 40;
	const int   NODE_DIVISION_COLUMN = 30;

	// 壁用定数
	const float WALL_SMALL_ENEMY_RANGE = 1.0f;
	const float WALL_MEDIUM_BOSS_RANGE = 1.0f;
	const float WALL_BOSS_RANGE = 2.5f;
	const float WALL_PLAYER_RANGE = 1.0f;
	const int WALL_SMALL_ENEMY_DAMAGE = 10;
	const int WALL_MEDIUM_BOSS_DAMAGE = 20;
	const int WALL_BOSS_DAMAGE = 30;

	// 攻撃ボール定数
	const float ATACKBALL_SMALL_ENEMY_RANGE = 3.0f;
	const float ATACKBALL_MEDIUM_BOSS_RANGE = 3.0f;
	const float ATACKBALL_BOSS_RANGE = 5.0f;
	const int   ATACKBALL_SMALL_ENEMY_ATACK_DAMAGE = 1;
	const int   ATACKBALL_MEDIUM_BOSS_ATACK_DAMAGE = 2;
	const int   ATACKBALL_BOSS_ATACK_DAMAGE = 4;
	const int   ATACKBALL_SMALL_ENEMY_HIT_DAMAGE = 2;
	const int   ATACKBALL_MEDIUM_BOSS_HIT_DAMAGE = 2;
	const int   ATACKBALL_BOSS_HIT_DAMAGE = 4;

	// 炎用定数
	const float FIRE_SMALL_ENEMY_RANGE = 4.0f;
	const float FIRE_MEDIUM_BOSS_RANGE = 4.0f;
	const float FIRE_BOSS_RANGE = 4.0f;
	const int   FIRE_SMALL_ENEMY_ATACK_DAMAGE = 1;
	const int   FIRE_MEDIUM_BOSS_ATACK_DAMAGE = 1;
	const int   FIRE_BOSS_ATACK_DAMAGE = 1;
	const int   FIRE_SMALL_ENEMY_HIT_DAMAGE = 2;
	const int   FIRE_MEDIUM_BOSS_HIT_DAMAGE = 2;
	const int   FIRE_BOSS_HIT_DAMAGE = 2;


	// 兵士用定数
	const float SOLDIER_SMALL_ENEMY_RANGE = 2.0f;
	const float SOLDIER_MEDIUM_BOSS_RANGE = 3.0f;
	const float SOLDIER_BOSS_RANGE = 4.0f;
	const int   SOLDIER_SMALL_ENEMY_ATACK_DAMAGE = 1;
	const int   SOLDIER_MEDIUM_BOSS_ATACK_DAMAGE = 1;
	const int   SOLDIER_BOSS_ATACK_DAMAGE = 1;
	const int   SOLDIER_SMALL_ENEMY_HIT_DAMAGE = 5;
	const int   SOLDIER_MEDIUM_BOSS_HIT_DAMAGE = 5;
	const int   SOLDIER_BOSS_HIT_DAMAGE = 5;

	const float SOLDIER_WITH_IN_RANGE = 9.0f;

	// スティックの傾き
	const int STICK_LEAN = 10000;
	const int MOUSE_SPEED = 20;

	// 消費金
	const int   WALL_MONEY_CONSUMPTION = 100;
	const int   ATACKBALL_MONEY_CONSUMPTION = 200;
	const int   FIRE_MONEY_CONSUMPTION = 400;
	const int   SOLDIER_MONEY_CONSUMPTION = 500;

	// UI
	const int SHOP_X = 1500;
	const int SHOP_X_2 = 100;
	const int SHOP_Y = 700;
	const int SHOP_Y_2 = 400;

	// 
	const int SHOP_BLANK = 100;
	const int SHOP_BLANK_2 = 75;

	const int NODE_BLANK = 20;

	//
	SoundEffect *se[8];

	// ショップの場所矢印
	int arrowModelHandle;
};