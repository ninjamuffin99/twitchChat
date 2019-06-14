package;

import flixel.FlxSprite;
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

	public function new(X:Float=0, Y:Float=0, userName:String = "username", message:String = "Test Message", textColor:FlxColor, ?isMod:Bool = false) 
	{
		super(X, Y);

		var modBadge:FlxSprite = new FlxSprite();
		modBadge.makeGraphic(1, 1, FlxColor.TRANSPARENT);

		if (isMod)
		{
			modBadge.makeGraphic(15, 15, FlxColor.GREEN);
		}

		add(modBadge);

		username = new FlxText(modBadge.width + 5, 0, 0, userName, 14);
		username.color = textColor;
		username.font = AssetPaths.ARIALBD__TTF;
		add(username);

		theMessage = new FlxText(username.x + username.width - 3, 0, 0, ": " + message, 14);
		theMessage.font = AssetPaths.ARIAL__TTF;
		add(theMessage);
	}
	
}