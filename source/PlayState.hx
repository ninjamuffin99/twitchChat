package;

import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create():Void
	{
		var mess:Message = new Message(10, 10, "dumbass");
		add(mess);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
