package;

import flixel.group.FlxSpriteGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;

/**
 * ...
 * @author ninjamuffin99
 */
class Message extends FlxSpriteGroup 
{
	private var theMessage:FlxText;
	private var username:FlxText;

	public function new(X:Float=0, Y:Float=0, userName:String = "username", message:String = "Test Message", textColor:FlxColor) 
	{
		super(X, Y);

		username = new FlxText(0, 0, 0, userName, 16);
		username.color = textColor;
		username.font = AssetPaths.ARIALBD__TTF;
		add(username);

		theMessage = new FlxText(username.x + username.width - 3, 0, 0, ": " + message, 16);
		theMessage.font = AssetPaths.ARIAL__TTF;
		add(theMessage);
	}
	
}