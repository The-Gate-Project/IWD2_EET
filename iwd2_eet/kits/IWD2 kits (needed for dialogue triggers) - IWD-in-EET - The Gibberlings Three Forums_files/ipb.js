/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

/**
 * @fileOverview Defines the {@link CKEDITOR.lang} object, for the English
 *		language. This is the base file for all translations.
 */

/**#@+
   @type String
   @example
*/

/**
 * Constains the dictionary of language entries.
 * @namespace
 */
CKEDITOR.lang['ipb'] =
{
	/**
	 * The language reading direction. Possible values are "rtl" for
	 * Right-To-Left languages (like Arabic) and "ltr" for Left-To-Right
	 * languages (like English).
	 * @default 'ltr'
	 */
	dir : isRTL ? 'rtl' : 'ltr',

	/*
	 * Screenreader titles. Please note that screenreaders are not always capable
	 * of reading non-English words. So be careful while translating it.
	 */
	editorTitle : 'Rich text editor, %1, press ALT 0 for help.',

	// ARIA descriptions.
	toolbar	: ipb.lang['ckeditor__toolbar'],
	editor	: ipb.lang['ckeditor__editor'],

	// Toolbar buttons without dialogs.
	source			: ipb.lang['ckeditor__source'],
	newPage			: ipb.lang['ckeditor__newpage'],
	save			: ipb.lang['ckeditor__save'],
	preview			: ipb.lang['ckeditor__preview'],
	cut				: ipb.lang['ckeditor__cut'],
	copy			: ipb.lang['ckeditor__copy'],
	paste			: ipb.lang['ckeditor__paste'],
	print			: ipb.lang['ckeditor__print'],
	underline		: ipb.lang['ckeditor__underline'],
	bold			: ipb.lang['ckeditor__bold'],
	italic			: ipb.lang['ckeditor__italic'],
	selectAll		: ipb.lang['ckeditor__selectall'],
	removeFormat	: ipb.lang['ckeditor__removeformat'],
	strike			: ipb.lang['ckeditor__strike'],
	subscript		: ipb.lang['ckeditor__subscript'],
	superscript		: ipb.lang['ckeditor__superscript'],
	horizontalrule	: ipb.lang['ckeditor__hr'],
	pagebreak		: ipb.lang['ckeditor__pb'],
	pagebreakAlt	: ipb.lang['ckeditor__pba'],
	unlink			: ipb.lang['ckeditor__unlink'],
	undo			: ipb.lang['ckeditor__undo'],
	redo			: ipb.lang['ckeditor__redo'],

	// Common messages and labels.
	common :
	{
		browseServer	: ipb.lang['ckeditor__browse_server'],
		url				: ipb.lang['ckeditor__url'],
		protocol		: ipb.lang['ckeditor__protocol'],
		upload			: ipb.lang['ckeditor__upload'],
		uploadSubmit	: ipb.lang['ckeditor__server_send'],
		image			: ipb.lang['ckeditor__image'],
		flash			: ipb.lang['ckeditor__flash'],
		form			: ipb.lang['ckeditor__form'],
		checkbox		: ipb.lang['ckeditor__checkbox'],
		radio			: ipb.lang['ckeditor__radiobutton'],
		textField		: ipb.lang['ckeditor__textfield'],
		textarea		: ipb.lang['ckeditor__textarea'],
		hiddenField		: ipb.lang['ckeditor__hiddenfield'],
		button			: ipb.lang['ckeditor__button'],
		select			: ipb.lang['ckeditor__selectfield'],
		imageButton		: ipb.lang['ckeditor__imagebutton'],
		notSet			: ipb.lang['ckeditor__notset'],
		id				: ipb.lang['ckeditor__id'],
		name			: ipb.lang['ckeditor__name'],
		langDir			: ipb.lang['ckeditor__languagedir'],
		langDirLtr		: ipb.lang['ckeditor__ltrlang'],
		langDirRtl		: ipb.lang['ckeditor__rtllang'],
		langCode		: ipb.lang['ckeditor__langcode'],
		longDescr		: ipb.lang['ckeditor__longdescurl'],
		cssClass		: ipb.lang['ckeditor__css_classes'],
		advisoryTitle	: ipb.lang['ckeditor__advisorytitle'],
		cssStyle		: ipb.lang['ckeditor__style'],
		ok				: ipb.lang['ckeditor__ok'],
		cancel			: ipb.lang['ckeditor__cancel'],
		close			: ipb.lang['ckeditor__close'],
		preview			: ipb.lang['ckeditor__preview'],
		generalTab		: ipb.lang['ckeditor__general'],
		advancedTab		: ipb.lang['ckeditor__advanced'],
		validateNumberFailed : ipb.lang['ckeditor__nan'],
		confirmNewPage	: ipb.lang['ckeditor__confirmreload'],
		confirmCancel	: ipb.lang['ckeditor__confirmcancel'],
		options			: ipb.lang['ckeditor__options'],
		target			: ipb.lang['ckeditor__target'],
		targetNew		: ipb.lang['ckeditor__tnewwindow'],
		targetTop		: ipb.lang['ckeditor__ttopwindow'],
		targetSelf		: ipb.lang['ckeditor__tsamewindow'],
		targetParent	: ipb.lang['ckeditor__tparentwindow'],
		langDirLTR		: ipb.lang['ckeditor__ltrlang'],
		langDirRTL		: ipb.lang['ckeditor__rtllang'],
		styles			: ipb.lang['ckeditor__style'],
		cssClasses		: ipb.lang['ckeditor__css_classes'],
		width			: ipb.lang['ckeditor__width'],
		height			: ipb.lang['ckeditor__height'],
		align			: ipb.lang['ckeditor__alignment'],
		alignLeft		: ipb.lang['ckeditor__left'],
		alignRight		: ipb.lang['ckeditor__right'],
		alignCenter		: ipb.lang['ckeditor__center'],
		alignTop		: ipb.lang['ckeditor__top'],
		alignMiddle		: ipb.lang['ckeditor__middle'],
		alignBottom		: ipb.lang['ckeditor__bottom'],
		invalidHeight	: ipb.lang['ckeditor__height_nan'],
		invalidWidth	: ipb.lang['ckeditor__width_nan'],

		// Put the voice-only part of the label in the span.
		unavailable		: '%1<span class="cke_accessibility">, ' + ipb.lang['ckeditor__unavailable'] + '</span>'
	},

	contextmenu :
	{
		options : ipb.lang['ckeditor__contextmenopt']
	},

	// Special char dialog.
	specialChar		:
	{
		toolbar		: ipb.lang['ckeditor__insertspecial'],
		title		: ipb.lang['ckeditor__selectspecial'],
		options : ipb.lang['ckeditor__speccharopts']
	},

	// Link dialog.
	link :
	{
		toolbar		: ipb.lang['ckeditor__link'],
		other 		: ipb.lang['ckeditor__linkother'],
		menu		: ipb.lang['ckeditor__editlink'],
		title		: ipb.lang['ckeditor__link'],
		info		: ipb.lang['ckeditor__link_info'],
		target		: ipb.lang['ckeditor__target'],
		upload		: ipb.lang['ckeditor__upload'],
		advanced	: ipb.lang['ckeditor__advanced'],
		type		: ipb.lang['ckeditor__link_type'],
		toUrl		: ipb.lang['ckeditor__url'],
		toAnchor	: ipb.lang['ckeditor__anchorlink'],
		toEmail		: ipb.lang['ckeditor__emaillink'],
		targetFrame		: ipb.lang['ckeditor__framelink'],
		targetPopup		: ipb.lang['ckeditor__popuplink'],
		targetFrameName	: ipb.lang['ckeditor__targframename'],
		targetPopupName	: ipb.lang['ckeditor__popupwinname'],
		popupFeatures	: ipb.lang['ckeditor__popupfeat'],
		popupResizable	: ipb.lang['ckeditor__popupresize'],
		popupStatusBar	: ipb.lang['ckeditor__popupstatusba'],
		popupLocationBar: ipb.lang['ckeditor__popuplocation'],
		popupToolbar	: ipb.lang['ckeditor__popuptoolbar'],
		popupMenuBar	: ipb.lang['ckeditor__popupmenubar'],
		popupFullScreen	: ipb.lang['ckeditor__popupfullscr'],
		popupScrollBars	: ipb.lang['ckeditor__popupscroll'],
		popupDependent	: ipb.lang['ckeditor__popupdepend'],
		popupLeft		: ipb.lang['ckeditor__popupleftpos'],
		popupTop		: ipb.lang['ckeditor__popuptoppos'],
		id				: ipb.lang['ckeditor__id'],
		langDir			: ipb.lang['ckeditor__languagedir'],
		langDirLTR		: ipb.lang['ckeditor__ltrlang'],
		langDirRTL		: ipb.lang['ckeditor__rtllang'],
		acccessKey		: ipb.lang['ckeditor__accesskey'],
		name			: ipb.lang['ckeditor__name'],
		langCode		: ipb.lang['ckeditor__langcode'],
		tabIndex		: ipb.lang['ckeditor__tab_index'],
		advisoryTitle	: ipb.lang['ckeditor__advisorytitle'],
		advisoryContentType	: ipb.lang['ckeditor__advisorytype'],
		cssClasses		: ipb.lang['ckeditor__css_classes'],
		charset			: ipb.lang['ckeditor__linked_char'],
		styles			: ipb.lang['ckeditor__style'],
		selectAnchor	: ipb.lang['ckeditor__selectanchor'],
		anchorName		: ipb.lang['ckeditor__byanchorname'],
		anchorId		: ipb.lang['ckeditor__byelementid'],
		emailAddress	: ipb.lang['ckeditor__byemailaddy'],
		emailSubject	: ipb.lang['ckeditor__emailsubject'],
		emailBody		: ipb.lang['ckeditor__emailbody'],
		noAnchors		: ipb.lang['ckeditor__noanchorsa'],
		noUrl			: ipb.lang['ckeditor__type_url'],
		noEmail			: ipb.lang['ckeditor__type_email']
	},

	// Anchor dialog
	anchor :
	{
		toolbar		: ipb.lang['ckeditor__anchor'],
		menu		: ipb.lang['ckeditor__editanchor'],
		title		: ipb.lang['ckeditor__anchorprop'],
		name		: ipb.lang['ckeditor__anchorname'],
		errorName	: ipb.lang['ckeditor__typeanchor']
	},

	// List style dialog
	list:
	{
		numberedTitle		: ipb.lang['ckeditor__numberedlist'],
		bulletedTitle		: ipb.lang['ckeditor__bulletlist'],
		type				: ipb.lang['ckeditor__type'],
		start				: ipb.lang['ckeditor__start'],
		validateStartNumber				: ipb.lang['ckeditor__list_nan'],
		circle				: ipb.lang['ckeditor__circle'],
		disc				: ipb.lang['ckeditor__disc'],
		square				: ipb.lang['ckeditor__square'],
		none				: ipb.lang['ckeditor__none'],
		notset				: ipb.lang['ckeditor__notset'],
		armenian			: ipb.lang['ckeditor__armeniannumb'],
		georgian			: ipb.lang['ckeditor__georgiannumb'],
		lowerRoman			: ipb.lang['ckeditor__lowerroman'],
		upperRoman			: ipb.lang['ckeditor__upperroman'],
		lowerAlpha			: ipb.lang['ckeditor__loweralpha'],
		upperAlpha			: ipb.lang['ckeditor__upperalpha'],
		lowerGreek			: ipb.lang['ckeditor__lowergreek'],
		decimal				: ipb.lang['ckeditor__decimal'],
		decimalLeadingZero	: ipb.lang['ckeditor__decimal_zero']
	},

	// Find And Replace Dialog
	findAndReplace :
	{
		title				: ipb.lang['ckeditor__findreplace'],
		find				: ipb.lang['ckeditor__find'],
		replace				: ipb.lang['ckeditor__replace'],
		findWhat			: ipb.lang['ckeditor__find_what'],
		replaceWith			: ipb.lang['ckeditor__replace_with'],
		notFoundMsg			: ipb.lang['ckeditor__text_notfound'],
		matchCase			: ipb.lang['ckeditor__match_case'],
		matchWord			: ipb.lang['ckeditor__match_word'],
		matchCyclic			: ipb.lang['ckeditor__match_cyclic'],
		replaceAll			: ipb.lang['ckeditor__replace_all'],
		replaceSuccessMsg	: ipb.lang['ckeditor__replace_cnt']
	},

	// Table Dialog
	// Not translating because we don't support table button in editor
	table :
	{
		toolbar		: 'Table',
		title		: 'Table Properties',
		menu		: 'Table Properties',
		deleteTable	: 'Delete Table',
		rows		: 'Rows',
		columns		: 'Columns',
		border		: 'Border size',
		widthPx		: 'pixels',
		widthPc		: 'percent',
		widthUnit	: 'width unit',
		cellSpace	: 'Cell spacing',
		cellPad		: 'Cell padding',
		caption		: 'Caption',
		summary		: 'Summary',
		headers		: 'Headers',
		headersNone		: ipb.lang['ckeditor__none'],
		headersColumn	: 'First column',
		headersRow		: 'First Row',
		headersBoth		: 'Both',
		invalidRows		: 'Number of rows must be a number greater than 0.',
		invalidCols		: 'Number of columns must be a number greater than 0.',
		invalidBorder	: 'Border size must be a number.',
		invalidWidth	: 'Table width must be a number.',
		invalidHeight	: 'Table height must be a number.',
		invalidCellSpacing	: 'Cell spacing must be a number.',
		invalidCellPadding	: 'Cell padding must be a number.',

		cell :
		{
			menu			: 'Cell',
			insertBefore	: 'Insert Cell Before',
			insertAfter		: 'Insert Cell After',
			deleteCell		: 'Delete Cells',
			merge			: 'Merge Cells',
			mergeRight		: 'Merge Right',
			mergeDown		: 'Merge Down',
			splitHorizontal	: 'Split Cell Horizontally',
			splitVertical	: 'Split Cell Vertically',
			title			: 'Cell Properties',
			cellType		: 'Cell Type',
			rowSpan			: 'Rows Span',
			colSpan			: 'Columns Span',
			wordWrap		: 'Word Wrap',
			hAlign			: 'Horizontal Alignment',
			vAlign			: 'Vertical Alignment',
			alignBaseline	: 'Baseline',
			bgColor			: ipb.lang['ckeditor__bg_color'],
			borderColor		: 'Border Color',
			data			: 'Data',
			header			: 'Header',
			yes				: 'Yes',
			no				: 'No',
			invalidWidth	: 'Cell width must be a number.',
			invalidHeight	: 'Cell height must be a number.',
			invalidRowSpan	: 'Rows span must be a whole number.',
			invalidColSpan	: 'Columns span must be a whole number.',
			chooseColor		: 'Choose'
		},

		row :
		{
			menu			: 'Row',
			insertBefore	: 'Insert Row Before',
			insertAfter		: 'Insert Row After',
			deleteRow		: 'Delete Rows'
		},

		column :
		{
			menu			: 'Column',
			insertBefore	: 'Insert Column Before',
			insertAfter		: 'Insert Column After',
			deleteColumn	: 'Delete Columns'
		}
	},

	// Button Dialog.
	// Not translating because we don't support forms in editor
	button :
	{
		title		: 'Button Properties',
		text		: 'Text (Value)',
		type		: ipb.lang['ckeditor__type'],
		typeBtn		: ipb.lang['ckeditor__button'],
		typeSbm		: 'Submit',
		typeRst		: 'Reset'
	},

	// Checkbox and Radio Button Dialogs.
	// Not translating because we don't support forms in editor
	checkboxAndRadio :
	{
		checkboxTitle : 'Checkbox Properties',
		radioTitle	: 'Radio Button Properties',
		value		: ipb.lang['ckeditor__value'],
		selected	: 'Selected'
	},

	// Form Dialog.
	// Not translating because we don't support forms in editor
	form :
	{
		title		: 'Form Properties',
		menu		: 'Form Properties',
		action		: 'Action',
		method		: 'Method',
		encoding	: 'Encoding'
	},

	// Select Field Dialog.
	// Not translating because we don't support forms in editor
	select :
	{
		title		: 'Selection Field Properties',
		selectInfo	: 'Select Info',
		opAvail		: 'Available Options',
		value		: ipb.lang['ckeditor__value'],
		size		: 'Size',
		lines		: 'lines',
		chkMulti	: 'Allow multiple selections',
		opText		: 'Text',
		opValue		: ipb.lang['ckeditor__value'],
		btnAdd		: 'Add',
		btnModify	: 'Modify',
		btnUp		: 'Up',
		btnDown		: 'Down',
		btnSetValue : 'Set as selected value',
		btnDelete	: ipb.lang['ckeditor__delete']
	},

	// Textarea Dialog.
	// Not translating because we don't support forms in editor
	textarea :
	{
		title		: 'Textarea Properties',
		cols		: 'Columns',
		rows		: 'Rows'
	},

	// Text Field Dialog.
	// Not translating because we don't support forms in editor
	textfield :
	{
		title		: 'Text Field Properties',
		name		: ipb.lang['ckeditor__name'],
		value		: ipb.lang['ckeditor__value'],
		charWidth	: 'Character Width',
		maxChars	: 'Maximum Characters',
		type		: ipb.lang['ckeditor__type'],
		typeText	: 'Text',
		typePass	: 'Password'
	},

	// Hidden Field Dialog.
	// Not translating because we don't support forms in editor
	hidden :
	{
		title	: 'Hidden Field Properties',
		name	: ipb.lang['ckeditor__name'],
		value	: ipb.lang['ckeditor__value']
	},

	// Image Dialog.
	image :
	{
		title		: ipb.lang['ckeditor__image_prop'],
		titleButton	: ipb.lang['ckeditor__imagebutton_p'],
		menu		: ipb.lang['ckeditor__image_prop'],
		infoTab		: ipb.lang['ckeditor__image_info'],
		btnUpload	: ipb.lang['ckeditor__server_send'],
		upload		: ipb.lang['ckeditor__upload'],
		alt			: ipb.lang['ckeditor__alt_text'],
		lockRatio	: ipb.lang['ckeditor__lock_ratio'],
		unlockRatio	: ipb.lang['ckeditor__unlock_ratio'],
		resetSize	: ipb.lang['ckeditor__reset_size'],
		border		: ipb.lang['ckeditor__border'],
		hSpace		: ipb.lang['ckeditor__hspace'],
		vSpace		: ipb.lang['ckeditor__vspace'],
		alertUrl	: ipb.lang['ckeditor__image_url'],
		linkTab		: ipb.lang['ckeditor__link'],
		button2Img	: ipb.lang['ckeditor__buttontoimage'],
		img2Button	: ipb.lang['ckeditor__imagetobutton'],
		urlMissing	: ipb.lang['ckeditor__missingimgurl'],
		validateBorder	: ipb.lang['ckeditor__border_nan'],
		validateHSpace	: ipb.lang['ckeditor__hspace_nan'],
		validateVSpace	: ipb.lang['ckeditor__vspace_nan']
	},

	// Flash Dialog
	// Not translating because we don't support flash in editor
	flash :
	{
		properties		: ipb.lang['ckeditor__flash_prop'],
		propertiesTab	: ipb.lang['ckeditor__properties'],
		title			: ipb.lang['ckeditor__flash_prop'],
		chkPlay			: 'Auto Play',
		chkLoop			: 'Loop',
		chkMenu			: 'Enable Flash Menu',
		chkFull			: 'Allow Fullscreen',
 		scale			: 'Scale',
		scaleAll		: 'Show all',
		scaleNoBorder	: 'No Border',
		scaleFit		: 'Exact Fit',
		access			: 'Script Access',
		accessAlways	: 'Always',
		accessSameDomain: 'Same domain',
		accessNever		: 'Never',
		alignAbsBottom	: 'Abs Bottom',
		alignAbsMiddle	: 'Abs Middle',
		alignBaseline	: 'Baseline',
		alignTextTop	: 'Text Top',
		quality			: 'Quality',
		qualityBest		: 'Best',
		qualityHigh		: 'High',
		qualityAutoHigh	: 'Auto High',
		qualityMedium	: 'Medium',
		qualityAutoLow	: 'Auto Low',
		qualityLow		: 'Low',
		windowModeWindow: 'Window',
		windowModeOpaque: 'Opaque',
		windowModeTransparent : 'Transparent',
		windowMode		: 'Window mode',
		flashvars		: 'Variables for Flash',
		bgcolor			: ipb.lang['ckeditor__bg_color'],
		hSpace			: ipb.lang['ckeditor__hspace'],
		vSpace			: ipb.lang['ckeditor__vspace'],
		validateSrc		: 'URL must not be empty.',
		validateHSpace	: ipb.lang['ckeditor__hspace_nan'],
		validateVSpace	: ipb.lang['ckeditor__vspace_nan']
	},

	// Speller Pages Dialog
	// Not translating because we don't support spell checker in editor
	spellCheck :
	{
		toolbar			: 'Check Spelling',
		title			: 'Spell Check',
		notAvailable	: 'Sorry, but service is unavailable now.',
		errorLoading	: 'Error loading application service host: %s.',
		notInDic		: 'Not in dictionary',
		changeTo		: 'Change to',
		btnIgnore		: ipb.lang['ckeditor__ignore'],
		btnIgnoreAll	: ipb.lang['ckeditor__ignore_all'],
		btnReplace		: ipb.lang['ckeditor__replace'],
		btnReplaceAll	: ipb.lang['ckeditor__replace_all'],
		btnUndo			: ipb.lang['ckeditor__undo'],
		noSuggestions	: '- No suggestions -',
		progress		: 'Spell check in progress...',
		noMispell		: 'Spell check complete: No misspellings found',
		noChanges		: 'Spell check complete: No words changed',
		oneChange		: 'Spell check complete: One word changed',
		manyChanges		: 'Spell check complete: %1 words changed',
		ieSpellDownload	: 'Spell checker not installed. Do you want to download it now?'
	},

	smiley :
	{
		toolbar	: ipb.lang['ckeditor__smiley'],
		title	: ipb.lang['ckeditor__insertsmilie'],
		options : ipb.lang['ckeditor__smileyopts']
	},

	elementsPath :
	{
		eleLabel : ipb.lang['ckeditor__elementspath'],
		eleTitle : ipb.lang['ckeditor__xelements']
	},

	numberedlist	: ipb.lang['ckeditor__insdelnumlist'],
	bulletedlist	: ipb.lang['ckeditor__insdelbullist'],
	indent			: ipb.lang['ckeditor__inc_indent'],
	outdent			: ipb.lang['ckeditor__dec_indent'],

	justify :
	{
		left	: ipb.lang['ckeditor__alignleft'],
		center	: ipb.lang['ckeditor__center'],
		right	: ipb.lang['ckeditor__alignright'],
		block	: ipb.lang['ckeditor__justify']
	},

	blockquote : ipb.lang['ckeditor__blockquote'],

	clipboard :
	{
		title		: ipb.lang['ckeditor__paste'],
		cutError	: ipb.lang['ckeditor__paste_err1'],
		copyError	: ipb.lang['ckeditor__paste_err2'],
		pasteMsg	: ipb.lang['ckeditor__paste_box'],
		securityMsg	: ipb.lang['ckeditor__paste_err3'],
		pasteArea	: ipb.lang['ckeditor__paste_area']
	},

	pastefromword :
	{
		confirmCleanup	: ipb.lang['ckeditor__clean_word'],
		toolbar			: ipb.lang['ckeditor__paste_word'],
		title			: ipb.lang['ckeditor__paste_word'],
		error			: ipb.lang['ckeditor__nocleanword']
	},

	pasteText :
	{
		button	: ipb.lang['ckeditor__paste_ptext'],
		title	: ipb.lang['ckeditor__paste_ptext']
	},

	templates :
	{
		button			: ipb.lang['ckeditor__templates'],
		title			: ipb.lang['ckeditor__contenttemps'],
		options 		: ipb.lang['ckeditor__templateopts'],
		insertOption	: ipb.lang['ckeditor__repactconts'],
		selectPromptMsg	: ipb.lang['ckeditor__whichtempl'],
		emptyListMsg	: ipb.lang['ckeditor__notemplates']
	},

	showBlocks : ipb.lang['ckeditor__show_blocks'],

	stylesCombo :
	{
		label		: ipb.lang['ckeditor__styles'],
		panelTitle	: ipb.lang['ckeditor__format_styles'],
		panelTitle1	: ipb.lang['ckeditor__block_styles'],
		panelTitle2	: ipb.lang['ckeditor__inline_styles'],
		panelTitle3	: ipb.lang['ckeditor__object_styles']
	},

	format :
	{
		label		: ipb.lang['ckeditor__formaat'],
		panelTitle	: ipb.lang['ckeditor__para_format'],

		tag_p		: ipb.lang['ckeditor__normal'],
		tag_pre		: ipb.lang['ckeditor__formatted'],
		tag_address	: ipb.lang['ckeditor__address'],
		tag_h1		: ipb.lang['ckeditor__heading'] + ' 1',
		tag_h2		: ipb.lang['ckeditor__heading'] + ' 2',
		tag_h3		: ipb.lang['ckeditor__heading'] + ' 3',
		tag_h4		: ipb.lang['ckeditor__heading'] + ' 4',
		tag_h5		: ipb.lang['ckeditor__heading'] + ' 5',
		tag_h6		: ipb.lang['ckeditor__heading'] + ' 6',
		tag_div		: ipb.lang['ckeditor__normal_div']
	},

	div :
	{
		title				: ipb.lang['ckeditor__divcontainer'],
		toolbar				: ipb.lang['ckeditor__divcontainer'],
		cssClassInputLabel	: ipb.lang['ckeditor__css_classes'],
		styleSelectLabel	: ipb.lang['ckeditor__style'],
		IdInputLabel		: ipb.lang['ckeditor__id'],
		languageCodeInputLabel	: ipb.lang['ckeditor__langcode'],
		inlineStyleInputLabel	: ipb.lang['ckeditor__inlinestyle'],
		advisoryTitleInputLabel	: ipb.lang['ckeditor__advisorytitle'],
		langDirLabel		: ipb.lang['ckeditor__languagedir'],
		langDirLTRLabel		: ipb.lang['ckeditor__ltrlang'],
		langDirRTLLabel		: ipb.lang['ckeditor__rtllang'],
		edit				: ipb.lang['ckeditor__edit_div'],
		remove				: ipb.lang['ckeditor__remove_div']
  	},

	iframe :
	{
		title		: ipb.lang['ckeditor__iframeprops'],
		toolbar		: ipb.lang['ckeditor__iframe'],
		noUrl		: ipb.lang['ckeditor__iframeurl'],
		scrolling	: ipb.lang['ckeditor__iframescroll'],
		border		: ipb.lang['ckeditor__iframeborder']
	},

	font :
	{
		label		: ipb.lang['ckeditor__font'],
		voiceLabel	: ipb.lang['ckeditor__font'],
		panelTitle	: ipb.lang['ckeditor__font_name']
	},

	fontSize :
	{
		label		: ipb.lang['ckeditor__size'],
		voiceLabel	: ipb.lang['ckeditor__font_size'],
		panelTitle	: ipb.lang['ckeditor__font_size']
	},

	colorButton :
	{
		textColorTitle	: ipb.lang['ckeditor__text_color'],
		bgColorTitle	: ipb.lang['ckeditor__bg_color'],
		panelTitle		: ipb.lang['ckeditor__colors'],
		auto			: ipb.lang['ckeditor__automatic'],
		more			: ipb.lang['ckeditor__more_colors']
	},

	colors :
	{
		'000' : ipb.lang['ckcolor__black'],
		'800000' : ipb.lang['ckcolor__maroon'],
		'8B4513' : ipb.lang['ckcolor__sadbrown'],
		'2F4F4F' : ipb.lang['ckcolor__dsgray'],
		'008080' : ipb.lang['ckcolor__teal'],
		'000080' : ipb.lang['ckcolor__navy'],
		'4B0082' : ipb.lang['ckcolor__indigo'],
		'696969' : ipb.lang['ckcolor__darkgray'],
		'B22222' : ipb.lang['ckcolor__firebrick'],
		'A52A2A' : ipb.lang['ckcolor__brown'],
		'DAA520' : ipb.lang['ckcolor__goldenrod'],
		'006400' : ipb.lang['ckcolor__darkgreen'],
		'40E0D0' : ipb.lang['ckcolor__turquoise'],
		'0000CD' : ipb.lang['ckcolor__medblue'],
		'800080' : ipb.lang['ckcolor__purple'],
		'808080' : ipb.lang['ckcolor__gray'],
		'F00' : ipb.lang['ckcolor__red'],
		'FF8C00' : ipb.lang['ckcolor__darkorange'],
		'FFD700' : ipb.lang['ckcolor__gold'],
		'008000' : ipb.lang['ckcolor__green'],
		'0FF' : ipb.lang['ckcolor__cyan'],
		'00F' : ipb.lang['ckcolor__blue'],
		'EE82EE' : ipb.lang['ckcolor__violet'],
		'A9A9A9' : ipb.lang['ckcolor__dimgray'],
		'FFA07A' : ipb.lang['ckcolor__lightsalmon'],
		'FFA500' : ipb.lang['ckcolor__orange'],
		'FFFF00' : ipb.lang['ckcolor__yellow'],
		'00FF00' : ipb.lang['ckcolor__lime'],
		'AFEEEE' : ipb.lang['ckcolor__paleturq'],
		'ADD8E6' : ipb.lang['ckcolor__lightblue'],
		'DDA0DD' : ipb.lang['ckcolor__plum'],
		'D3D3D3' : ipb.lang['ckcolor__lightgray'],
		'FFF0F5' : ipb.lang['ckcolor__lavender'],
		'FAEBD7' : ipb.lang['ckcolor__antique'],
		'FFFFE0' : ipb.lang['ckcolor__lightyellow'],
		'F0FFF0' : ipb.lang['ckcolor__honeydew'],
		'F0FFFF' : ipb.lang['ckcolor__azure'],
		'F0F8FF' : ipb.lang['ckcolor__aliceblue'],
		'E6E6FA' : ipb.lang['ckcolor__reglavender'],
		'FFF' : ipb.lang['ckcolor__white']
	},

	scayt :
	{
		title			: ipb.lang['ckeditor__scayt'],
		opera_title		: ipb.lang['ckeditor__nooperalol'],
		enable			: ipb.lang['ckeditor__enablescayt'],
		disable			: ipb.lang['ckeditor__disablescayt'],
		about			: ipb.lang['ckeditor__aboutscayt'],
		toggle			: ipb.lang['ckeditor__togglescayt'],
		options			: ipb.lang['ckeditor__options'],
		langs			: ipb.lang['ckeditor__languages'],
		moreSuggestions	: ipb.lang['ckeditor__moresuggs'],
		ignore			: ipb.lang['ckeditor__ignore'],
		ignoreAll		: ipb.lang['ckeditor__ignore_all'],
		addWord			: ipb.lang['ckeditor__add_word'],
		emptyDic		: ipb.lang['ckeditor__dict_name'],

		optionsTab		: ipb.lang['ckeditor__options'],
		allCaps			: ipb.lang['ckeditor__ignoreallcaps'],
		ignoreDomainNames : ipb.lang['ckeditor__ignoredomains'],
		mixedCase		: ipb.lang['ckeditor__ignoremixedc'],
		mixedWithDigits	: ipb.lang['ckeditor__ignorewnumber'],

		languagesTab	: ipb.lang['ckeditor__languages'],

		dictionariesTab	: ipb.lang['ckeditor__dictionaries'],
		dic_field_name	: ipb.lang['ckeditor__diction_name'],
		dic_create		: ipb.lang['ckeditor__create'],
		dic_restore		: ipb.lang['ckeditor__restore'],
		dic_delete		: ipb.lang['ckeditor__delete'],
		dic_rename		: ipb.lang['ckeditor__rename'],
		dic_info		: ipb.lang['ckeditor__dict_cookie'],

		aboutTab		: ipb.lang['ckeditor__about']
	},

	about :
	{
		title		: ipb.lang['ckeditor__about_ck'],
		dlgTitle	: ipb.lang['ckeditor__about_ck'],
		moreInfo	: ipb.lang['ckeditor__licvisitsite'],
		copy		: ipb.lang['ckeditor__copyright']
	},

	maximize : ipb.lang['ckeditor__maximize'],
	minimize : ipb.lang['ckeditor__minimize'],

	fakeobjects :
	{
		anchor		: ipb.lang['ckeditor__anchor'],
		flash		: ipb.lang['ckeditor__flashanima'],
		iframe		: ipb.lang['ckeditor__iframe'],
		hiddenfield	: ipb.lang['ckeditor__hiddenfield'],
		unknown		: ipb.lang['ckeditor__unknownobj']
	},

	resize : ipb.lang['ckeditor__dragtoresize'],

	colordialog :
	{
		title		: ipb.lang['ckeditor__selectcolor'],
		options		: ipb.lang['ckeditor__color_options'],
		highlight	: ipb.lang['ckeditor__highlight'],
		selected	: ipb.lang['ckeditor__selectedcolor'],
		clear		: ipb.lang['ckeditor__clear']
	},

	toolbarCollapse	: ipb.lang['ckeditor__collapsetools'],
	toolbarExpand	: ipb.lang['ckeditor__expandtools'],

	bidi :
	{
		ltr : ipb.lang['ckeditor__bidiltr'],
		rtl : ipb.lang['ckeditor__bidirtl']
	}
};
