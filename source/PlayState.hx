package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText.FlxTextFormat;
import flixel.text.FlxText.FlxTextFormatMarkerPair;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	private var mess:MsgGroup;
	
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
		mess = new MsgGroup(0, FlxG.height - 20);
		add(mess);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (FlxG.random.bool(5))
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
