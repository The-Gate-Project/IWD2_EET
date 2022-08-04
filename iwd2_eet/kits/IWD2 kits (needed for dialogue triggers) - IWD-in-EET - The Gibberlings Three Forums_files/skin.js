/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.skins.add( 'ips', (function()
{
	return {
		editor		: { css : [ 'editor.css' ] },
		dialog		: { css : [ 'dialog.css' ] },
		templates	: { css : [ 'templates.css' ] },
		margins		: [ 0, 0, 0, 0 ],
		init : function( editor )
		{
			if ( editor.config.width && !isNaN( editor.config.width ) )
				editor.config.width -= 12;
		
			CKEDITOR.tools.extend( editor,
			{
				uiColor: null,

				getUiColor : function()
				{
					return this.uiColor;
				},

				setUiColor : function( color )
				{
					
				}
			});
		}
	};
})() );

(function()
{
	CKEDITOR.dialog ? dialogSetup() : CKEDITOR.on( 'dialogPluginReady', dialogSetup );

	function dialogSetup()
	{
		CKEDITOR.dialog.on( 'resize', function( evt )
			{
				var data = evt.data,
					width = data.width,
					height = data.height,
					dialog = data.dialog,
					contents = dialog.parts.contents;

				if ( data.skin != 'ips' )
					return;

				contents.setStyles(
					{
						width : width + 'px',
						height : height + 'px'
					});

				// Fix the size of the elements which have flexible lengths.
				setTimeout( function()
					{
						var innerDialog = dialog.parts.dialog.getChild( [ 0, 0, 0 ] ),
							body = innerDialog.getChild( 0 );

						// tc
						var el = innerDialog.getChild( 2 );
						el.setStyle( 'width', ( body.$.offsetWidth ) + 'px' );

						// bc
						el = innerDialog.getChild( 7 );
						el.setStyle( 'width', ( body.$.offsetWidth - 28 ) + 'px' );

						// ml
						el = innerDialog.getChild( 4 );
						el.setStyle( 'height', ( height + body.getChild(0).$.offsetHeight ) + 'px' );

						// mr
						el = innerDialog.getChild( 5 );
						el.setStyle( 'height', ( height + body.getChild(0).$.offsetHeight ) + 'px' );
					},
					100 );
			});
	}
})();

/**
 * The base user interface color to be used by the editor. Not all skins are
 * compatible with this setting.
 * @name CKEDITOR.config.uiColor
 * @type String
 * @default '' (empty)
 * @example
 * // Using a color code.
 * config.uiColor = '#AADC6E';
 * @example
 * // Using an HTML color name.
 * config.uiColor = 'Gold';
 */
