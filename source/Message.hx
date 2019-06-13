package;

import flixel.group.FlxSpriteGroup;
import flixel.text.FlxText;

/**
 * ...
 * @author ninjamuffin99
 */
class Message extends FlxSpriteGroup 
{
	private var theMessage:FlxText;

	public function new(X:Float=0, Y:Float=0, message:String = "Test Message") 
	{
		super(X, Y);
		theMessage = new FlxText(0, 0, 0, message, 16);
		add(theMessage);
	}
	
}