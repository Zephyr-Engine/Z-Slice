package options;

import options.Option;

class WipSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = Language.getPhrase('wip_menu', 'WIP Settings');
		rpcTitle = 'WIP Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Work in Progress Features', //Name
			'These settings are currently experimental and/or unstable. Use at your own risk.', //Description
			'openDoor', //Save data variable name
			STRING,
			['!']); //Variable type
		addOption(option);

		var option:Option = new Option('Better Recycling', //Name
			'If checked, the game will do a better way of recycling,\nmaybe helping with performance...?', //Description
			'betterRecycle', //Save data variable name
			BOOL); //Variable type
		addOption(option);

		var option:Option = new Option('Show NPS', //Name
			'If checked, the game will replace the botplay text with text that shows the NPS.', //Description
			'showNPS', //Save data variable name
			BOOL); //Variable type
		addOption(option);

		super();
	}
}