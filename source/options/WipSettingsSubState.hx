package options;

import options.Option;

class WipSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = Language.getPhrase('wip_menu', 'WIP Settings');
		rpcTitle = 'WIP Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Frutiger Aero UI', //Name
			'WIP setting for an attempt at implementing Frutiger Aero into Z-Slice', //Description
			'faUI', //Save data variable name
			BOOL); //Variable type
		addOption(option);

		super();
	}
}