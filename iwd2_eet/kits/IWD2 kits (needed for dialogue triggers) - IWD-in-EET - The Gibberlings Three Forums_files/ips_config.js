/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

/**
 * Configurations for IP.Board (default)
 */
 
CKEDITOR.editorConfig = function( config )
{
	/* Styles */
	config.skin   = 'ips';
	config.uiColor = '#ebebeb';
	
	/* RTL */
	if( isRTL )
	{
		config.contentsLangDirection	= 'rtl';
	}
	
	CKEDITOR.lang.languages.ipb		= 1;
	config.language					= 'ipb';
	
	/* Disable width resize (breaks IE8)*/
	if ( ! Prototype.Browser.IE8 )
	{
		config.resize_maxWidth = '100%';
	}
	
	/* Use p */
	//config.enterMode      = CKEDITOR.ENTER_P;
	//config.forceEnterMode = false;
	//config.shiftEnterMode = CKEDITOR.ENTER_BR;
	
	/* Hide advanced options */
	config.linkShowAdvancedTab = false;
	config.linkShowTargetTab   = false;
	
	/* Editor autosave frequency in milliseconds */
	config.autoAjaxSaveInterval = 120000;
	
	/*config.tabSpaces = 4;*/
	config.tabIndex  = 25;
	
	/* Remove format stuff */
	config.removeFormatTags = 'b,big,pre,code,del,dfn,em,font,i,ins,kbd,q,samp,small,span,strike,strong,sub,sup,tt,u,var,h1,h2,h3,h4';
	
	/* Use numerical entities instead of named entities */
	//config.entities_processNumerical = 'force';
	
	/* Hide elements path body > strong etc, and the right click context menu */
	IPS_remove_plugins.push('a11yhelp');
	IPS_remove_plugins.push('elementspath');
	IPS_remove_plugins.push('contextmenu');
	IPS_remove_plugins.push('flash');
	IPS_remove_plugins.push('filebrowser');
	IPS_remove_plugins.push('iframe');
	IPS_remove_plugins.push('scayt');
	IPS_remove_plugins.push('smiley');
	IPS_remove_plugins.push('table');
	IPS_remove_plugins.push('tabletools');
	IPS_remove_plugins.push('wsc');
	
	config.removePlugins = IPS_remove_plugins.join(',');
	
	/* Only use font-sizes we recognize */
	config.fontSize_sizes	= '8/8px;10/10px;12/12px;14/14px;18/18px;24/24px;36/36px;48/48px';
	
	/* What are we showing? */
	IPS_extra_plugins.push('ipssourcearea');
	IPS_extra_plugins.push('ipsbbcode');
	IPS_extra_plugins.push('ipsquote');
	IPS_extra_plugins.push('ipscode');
	IPS_extra_plugins.push('ipsmedia');
	IPS_extra_plugins.push('ipsautosave');
	
	if ( IPS_smiles['count'] )
	{
		IPS_extra_plugins.push('ipsemoticon');
	}
	
	IPS_extra_plugins.push('ipsoptions');
	
	if ( inACP )
	{
		IPS_extra_plugins.push('pastefromword');
	}
	
	if ( jsDebug )
	{
		if ( config.IPS_BBCODE_BUTTONS != 'ShowBlocks' )
		{
		config.IPS_BBCODE_BUTTONS.push('ShowBlocks');
		}
	}
	
	//IPS_extra_plugins.push('ipsimage');
	
	/* Register our custom plug ins */	
	config.extraPlugins = IPS_extra_plugins.join(',');
	
	config.disableNativeSpellChecker = false;
	
	/* Disables editor allowing images, etc. to be resized */
	config.disableObjectResizing = true;

	/* Define tool bars */
	config.toolbar = new Array( 'ipsfull', 'ipsmini', 'ipsacp' );

	/* Retain font coloring
	 * Ticket: 845336
	 * Link: http://docs.cksource.com/CKEditor_3.x/Howto/Paste_Font_Styles
	 */
	config.pasteFromWordRemoveFontStyles = false;
	
	config.toolbar_ipsfull =
	[
		['Ipssource', 'RemoveFormat', 'Ipsbbcode'], [ '-', 'Font', 'FontSize'], [ '-', 'TextColor', 'Ipsemoticon', 'Ipsmedia' ], ['-','Find', 'Replace'], '-', ['Undo', 'Redo'], '-', ['Copy', 'Paste', 'PasteText', 'PasteFromWord' ], ['-', 'Ipsoptions'],
		'/',
		['Bold', 'Italic', 'Underline', 'Strike' ], ['Subscript', 'Superscript'], ['BulletedList', 'NumberedList'],
		['Link', 'Unlink', 'Image', 'Ipscode', 'Ipsquote' ], config.IPS_BBCODE_BUTTONS, ['Outdent', 'Indent', 'JustifyLeft','JustifyCenter','JustifyRight']
	
	];

	config.toolbar_ipsmini =
	[
		['Ipssource', 'RemoveFormat' ], ['Bold', 'Italic', 'Underline', 'Strike' ], ['BulletedList'], ['Font'], ['TextColor'], ['Link', 'Unlink', 'Image', '-', 'Ipsmedia', '-', 'Ipscode', 'Ipsquote' ]
	];
	
	config.toolbar_ipsacp =
	[
		['Ipssource', 'RemoveFormat', 'Ipsbbcode'], [ '-', 'Font', 'FontSize'], [ '-', 'TextColor', 'Ipsemoticon', 'Ipsmedia' ], ['-','Find', 'Replace'], '-', ['Undo', 'Redo'], '-', ['Copy', 'Paste', 'PasteText', 'PasteFromWord' ],
		'/',
		['Bold', 'Italic', 'Underline', 'Strike' ], ['Subscript', 'Superscript'], ['BulletedList', 'NumberedList'],
		['Link', 'Unlink', 'Image', 'Ipscode', 'Ipsquote' ], config.IPS_BBCODE_BUTTONS, ['Outdent', 'Indent', 'JustifyLeft','JustifyCenter','JustifyRight']
	
	];

	
};
