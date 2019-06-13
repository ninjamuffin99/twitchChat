package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText.FlxTextFormat;
import flixel.text.FlxText.FlxTextFormatMarkerPair;

class PlayState extends FlxState
{
	private var mess:MsgGroup;
	
	
	private var twitchColors:Array<FlxTextFormat> =
	[
		new FlxTextFormat(0xff0000),
		new FlxTextFormat(0x0000ff),
		new FlxTextFormat(0x008000),
		new FlxTextFormat(0xb22222),
		new FlxTextFormat(0xff7f50),
		new FlxTextFormat(0x9acd32),
		new FlxTextFormat(0xff4500),
		new FlxTextFormat(0x2e8b57),
		new FlxTextFormat(0xdaa520),
		new FlxTextFormat(0xd2691e),
		new FlxTextFormat(0x5f9ea0),
		new FlxTextFormat(0x1e90ff),
		new FlxTextFormat(0xff69b4),
		new FlxTextFormat(0x8a2be2),
		new FlxTextFormat(0x00ff7f)
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
			
			var theMessage:String = curUsername + ": " + ChatLogs.chat[curChat][FlxG.random.int(0, ChatLogs.chat[curChat].length)];
			
			mess.addMessage(new Message(0, 0, theMessage, FlxG.random.getObject(twitchColors), curUsername.length));
		}
		
	}
	
	//GET TEXT TO SPEACH GOING
	//AND OTHER TWITCH STYLE NOTIFACATIONS
}
