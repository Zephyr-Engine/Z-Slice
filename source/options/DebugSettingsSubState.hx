package options;

import options.Option;

class DebugSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = Language.getPhrase('debug_menu', 'Debug Settings');
		rpcTitle = 'Debug Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Debug Features', //Name
			'These settings are meant for debugging and/or testing new features.', //Description
			'openDoor', //Save data variable name
			STRING,
			['!']); //Variable type
		addOption(option);

		var option:Option = new Option('Test Outdated Version Message', //Name
			'Tests to see if the outdated version message works. Its as simple as that.', //Description
			'outdatedTest', //Save data variable name
			BOOL); //Variable type
		addOption(option);

		super();
	}
}