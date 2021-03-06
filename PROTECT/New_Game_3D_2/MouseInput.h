#pragma once
#include "Common.h"

class MouseInput
{
public:
	~MouseInput();


	void Update();

	static MouseInput &MouseInputInstance()
	{
		static MouseInput instance;
		return instance;
	}

	// 押された瞬間
	bool MousePush(int _mouseInput);
	// 押され続けているか
	bool MousePresed(int _mouseInput);
	// 離された瞬間
	bool MouseRelease(int _mouseInput);

private:
	MouseInput();
	
	int nowInput;
	int prevInput;

};


#define MOUSE_INPUT			MouseInput::MouseInputInstance()
