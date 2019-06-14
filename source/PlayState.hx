package;

import flixel.addons.ui.FlxInputText;
import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText.FlxTextFormat;
import flixel.text.FlxText.FlxTextFormatMarkerPair;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	private var mess:MsgGroup;
	private var txtInput:FlxInputText;
	
	private var twitchColors:Array<FlxColor> =
	[
		0xff0000,
		0x0000ff,
		0x008000,
		0xb22222,
		0xff7f50,
		0x9acd32,
		0xff4500,
		0x2e8b57,
		0xdaa520,
		0xd2691e,
		0x5f9ea0,
		0x1e90ff,
		0xff69b4,
		0x8a2be2,
		0x00ff7f
	];
	
	override public function create():Void
	{
		mess = new MsgGroup(25, FlxG.height - 70);
		add(mess);

		txtInput = new FlxInputText(25, FlxG.height - 55, 300);
		txtInput.height *= 2;
		add(txtInput);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (txtInput.hasFocus && FlxG.keys.justPressed.ENTER)
		{
			mess.addMessage(new Message(8, 0, "ninjamuffin99", txtInput.text, FlxG.random.getObject(twitchColors), true));

			txtInput.text = "";
			txtInput.caretIndex = 0;
		}

		if (FlxG.random.bool(3.5))
		{
			var curChat:Int = FlxG.random.weightedPick([70, 4, 70]);
			var curUsername:String = ChatLogs.users[FlxG.random.int(0, ChatLogs.users.length)];
			
			var theMessage:String = ChatLogs.chat[curChat][FlxG.random.int(0, ChatLogs.chat[curChat].length)];
			
			mess.addMessage(new Message(0, 0, curUsername, theMessage, FlxG.random.getObject(twitchColors)));
		}
		
	}
	
	//GET TEXT TO SPEACH GOING
	//AND OTHER TWITCH STYLE NOTIFACATIONS
}
