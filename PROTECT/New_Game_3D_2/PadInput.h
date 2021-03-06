#pragma once
#include "Dxlib.h"

class PadInput
{
public:
	~PadInput();

	void Update(char *_padNomber);

	// 押された瞬間
	bool PadPush(char *_padNomber, int _padInputNumber);
	// 押され続けている
	bool PadPressed(char *_padNomber, int _padInputNumber);
	// 離された瞬間
	bool PadRelease(char *_padNomber, int _padInputNumber);

	static PadInput &PadInputInstance()
	{
		static PadInput instance;
		return instance;
	}

	XINPUT_STATE GetPadInput(char *_padNomber);

private:
	PadInput();
	XINPUT_STATE pad;
	XINPUT_STATE prevPad;

};

#define	PAD_INPUT			PadInput::PadInputInstance()