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
		
	}
	
	public function addMessage(msg:Message):Void
	{
		messages.add(msg);
		
		refreshMessages();
	}
	
	private function refreshMessages():Void
	{
		messages.forEachAlive(function(spr:FlxSprite)
		{
			spr.y -= msgOffsetY;
		});
	}
	
}