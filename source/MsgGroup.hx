package;

import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;

/**
 * ...
 * @author ninjamuffin99
 */
class MsgGroup extends FlxSpriteGroup 
{
	private var messages:FlxTypedSpriteGroup<Message>;
	public var msgOffsetY:Float = 10;

	public function new(X:Float=0, Y:Float=0) 
	{
		super(X, Y);
		
		messages = new FlxTypedSpriteGroup<Message>();
		add(messages);
		
	}
	
	public function addMessage(msg:Message):Void
	{
		messages.add(msg);
		
		messages.forEachAlive(function(spr:FlxSprite)
		{
			spr.y -= msg.height + msgOffsetY;
			if (!spr.isOnScreen())
			{
				spr.kill();
			}
		});
		
		refreshMessages();
	}
	
	private function refreshMessages():Void
	{
		
	}
	
}