HA$PBExportHeader$n_cst_groupbox.sru
forward
global type n_cst_groupbox from nonvisualobject
end type
type ds_groupbox from n_cst_groupbox_items within n_cst_groupbox
end type
end forward

global type n_cst_groupbox from nonvisualobject
ds_groupbox ds_groupbox
end type
global n_cst_groupbox n_cst_groupbox

type variables
Public:

	//	Color constants
	CONSTANT String					HIGHLIGHTBORDER				= 'highlightborder'
	CONSTANT String					BORDERCOLOR						= 'border'
	CONSTANT String					DEFAULTIMAGETRANSPARENCY	= 'defaultimagetransparency'
	CONSTANT String					HIGHLIGHT1						= 'highlight1'
	CONSTANT String					HIGHLIGHT2						= 'highlight2'
	CONSTANT String					SELECTED1						= 'selected1'
	CONSTANT String					SELECTED2						= 'selected2'
	CONSTANT String					DISABLEDTEXT					= 'disabledtext'
	CONSTANT String					INFOTEXT							= 'infotext'
	CONSTANT String					INFOBACKGROUND					= 'infobackground'
	CONSTANT String					WINDOWTEXT						= 'windowtext'
	CONSTANT String					GETFOCUS							= 'getfocus'
	CONSTANT String					LOSEFOCUS						= 'losefocus'
	CONSTANT String					TOOLBAR							= 'toolbar'
	CONSTANT String					GRADIENT							= 'gradient'
	CONSTANT String					MENUTEXT							= 'menutext'
	CONSTANT String					THREEDDKSHADOW					= '3ddkshadow'
	CONSTANT String					THREEDLIGHT						= '3ddklight'
	CONSTANT String					WINDOWBACKGROUND				= 'windowbackground'
	CONSTANT String					ACTIVEBORDER					= 'activeborder'

	CONSTANT	Long						SUCCESS							= 1
	CONSTANT	Long						NO_ACTION						= 0
	CONSTANT Long						FAILURE							= -1

	CONSTANT Long						LEFT								= 0
	CONSTANT Long						RIGHT								= 1
	CONSTANT Long						CENTER							= 2
	CONSTANT Long						JUSTIFY							= 3

Private:

	DataWindow							idw_palette

	n_cst_dwGUI							invo_dwGUI
	n_cst_color							invo_color

	Boolean								ib_update						= TRUE
	
	String								#FontFace						= 'Tahoma'
	Long									#FontSize						= 8
	
	Long									#ToolTipDelayInitial			= 1000
	Long									#ToolTipDelayVisible			= 32000
	Boolean								#ToolTipIsBubble				= TRUE
	
	Long									ii_toolTipIsBubble			= 1
end variables

forward prototypes
public function integer of_update ()
public subroutine of_disableupdate ()
public subroutine of_enableupdate ()
private function integer of_update_titlebar (long vl_item)
private subroutine of_createitem_groupbox (long vl_item)
private function integer of_update_notitlebar (long vl_item)
private function integer of_size_text (string vs_text, boolean vb_bold, boolean vb_italic, boolean vb_underline)
public function long of_addgroupbox (string vs_text)
public function long of_addgroupbox (string vs_text, string vs_image)
public subroutine of_register (ref datawindow rdw_palette)
private function integer of_size_text (ref statictext rst_groupbox, string vs_text, boolean vb_bold, boolean vb_italic, boolean vb_underline)
public function boolean of_isenabled (long vl_item)
public function boolean of_isvisible (long vl_item)
public subroutine of_move (long vl_item, long vl_x, long vl_y)
public subroutine of_resize (long vl_item, long vl_width, long vl_height)
public subroutine of_setbackcolor (long vl_item, long vl_backcolor)
public subroutine of_setbackcolor (long vl_item, long vl_red, integer vi_green, integer vi_blue)
public subroutine of_setenabled (long vl_item, boolean vb_enabled)
public subroutine of_setimage (long vl_item, string vs_image)
public subroutine of_settext (long vl_item, string vs_text)
public subroutine of_settextalignment (long vl_item, integer vi_alignment)
public subroutine of_settextbold (long vl_item, boolean vb_bold)
public subroutine of_settextcolor (long vl_item, long vl_color)
public subroutine of_settextcolor (long vl_item, long vl_red, integer vi_green, integer vi_blue)
public subroutine of_settextitalic (long vl_item, boolean vb_italic)
public subroutine of_settextstrikeout (long vl_item, boolean vb_strikeout)
public subroutine of_settextunderline (long vl_item, boolean vb_underline)
public subroutine of_setvisible (long vl_item, boolean vb_visible)
public function boolean of_isenabled (string vs_item)
public function boolean of_isvisible (string vs_item)
public subroutine of_move (string vs_item, long vl_x, long vl_y)
public subroutine of_resize (string vs_item, long vl_width, long vl_height)
public subroutine of_setbackcolor (string vs_item, long vl_backcolor)
public subroutine of_setbackcolor (string vs_item, long vl_red, integer vi_green, integer vi_blue)
public subroutine of_setenabled (string vs_item, boolean vb_enabled)
public subroutine of_settext (string vs_item, string vs_text)
public subroutine of_settextalignment (string vs_item, integer vi_alignment)
public subroutine of_settextbold (string vs_item, boolean vb_bold)
public subroutine of_setimage (string vs_item, string vs_image)
public subroutine of_settextcolor (string vs_item, long vl_color)
public subroutine of_settextcolor (string vs_item, long vl_red, integer vi_green, integer vi_blue)
public subroutine of_settextitalic (string vs_item, boolean vb_italic)
public subroutine of_settextstrikeout (string vs_item, boolean vb_strikeout)
public subroutine of_settextunderline (string vs_item, boolean vb_underline)
public subroutine of_setvisible (string vs_item, boolean vb_visible)
public function long of_getcolor (string vs_color)
public subroutine of_setfont (long vl_item, string vs_fontface, long vl_fontsize)
public subroutine of_setfont (string vs_item, string vs_fontface, long vl_fontsize)
public subroutine of_settitlebar (long vl_item, boolean vb_titlebar)
public subroutine of_settitlebar (string vs_item, boolean vb_titlebar)
public subroutine of_setroundgroupbox (long vl_item, boolean vb_roundgroupbox)
public subroutine of_setroundgroupbox (string vs_item, boolean vb_roundgroupbox)
public subroutine of_settitlebarastab (long vl_item, boolean vb_titlebarastab)
public subroutine of_settitlebarastab (string vs_item, boolean vb_titlebarastab)
public subroutine of_setroundtitlebar (long vl_item, boolean vb_roundtitlebar)
public subroutine of_setroundtitlebar (string vs_item, boolean vb_roundtitlebar)
public subroutine of_position (long vl_item, long vl_x, long vl_y, long vl_width, long vl_height)
public subroutine of_position (string vs_item, long vl_x, long vl_y, long vl_width, long vl_height)
public function long of_addgroupbox (string vs_text, string vs_image, string vs_tooltip, long vl_x, long vl_y, long vl_width, long vl_height)
public function long of_addgroupbox (string vs_text, string vs_image, string vs_tooltip)
public function long of_addgroupbox (string vs_text, long vl_x, long vl_y, long vl_width, long vl_height)
public function long of_addgroupbox (string vs_text, string vs_image, long vl_x, long vl_y, long vl_width, long vl_height)
public function long of_replacegroupbox (string vs_groupbox)
private function string of_hideunusedparts (long vl_item, string vs_modify)
end prototypes

public function integer of_update ();//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
//	This code and accompanying materials are made available under the GPLv3
//	license which accompanies this distribution and can be found at:
//
//	http://www.gnu.org/licenses/gpl-3.0.html.
//
//	Original Author:  Christopher Harris

IF NOT ib_update THEN Return(SUCCESS)

IF NOT isValid(idw_palette) THEN Return(NO_ACTION)

idw_palette.SetRedraw(FALSE)

Long										ll_item, ll_items
ll_items									= ds_groupBox.RowCount()

FOR ll_item = 1 TO ll_items
	
	IF ds_groupBox.of_getItem_titleBar(ll_item) THEN
		of_update_titleBar(ll_item)
	ELSE
		of_update_noTitleBar(ll_item)
	END IF
	
NEXT

idw_palette.SetRedraw(TRUE)

Return(SUCCESS)
end function

public subroutine of_disableupdate ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ib_update								= FALSE

RETURN
end subroutine

public subroutine of_enableupdate ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF NOT ib_update THEN
	
	ib_update							= TRUE

	of_update()
	
END IF

RETURN
end subroutine

private function integer of_update_titlebar (long vl_item);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
//	This code and accompanying materials are made available under the GPLv3
//	license which accompanies this distribution and can be found at:
//
//	http://www.gnu.org/licenses/gpl-3.0.html.
//
//	Original Author:  Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 0 OR vl_item > ds_groupBox.RowCount() THEN Return(FAILURE)

String									ls_item
ls_item									= '_' + String(vl_item)

IF NOT ds_groupBox.of_getItem_titleBar(vl_item) THEN
	
	ds_groupBox.of_setItem_titleBarAsTab(vl_item, FALSE)
	ds_groupBox.of_setItem_roundTitleBar(vl_item, FALSE)
	
END IF

IF ds_groupBox.of_getItem_titleBarAsTab(vl_item) THEN
	ds_groupBox.of_setItem_alignment(vl_item, LEFT)
END IF

String									ls_modify		= ''

IF NOT ds_groupBox.of_getItem_visible(vl_item) THEN
	
	ls_modify							= 'rr_title' + ls_item + '.Visible="0" '															&
											+ 'rr_groupbox' + ls_item + '.Visible="0" '														&
											+ 'p_title' + ls_item + '.Visible="0" '															&
											+ 't_overlay' + ls_item + '.Visible="0" '															&
											+ 't_title' + ls_item + '.Visible="0" '															&
											+ 'l_left' + ls_item + '.Visible="0" '																&
											+ 'r_left_shadow_upper' + ls_item + '.Visible="0" '											&
											+ 'r_right_shadow_lower' + ls_item + '.Visible="0" '											&
											+ 'r_left_shadow_lower' + ls_item + '.Visible="0" '											&
											+ 'r_right_shadow_upper' + ls_item + '.Visible="0" '											&
											+ 'l_right_upper' + ls_item + '.Visible="0" '													&
											+ 'l_right_lower' + ls_item + '.Visible="0" '													&
											+ 'l_title' + ls_item + '.Visible="0" '															&
											+ 'l_bitmap' + ls_item + '.Visible="0" '
	idw_palette.Modify(ls_modify)
		
	Return(SUCCESS)

END IF

Long										ll_newWidth,	ll_newHeight

ll_newWidth								= ds_groupBox.of_getItem_rectWidth(vl_item)
ll_newHeight							= ds_groupBox.of_getItem_rectHeight(vl_item)

Long										ll_newLeft,		ll_newTop

ll_newLeft								= ds_groupBox.of_getItem_rectLeft(vl_item)
ll_newTop								= ds_groupBox.of_getItem_rectTop(vl_item)

Long										ll_titleWidth
ll_titleWidth							= of_size_text(ds_groupBox.of_getItem_text(vl_item),											&
																ds_groupBox.of_getItem_bold(vl_item),											&
																ds_groupBox.of_getItem_italic(vl_item),										&
																ds_groupBox.of_getItem_underline(vl_item))

idw_palette.SetPosition('rr_groupBox'	+ ls_item,	'detail',	FALSE)
idw_palette.SetPosition('rr_title'		+ ls_item,	'detail',	FALSE)
idw_palette.SetPosition('l_title'		+ ls_item,	'detail',	TRUE)
idw_palette.SetPosition('l_bitmap'		+ ls_item,	'detail',	TRUE)
idw_palette.SetPosition('t_title'		+ ls_item,	'detail',	TRUE)
idw_palette.SetPosition('t_overlay'		+ ls_item,	'detail',	TRUE)
idw_palette.SetPosition('p_title'		+ ls_item,	'detail',	TRUE)

Long										ll_titleY
ll_titleY								= ll_newTop

ls_modify								= ls_modify																									&
											+ 'rr_title' + ls_item																					&
											+ '.Y="' + String(ll_newTop) + '" '																	&
											+ 't_title' + ls_item																					&
											+ '.Y="' + String(ll_newTop + PixelsToUnits(3, yPixelsToUnits!)) + '" '					&
											+ 't_overlay' + ls_item																					&
											+ '.Y="' + String(ll_newTop + PixelsToUnits(3, yPixelsToUnits!)) + '" '					&
											+ 'p_title' + ls_item																					&
											+ '.Y="' + String(ll_newTop + PixelsToUnits(3, yPixelsToUnits!)) + '" '
											
ls_modify								= ls_modify																									&
											+ 'l_left' + ls_item + '.Visible="1" '																&
											+ 'rr_groupbox' + ls_item + '.Visible="1" '

//ls_modify								= ls_modify 																								&
//											+ 't_overlay' + ls_item + '.Visible="0" '															&
//											+ 'l_bitmap' + ls_item + '.Visible="0" '
											
IF ds_groupBox.of_getItem_image(vl_item) = '' THEN
//	ls_modify							= ls_modify + 'p_title' + ls_item + '.Visible="0" '
ELSE
	ls_modify							= ls_modify + 'p_title' + ls_item + '.Visible="1" '
END IF

IF ds_groupBox.of_getItem_text(vl_item) = '' THEN
//	ls_modify							= ls_modify + 't_title' + ls_item + '.Visible="0" '
//	ls_modify							= ls_modify + 'l_title' + ls_item + '.Visible="0" '
ELSE
	ls_modify							= ls_modify + 't_title' + ls_item + '.Visible="1" '
	ls_modify							= ls_modify + 'l_title' + ls_item + '.Visible="1" '
END IF

Long										ll_picX,			ll_picWidth

ll_picX									= Long(ll_newLeft + PixelsToUnits(6, xPixelsToUnits!))
ll_picWidth								= Long(idw_palette.Describe('p_title' + ls_item + '.Width'))

ls_modify								= ls_modify + 'p_title' + ls_item + '.X="' + String(ll_picX) + '" '

Long										ll_titleX

IF ds_groupBox.of_getItem_alignment(vl_item) = CENTER THEN
	ll_titleX							= ll_newLeft + ((ll_newWidth - ll_titleWidth) / 2)
ELSE
	IF ds_groupBox.of_getItem_image(vl_item) = '' THEN
		ll_titleX						= ll_picX
	ELSE
		ll_titleX						= ll_picX + ll_picWidth + PixelsToUnits(5, xPixelsToUnits!)	
	END IF
END IF

ls_modify								= ls_modify + 't_title' + ls_item + '.X="' + String(ll_titleX) + '" '
											
ls_modify								= ls_modify + 'p_title' + ls_item + '.FileName="' + ds_groupBox.of_getItem_image(vl_item) + '" '

Long										ll_shadowWidth
ll_shadowWidth							= Long(idw_palette.Describe('r_right_shadow_upper' + ls_item + '.Width'))

ls_modify								= ls_modify																									&
											+ 't_title' + ls_item + '.Width="' + String(ll_titleWidth) + '" '							&
											+ 't_title' + ls_item																					&
											+ '.Text="' + String(ds_groupBox.of_getItem_text(vl_item)) + '" '							&
											+ 't_overlay' + ls_item																					&
											+ '.Text="' + String(ds_groupBox.of_getItem_text(vl_item)) + '" '

ls_modify								= ls_modify + 't_overlay' + ls_item																	&
											+ '.BackGround.Color="' + String(ds_groupBox.of_getItem_backColor(vl_item)) + '" '

IF ds_groupBox.of_getItem_alignment(vl_item) = CENTER THEN
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Alignment="' + String(CENTER) + '" '								&
											+ 't_overlay' + ls_item + '.Alignment="' + String(CENTER) + '" '
ELSE
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Alignment="' + String(LEFT) + '" '								&
											+ 't_overlay' + ls_item + '.Alignment="' + String(LEFT) + '" '
END IF

IF ds_groupBox.of_getItem_bold(vl_item) THEN
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.Weight="' + String(700) + '" '								&
											+ 't_overlay' + ls_item + '.Font.Weight="' + String(700) + '" '
ELSE
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.Weight="' + String(400) + '" '								&
											+ 't_overlay' + ls_item + '.Font.Weight="' + String(400) + '" '
END IF

IF ds_groupBox.of_getItem_italic(vl_item) THEN
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.Italic="' + String(1) + '" '									&
											+ 't_overlay' + ls_item + '.Font.Italic="' + String(1) + '" '
ELSE
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.Italic="' + String(0) + '" '									&
											+ 't_overlay' + ls_item + '.Font.Italic="' + String(0) + '" '
END IF

IF ds_groupBox.of_getItem_underline(vl_item) THEN
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.Underline="' + String(1) + '" '								&
											+ 't_overlay' + ls_item + '.Font.Underline="' + String(1) + '" '
ELSE
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.Underline="' + String(0) + '" '								&
											+ 't_overlay' + ls_item + '.Font.Underline="' + String(0) + '" '
END IF

IF ds_groupBox.of_getItem_strikeOut(vl_item) THEN
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.StrikeThrough="' + String(1) + '" '						&
											+ 't_overlay' + ls_item + '.Font.StrikeThrough="' + String(1) + '" '
ELSE
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.StrikeThrough="' + String(0) + '" '						&
											+ 't_overlay' + ls_item + '.Font.StrikeThrough="' + String(0) + '" '
END IF

ls_modify								= ls_modify																									&
											+ 't_title' + ls_item																					&
											+ '.Font.Face="' + ds_groupBox.of_getItem_fontFace(vl_item) + '" '						&
											+ 't_overlay' + ls_item																					&
											+ '.Font.Face="' + ds_groupBox.of_getItem_fontFace(vl_item) + '" '

ls_modify								= ls_modify																									&
											+ 't_title' + ls_item																					&
											+ '.Font.Height="' + String(ds_groupBox.of_getItem_fontSize(vl_item) * -1) + '" '	&
											+ 't_overlay' + ls_item																					&
											+ '.Font.Height="' + String(ds_groupBox.of_getItem_fontSize(vl_item) * -1) + '" '

Long										ll_titleHeight
ll_titleHeight							= Long(idw_palette.Describe('rr_title' + ls_item + '.Height'))

ls_modify								= ls_modify																									&
											+ 'rr_title' + ls_item + '.Visible="1" l_title' + ls_item + '.Visible="1" '

IF ds_groupBox.of_getItem_titleBarAsTab(vl_item) THEN
		
	ll_titleWidth						= ll_titleWidth + PixelsToUnits(8, xPixelsToUnits!) 
	
	IF ds_groupBox.of_getItem_image(vl_item) = '' THEN
	ELSE
		ll_titleWidth					= ll_titleWidth + ll_picWidth + PixelsToUnits(5, xPixelsToUnits!)
	END IF

	ls_modify							= ls_modify																									&
											+ 'l_title' + ls_item																					&
											+ '.Pen.Color="' + idw_palette.Describe('rr_title' + ls_item + '.BackGround.Color') + '" '

ELSE

	ll_titleWidth						= ll_newWidth
	
	ls_modify							= ls_modify																									&
											+ 'l_title' + ls_item																					&
											+ '.Pen.Color="' + idw_palette.Describe('rr_title' + ls_item + '.Pen.Color') + '" '
END IF

ls_modify								= ls_modify + 'rr_title' + ls_item + '.Width="' + String(ll_titleWidth) + '" '
	
Long										ll_yOffSet
ll_yOffSet								= ll_titleY + ll_titleHeight - PixelsToUnits(2, yPixelsToUnits!)

ls_modify								= ls_modify																									&
											+ 'l_title' + ls_item + '.Y1="' + String(ll_yOffSet) + '" '									&
											+ 'l_title' + ls_item + '.Y2="' + String(ll_yOffSet) + '" '


Long										ll_rightEdge
//ll_rightEdge							= ll_newLeft + ll_titleWidth - PixelsToUnits(1, xPixelsToUnits!)

//	Changed rightEdge logic to convert everything to pixels and then back to units.
//	The original logic had a sporadic error where the right edge was off by 1 pixel.
//	The following logic fixed it and didn't break anything that was already working.
ll_rightEdge							= UnitsToPixels(ll_newLeft, xUnitsToPixels!)														&
											+ UnitsToPixels(ll_titleWidth, xUnitstoPixels!) - 1
											
ll_rightEdge							= PixelsToUnits(ll_rightEdge, xPixelsToUnits!)

ls_modify								= ls_modify																									&
											+ 'l_right_upper' + ls_item + '.X1="' + String(ll_rightEdge) + '" '						&
											+ 'l_right_upper' + ls_item + '.X2="' + String(ll_rightEdge) + '" '						&
											+ 'l_right_lower' + ls_item + '.X1="' + String(ll_rightEdge) + '" '						&
											+ 'l_right_lower' + ls_item + '.X2="' + String(ll_rightEdge) + '" '

ls_modify								= ls_modify																									&
											+ 'l_title' + ls_item																					&
											+ '.X1="' + String(ll_newLeft + PixelsToUnits(1, xPixelsToUnits!)) + '" '				&
											+ 'l_title' + ls_item																					&
											+ '.X2="' + String(ll_rightEdge) + '" '

ls_modify								= ls_modify																									&
											+ 'rr_title' + ls_item + '.X="' + String(ll_newLeft) + '" '
											
IF ds_groupBox.of_getItem_roundTitleBar(vl_item) THEN
	ls_modify							= ls_modify																									&
											+ 'rr_title' + ls_item + '.ellipseHeight="36" '													&
											+ 'rr_title' + ls_item + '.ellipseWidth="41" '													&
											+ 'l_right_upper' + ls_item + '.Visible="1" '													&
											+ 'r_right_shadow_upper' + ls_item + '.Visible="1" '											&
											+ 'r_left_shadow_upper' + ls_item + '.Visible="1" '											&
											+ 'r_right_shadow_upper' + ls_item + '.X="'														&
											+ String(ll_newLeft + ll_titleWidth - ll_shadowWidth - PixelsToUnits(1, xPixelsToUnits!)) + '" '
ELSE
	ls_modify							= ls_modify																									&
											+ 'rr_title' + ls_item + '.ellipseHeight="0" '													&
											+ 'rr_title' + ls_item + '.ellipseWidth="0" '
											
//	ls_modify							= ls_modify																									&
//											+ 'l_right_upper' + ls_item + '.Visible="0" '													&
//											+ 'r_right_shadow_upper' + ls_item + '.Visible="0" '											&
//											+ 'r_left_shadow_upper' + ls_item + '.Visible="0" '
END IF

ls_modify								= ls_modify																									&
											+ 'rr_groupBox' + ls_item + '.Y="' + String(ll_yOffSet) + '" '								&
											+ 'rr_groupBox' + ls_item + '.Height="' + String((ll_newTop + ll_newHeight) - ll_yOffSet) + '" '
											
ls_modify								= ls_modify																									&
											+ 'rr_groupBox' + ls_item + '.X="' + String(ll_newLeft) + '" '								&
											+ 'rr_groupBox' + ls_item + '.Width="' + String(ll_newWidth) + '" '
											
IF ds_groupBox.of_getItem_roundGroupBox(vl_item) THEN
	
	ls_modify							= ls_modify																									&
											+ 'rr_groupBox' + ls_item + '.ellipseHeight="36" '												&
											+ 'rr_groupBox' + ls_item + '.ellipseWidth="41" '												&
											+ 'r_left_shadow_lower' + ls_item + '.Visible="1" '											&
											+ 'r_right_shadow_lower' + ls_item + '.X="'														&
											+ String(ll_newLeft + ll_newWidth - ll_shadowWidth - PixelsToUnits(1, xPixelsToUnits!)) + '" '

	IF NOT ds_groupBox.of_getItem_titleBarAsTab(vl_item) THEN
		ls_modify							= ls_modify																									&
												+ 'r_right_shadow_lower' + ls_item + '.Visible="1" '											&
												+ 'l_right_lower' + ls_item + '.Visible="1" '
	END IF

ELSE

	ls_modify							= ls_modify																									&
											+ 'rr_groupBox' + ls_item + '.ellipseHeight="0" '												&
											+ 'rr_groupBox' + ls_item + '.ellipseWidth="0" '
											
//	ls_modify							= ls_modify																									&
//											+ 'r_right_shadow_lower' + ls_item + '.Visible="0" '											&
//											+ 'r_left_shadow_lower' + ls_item + '.Visible="0" '
END IF

Long										ll_tmpHeight
ll_tmpHeight							= Long(idw_palette.Describe('r_left_shadow_upper' + ls_item + '.Height'))

ls_modify								= ls_modify																									&
											+ 'r_left_shadow_upper' + ls_item																	&
											+ '.X="' + String(ll_newLeft + PixelsToUnits(1, yPixelsToUnits!)) + '" '				&
											+ 'r_left_shadow_upper' + ls_item																	&
											+ '.Y="' + String(ll_yOffSet - ll_tmpHeight) + '" '											&
											+ 'r_left_shadow_lower' + ls_item																	&
											+ '.X="' + String(ll_newLeft + PixelsToUnits(1, yPixelsToUnits!)) + '" '				&
											+ 'r_left_shadow_lower' + ls_item																	&
											+ '.Y="' + String(ll_yOffSet + PixelsToUnits(1, yPixelsToUnits!)) + '" '

ls_modify								= ls_modify																									&
											+ 'r_right_shadow_upper' + ls_item																	&
											+ '.Y="' + String(ll_yOffSet - ll_tmpHeight) + '" '											&
											+ 'r_right_shadow_lower' + ls_item																	&
											+ '.Y="' + String(ll_yOffSet + PixelsToUnits(1, yPixelsToUnits!)) + '" '

ls_modify								= ls_modify																									&
											+ 'l_left' + ls_item																						&
											+ '.X1="' + String(ll_newLeft) + '" '																&
											+ 'l_left' + ls_item																						&
											+ '.X2="' + String(ll_newLeft) + '" '																&
											+ 'l_left' + ls_item																						&
											+ '.Y1="' + String(ll_yOffSet - PixelsToUnits(7, yPixelsToUnits!)) + '" '				&
											+ 'l_left' + ls_item																						&
											+ '.Y2="' + String(ll_yOffSet + PixelsToUnits(7, yPixelsToUnits!)) + '" '				&

ls_modify								= ls_modify																									&
											+ 'l_right_upper' + ls_item																			&
											+ '.Y1="' + String(ll_yOffSet - PixelsToUnits(4, yPixelsToUnits!)) + '" '				&
											+ 'l_right_upper' + ls_item + '.Y2="' + String(ll_yOffSet) + '" '

ls_modify								= ls_modify																									&
											+ 'l_right_lower' + ls_item + '.Y1="' + String(ll_yOffSet) + '" '							&
											+ 'l_right_lower' + ls_item																			&
											+ '.Y2="' + String(ll_yOffSet +  PixelsToUnits(4, yPixelsToUnits!)) + '" '

IF ds_groupBox.of_PBVersion() >= 11.5 THEN
	IF ds_groupBox.of_getItem_enabled(vl_item) THEN
		ls_modify						= ls_modify + 'p_title' + ls_item + '.Transparency="0" '
	ELSE
		ls_modify						= ls_modify + 'p_title' + ls_item + '.Transparency="50" '
	END IF
ELSE
	//	Need to come up with a way to show enabled/disabled for version prior to 11.5
END IF
		
IF ds_groupBox.of_PBVersion() >= 12.5 THEN
	IF ds_groupBox.of_getItem_enabled(vl_item) THEN
		ls_modify						= ls_modify + 'p_title' + ls_item + '.Enabled="1" '
	ELSE
		ls_modify						= ls_modify + 'p_title' + ls_item + '.Enabled="0" '
	END IF
END IF

IF ds_groupBox.of_getItem_enabled(vl_item) THEN
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item																					&
											+ '.Color="' + String(ds_groupBox.of_getItem_color(vl_item)) + '" '						&
											+ 't_overlay' + ls_item																					&
											+ '.Color="' + String(ds_groupBox.of_getItem_color(vl_item)) + '" '
ELSE
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Color="' + String(of_getColor(DISABLEDTEXT)) + '" '			&
											+ 't_overlay' + ls_item + '.Color="' + String(of_getColor(DISABLEDTEXT)) + '" '
END IF
		
IF ds_groupBox.of_PBVersion() >= 12.5 THEN
	IF ds_groupBox.of_getItem_enabled(vl_item) THEN
		ls_modify						= ls_modify																									&
											+ 't_title' + ls_item + '.Enabled="1" '															&
											+ 't_overlay' + ls_item + '.Enabled="1" '
	ELSE
		ls_modify						= ls_modify																									&
											+ 't_title' + ls_item + '.Enabled="0" '															&
											+ 't_overlay' + ls_item + '.Enabled="0" '
	END IF
END IF

ls_modify								= of_hideUnusedParts(vl_item, ls_modify)

Long										ll_detailHeight
ll_detailHeight						= Long(idw_palette.Describe('DataWindow.Detail.Height'))

ls_modify								= ls_modify + 'DataWindow.Detail.Height="' + String(Max(ll_newTop + ll_newHeight, ll_detailHeight)) + '" '

ls_modify								= idw_palette.Modify(ls_modify)

Return(SUCCESS)
end function

private subroutine of_createitem_groupbox (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_item	= ''

IF NOT isNull(vl_item) THEN 
	ls_item								= '_' + String(vl_item)
END IF

String									ls_modify
	
ls_modify								= 'CREATE roundrectangle(band=detail '																&
											+ 'ellipseheight="36" '																					&
											+ 'ellipsewidth="41" '																					&
											+ 'x="0" '																									&
											+ 'y="0" '																									&
											+ 'height="88" '																							&
											+ 'width="1335" '																							&
											+ 'name=rr_title' + ls_item + ' '																	&
											+ 'visible="0" '																							&
											+ 'brush.hatch="8" '																						&
											+ 'brush.color="0" '																						&
											+ 'pen.style="0" '																						&
											+ 'pen.width="5" '																						&
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '								&
											+ 'background.mode="2" '																				&
											+ 'background.color="' + String(of_getColor(GRADIENT)) + '" '								&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(GRADIENT)) + '" '					&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="2" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0") '
											
ls_modify								= idw_palette.Modify(ls_modify)

ls_modify								= 'CREATE roundrectangle(band=detail '																&
											+ 'ellipseheight="36" '																					&
											+ 'ellipsewidth="41" '																					&
											+ 'x="0" '																									&
											+ 'y="84" '																									&
											+ 'height="520" '																							&
											+ 'width="1335" '																							&
											+ 'name=rr_groupbox' + ls_item + ' '																&
											+ 'visible="0" '																							&
											+ 'brush.hatch="8" '																						&
											+ 'brush.color="0" '																						&
											+ 'pen.style="0" '																						&
											+ 'pen.width="5" '																						&
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '								&
											+ 'background.mode="2" '																				&
											+ 'background.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(GRADIENT)) + '" '					&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="2" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0") '
											
ls_modify								= idw_palette.Modify(ls_modify)

ls_modify								= 'CREATE bitmap(band=detail '																		&
											+ 'filename="" '																							&
											+ 'x="55" '																									&
											+ 'y="12" '																									&
											+ 'height="64" '																							&
											+ 'width="73" '																							&
											+ 'border="0" '																							&
											+ 'name=p_title' + ls_item + ' '																		&
											+ 'visible="0" '																							&
											+ 'transparentcolor="' + String(of_getColor(DEFAULTIMAGETRANSPARENCY)) + '" '			&
											+ 'transparency="0" '																					&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0") '
											
ls_modify								= idw_palette.Modify(ls_modify)

ls_modify								= 'CREATE text(band=detail '																			&
											+ 'alignment="0" '																						&
											+ 'text="" '																								&
											+ 'border="0" '																							&
											+ 'color="' + String(of_getColor(WINDOWTEXT)) + '" '											&
											+ 'x="155" '																								&
											+ 'y="12" '																									&
											+ 'height="28" '																							&
											+ 'width="1166" '																							&
											+ 'html.valueishtml="0" '																				&
											+ 'name=t_overlay' + ls_item + ' '																	&
											+ 'visible="0" '																							&
											+ 'font.face="Tahoma" '																					&
											+ 'font.height="-8" '																					&
											+ 'font.weight="400" '																					&
											+ 'font.family="2" '																						&
											+ 'font.pitch="2" '																						&
											+ 'font.charset="0" '																					&
											+ 'background.mode="2" '																				&
											+ 'background.color="' + String(of_getColor(WINDOWBACKGROUND)) + '" '					&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(DISABLEDTEXT)) + '" '				&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="0" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0" '																			&
											+ 'transparency="0") '
											
ls_modify								= idw_palette.Modify(ls_modify)

//	2^29 is Transparent Color

ls_modify								= 'CREATE text(band=detail '																			&
											+ 'alignment="0" '																						&
											+ 'text="" '																								&
											+ 'border="0" '																							&
											+ 'color="' + String(of_getColor(WINDOWTEXT)) + '" '											&
											+ 'x="155" y="12" '																						&
											+ 'height="52" '																							&
											+ 'width="1166" '																							&
											+ 'html.valueishtml="0" '																				&
											+ 'name=t_title' + ls_item + ' '																		&
											+ 'visible="0" '																							&
											+ 'font.face="Tahoma" '																					&
											+ 'font.height="-8" '																					&
											+ 'font.weight="400" '																					&
											+ 'font.family="2" '																						&
											+ 'font.pitch="2" '																						&
											+ 'font.charset="0" '																					&
											+ 'background.mode="1" '																				&
											+ 'background.color="' + String(2^29) + '" '														&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(DISABLEDTEXT)) + '" '				&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="0" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0" '																			&
											+ 'transparency="0") '
											
ls_modify								= idw_palette.Modify(ls_modify)

ls_modify								= 'CREATE line(band=detail '																			&
											+ 'x1="0" '																									&
											+ 'x2="0" '																									&
											+ 'y1="56" '																								&
											+ 'y2="112" '																								&
											+ 'name=l_left' + ls_item + ' '																		&
											+ 'visible="0" '																							&
											+ 'pen.style="0" '																						&
											+ 'pen.width="5" '																						&
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '								&
											+ 'background.mode="2" '																				&
											+ 'background.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(DISABLEDTEXT)) + '" '				&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="0" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0") '
											
ls_modify								= idw_palette.Modify(ls_modify)

ls_modify								= 'CREATE rectangle(band=detail '																	&
											+ 'x="5" '																									&
											+ 'y="72" '																									&
											+ 'height="12" '																							&
											+ 'width="14" '																							&
											+ 'name=r_left_shadow_upper' + ls_item + ' '														&
											+ 'visible="0" '																							&
											+ 'brush.hatch="6" '																						&
											+ 'brush.color="' + String(of_getColor(GRADIENT)) + '" '										&
											+ 'pen.style="0" '																						&
											+ 'pen.width="5" '																						&
											+ 'pen.color="' + String(of_getColor(GRADIENT)) + '" '										&
											+ 'background.mode="2" '																				&
											+ 'background.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(DISABLEDTEXT)) + '" '				&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="0" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0") '

ls_modify								= idw_palette.Modify(ls_modify)

ls_modify								= 'CREATE rectangle(band=detail '																	&
											+ 'x="1317" '																								&
											+ 'y="88" '																									&
											+ 'height="12" '																							&
											+ 'width="14" '																							&
											+ 'name=r_right_shadow_lower' + ls_item + ' '													&
											+ 'visible="0" '																							&
											+ 'brush.hatch="6" '																						&
											+ 'brush.color="' + String(of_getColor(GRADIENT)) + '" '										&
											+ 'pen.style="0" '																						&
											+ 'pen.width="5" '																						&
											+ 'pen.color="' + String(of_getColor(GRADIENT)) + '" '										&
											+ 'background.mode="2" '																				&
											+ 'background.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(DISABLEDTEXT)) + '" '				&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="0" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0") '

ls_modify								= idw_palette.Modify(ls_modify)

ls_modify								= 'CREATE rectangle(band=detail '																	&
											+ 'x="5" '																									&
											+ 'y="88" '																									&
											+ 'height="12" '																							&
											+ 'width="14" '																							&
											+ 'name=r_left_shadow_lower' + ls_item + ' '														&
											+ 'visible="0" '																							&
											+ 'brush.hatch="6" '																						&
											+ 'brush.color="' + String(of_getColor(GRADIENT)) + '" '										&
											+ 'pen.style="0" '																						&
											+ 'pen.width="5" '																						&
											+ 'pen.color="' + String(of_getColor(GRADIENT)) + '" '										&
											+ 'background.mode="2" '																				&
											+ 'background.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(DISABLEDTEXT)) + '" '				&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="0" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0") '

ls_modify								= idw_palette.Modify(ls_modify)

ls_modify								= 'CREATE rectangle(band=detail '																	&
											+ 'x="1317" '																								&
											+ 'y="72" '																									&
											+ 'height="12" '																							&
											+ 'width="14" '																							&
											+ 'name=r_right_shadow_upper' + ls_item + ' '													&
											+ 'visible="0" '																							&
											+ 'brush.hatch="6" '																						&
											+ 'brush.color="' + String(of_getColor(GRADIENT)) + '" '										&
											+ 'pen.style="0" '																						&
											+ 'pen.width="5" '																						&
											+ 'pen.color="' + String(of_getColor(GRADIENT)) + '" '										&
											+ 'background.mode="2" '																				&
											+ 'background.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(DISABLEDTEXT)) + '" '				&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="0" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0") '

ls_modify								= idw_palette.Modify(ls_modify)

ls_modify								= 'CREATE line(band=detail '																			&
											+ 'x1="1330" '																								&
											+ 'x2="1330" '																								&
											+ 'y1="68" '																								&
											+ 'y2="84" '																								&
											+ 'name=l_right_upper' + ls_item + ' '																&
											+ 'visible="0" '																							&
											+ 'pen.style="0" '																						&
											+ 'pen.width="5" '																						&
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '								&
											+ 'background.mode="2" '																				&
											+ 'background.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(DISABLEDTEXT)) + '" '				&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="0" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0") '

ls_modify								= idw_palette.Modify(ls_modify)

ls_modify								= 'CREATE line(band=detail '																			&
											+ 'x1="1330" '																								&
											+ 'x2="1330" '																								&
											+ 'y1="88" '																								&
											+ 'y2="104" '																								&
											+ 'name=l_right_lower' + ls_item + ' '																&
											+ 'visible="0" '																							&
											+ 'pen.style="0" '																						&
											+ 'pen.width="5" '																						&
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '								&
											+ 'background.mode="2" '																				&
											+ 'background.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(DISABLEDTEXT)) + '" '				&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="0" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0") '

ls_modify								= idw_palette.Modify(ls_modify)

ls_modify								= 'CREATE line(band=detail '																			&
											+ 'x1="0" '																									&
											+ 'x2="1335" '																								&
											+ 'y1="84" '																								&
											+ 'y2="84" '																								&
											+ 'name=l_title' + ls_item + ' '																		&
											+ 'visible="0" '																							&
											+ 'pen.style="0" '																						&
											+ 'pen.width="5" '																						&
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '								&
											+ 'background.mode="2" '																				&
											+ 'background.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(DISABLEDTEXT)) + '" '				&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="0" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0") '

ls_modify								= idw_palette.Modify(ls_modify)

ls_modify								= 'CREATE line(band=detail '																			&
											+ 'x1="5" '																									&
											+ 'x2="1330" '																								&
											+ 'y1="84" '																								&
											+ 'y2="84" '																								&
											+ 'name=l_bitmap' + ls_item + ' '																	&
											+ 'visible="0" '																							&
											+ 'pen.style="0" '																						&
											+ 'pen.width="5" '																						&
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '								&
											+ 'background.mode="2" '																				&
											+ 'background.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.transparency="0" '																		&
											+ 'background.gradient.color="' + String(of_getColor(DISABLEDTEXT)) + '" '				&
											+ 'background.gradient.transparency="0" '															&
											+ 'background.gradient.angle="0" '																	&
											+ 'background.brushmode="0" '																			&
											+ 'background.gradient.repetition.mode="0" '														&
											+ 'background.gradient.repetition.count="0" '													&
											+ 'background.gradient.repetition.length="100" '												&
											+ 'background.gradient.focus="0" '																	&
											+ 'background.gradient.scale="100" '																&
											+ 'background.gradient.spread="100" '																&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '						&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +						&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +						&
											+ 'tooltip.enabled="1" '																				&
											+ 'tooltip.hasclosebutton="0" '																		&
											+ 'tooltip.icon="0" '																					&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '									&
											+ 'tooltip.maxwidth="0" '																				&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '								&
											+ 'tooltip.transparency="0") '

ls_modify								= idw_palette.Modify(ls_modify)

RETURN
end subroutine

private function integer of_update_notitlebar (long vl_item);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
//	This code and accompanying materials are made available under the GPLv3
//	license which accompanies this distribution and can be found at:
//
//	http://www.gnu.org/licenses/gpl-3.0.html.
//
//	Original Author:  Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 0 OR vl_item > ds_groupBox.RowCount() THEN Return(FAILURE)

String									ls_item
ls_item									= '_' + String(vl_item)

IF NOT ds_groupBox.of_getItem_titleBar(vl_item) THEN
	
	ds_groupBox.of_setItem_titleBarAsTab(vl_item, FALSE)
	ds_groupBox.of_setItem_roundTitleBar(vl_item, FALSE)

END IF

IF ds_groupBox.of_getItem_titleBarAsTab(vl_item) THEN
	ds_groupBox.of_setItem_alignment(vl_item, LEFT)
END IF

String									ls_modify		= ''

IF NOT ds_groupBox.of_getItem_visible(vl_item) THEN
	
	ls_modify							= 'rr_title' + ls_item + '.Visible="0" '															&
											+ 'rr_groupbox' + ls_item + '.Visible="0" '														&
											+ 'p_title' + ls_item + '.Visible="0" '															&
											+ 't_overlay' + ls_item + '.Visible="0" '															&
											+ 't_title' + ls_item + '.Visible="0" '															&
											+ 'l_left' + ls_item + '.Visible="0" '																&
											+ 'r_left_shadow_upper' + ls_item + '.Visible="0" '											&
											+ 'r_right_shadow_lower' + ls_item + '.Visible="0" '											&
											+ 'r_left_shadow_lower' + ls_item + '.Visible="0" '											&
											+ 'r_right_shadow_upper' + ls_item + '.Visible="0" '											&
											+ 'l_right_upper' + ls_item + '.Visible="0" '													&
											+ 'l_right_lower' + ls_item + '.Visible="0" '													&
											+ 'l_title' + ls_item + '.Visible="0" '															&
											+ 'l_bitmap' + ls_item + '.Visible="0" '
	idw_palette.Modify(ls_modify)
		
	Return(SUCCESS)
	
END IF
	
Long										ll_newWidth,	ll_newHeight

ll_newWidth								= ds_groupBox.of_getItem_rectWidth(vl_item)
ll_newHeight							= ds_groupBox.of_getItem_rectHeight(vl_item)

Long										ll_newLeft,		ll_newTop

ll_newLeft								= ds_groupBox.of_getItem_rectLeft(vl_item)
ll_newTop								= ds_groupBox.of_getItem_rectTop(vl_item)

Long										ll_titleWidth
ll_titleWidth							= of_size_text(ds_groupBox.of_getItem_text(vl_item),											&
																ds_groupBox.of_getItem_bold(vl_item),											&
																ds_groupBox.of_getItem_italic(vl_item),										&
																ds_groupBox.of_getItem_underline(vl_item))

idw_palette.SetPosition('l_title'		+ ls_item,	'detail',	TRUE)
idw_palette.SetPosition('l_bitmap'		+ ls_item,	'detail',	TRUE)
idw_palette.SetPosition('t_title'		+ ls_item,	'detail',	TRUE)
idw_palette.SetPosition('t_overlay'		+ ls_item,	'detail',	TRUE)
idw_palette.SetPosition('p_title'		+ ls_item,	'detail',	TRUE)
idw_palette.SetPosition('rr_title'		+ ls_item,	'detail',	FALSE)
idw_palette.SetPosition('rr_groupBox'	+ ls_item,	'detail',	FALSE)

Long										ll_titleY

IF ds_groupBox.of_getItem_image(vl_item) = '' THEN
	ll_titleY							= ll_newTop + PixelsToUnits(1, yPixelsToUnits!)
ELSE

	Double								ldbl_titleY
	ldbl_titleY							= (Double(UnitsToPixels(Long(idw_palette.Describe('p_title' + ls_item + '.Height')),	&
																			yUnitsToPixels!))															&
											-  Double(UnitsToPixels(Long(idw_palette.Describe('t_title' + ls_item + '.Height')),	&
																			yUnitsToPixels!))) / 2
	
	ll_titleY							= ll_newTop + PixelsToUnits(ldbl_titleY, yPixelsToUnits!)
	
	ls_modify							= ls_modify																									&
											+ 'p_title' + ls_item																					&
											+ '.Y="' + String(ll_newTop + PixelsToUnits(1, yPixelsToUnits!)) + '" '
END IF

ls_modify								= ls_modify																									&
											+ 't_title' + ls_item + '.Y="' + String(ll_titleY) + '" '									&
											+ 't_overlay' + ls_item + '.Y="' + String(ll_titleY) + '" '

Long										ll_yOffSet

ll_yOffSet								= ll_titleY + Long(idw_palette.Describe('t_overlay' + ls_item + '.Height'))

ls_modify								= ls_modify																									&
											+ 'rr_groupbox' + ls_item + '.Visible="1" '

//ls_modify								= ls_modify																									&
//											+ 'l_left' + ls_item + '.Visible="0" '																&
//											+ 'l_right_upper' + ls_item + '.Visible="0" '													&
//											+ 'l_right_lower' + ls_item + '.Visible="0" '													&
//											+ 'r_left_shadow_upper' + ls_item + '.Visible="0" '											&
//											+ 'r_left_shadow_lower' + ls_item + '.Visible="0" '											&
//											+ 'r_right_shadow_upper' + ls_item + '.Visible="0" '											&
//											+ 'r_right_shadow_lower' + ls_item + '.Visible="0" '											&
//											+ 'rr_title' + ls_item + '.Visible="0" '															&
											
ls_modify								= ls_modify																									&
											+ 'l_title' + ls_item + '.Pen.Color="' + String(ds_groupBox.of_getItem_backColor(vl_item)) + '" '
											
ls_modify								= ls_modify																									&
											+ 'l_bitmap' + ls_item + '.Pen.Color="' + String(ds_groupBox.of_getItem_backColor(vl_item)) + '" '

Long										ll_picX,			ll_picWidth

ll_picX									= Long(ll_newLeft + PixelsToUnits(12, xPixelsToUnits!))
ll_picWidth								= Long(idw_palette.Describe('p_title' + ls_item + '.Width'))

ls_modify								= ls_modify + 'p_title' + ls_item + '.X="' + String(ll_picX) + '" '

Long										ll_titleX

IF ds_groupBox.of_getItem_alignment(vl_item) = CENTER THEN
	ll_titleX							= ll_newLeft + ((ll_newWidth - ll_titleWidth - PixelsToUnits(5, xPixelsToUnits!)) / 2)
ELSE
	IF ds_groupBox.of_getItem_image(vl_item) = '' THEN
		ll_titleX						= ll_picX
	ELSE
		ll_titleX						= ll_picX + ll_picWidth + PixelsToUnits(5, xPixelsToUnits!)	
	END IF
END IF

ls_modify								= ls_modify + 't_title' + ls_item + '.X="' + String(ll_titleX) + '" '					&
											+ ls_modify + 't_overlay' + ls_item + '.X="' + String(ll_titleX) + '" '


ls_modify								= ls_modify																									&
											+ 'l_title' + ls_item																					&
											+ '.x1="' + String(ll_titleX - PixelsToUnits(5, xPixelsToUnits!)) + '" '				&
											+ 'l_title' + ls_item																					&
											+ '.x2="' + String(ll_titleX + ll_titleWidth) + '" '	

ls_modify								= ls_modify																									&
											+ 'l_bitmap' + ls_item																					&
											+ '.x1="' + String(ll_picX - PixelsToUnits(5, xPixelsToUnits!)) + '" '					&
											+ 'l_bitmap' + ls_item																					&
											+ '.x2="' + String(ll_picX + ll_picWidth + PixelsToUnits(5, xPixelsToUnits!)) + '" '	

IF ds_groupBox.of_getItem_image(vl_item) = '' THEN
//	ls_modify							= ls_modify + 'p_title' + ls_item + '.Visible="0" l_bitmap' + ls_item + '.Visible="0" '
ELSE
	ls_modify							= ls_modify + 'p_title' + ls_item + '.Visible="1" l_bitmap' + ls_item + '.Visible="1" '
END IF

IF ds_groupBox.of_getItem_text(vl_item) = '' THEN
//	ls_modify							= ls_modify + 't_title' + ls_item + '.Visible="0" '
//	ls_modify							= ls_modify + 't_overlay' + ls_item + '.Visible="0" '
//	ls_modify							= ls_modify + 'l_title' + ls_item + '.Visible="0" '
ELSE
	ls_modify							= ls_modify + 't_title' + ls_item + '.Visible="1" '
	ls_modify							= ls_modify + 't_overlay' + ls_item + '.Visible="1" '
	ls_modify							= ls_modify + 'l_title' + ls_item + '.Visible="1" '
END IF

ls_modify								= ls_modify																									&
											+ 'l_title' + ls_item + '.y1="' + String(ll_yOffSet) + '" '									&
											+ 'l_title' + ls_item + '.y2="' + String(ll_yOffSet) + '" '

ls_modify								= ls_modify																									&
											+ 'l_bitmap' + ls_item + '.y1="' + String(ll_yOffSet) + '" '								&
											+ 'l_bitmap' + ls_item + '.y2="' + String(ll_yOffSet) + '" '

ls_modify								= ls_modify																									&
											+ 'p_title' + ls_item + '.FileName="' + ds_groupBox.of_getItem_image(vl_item) + '" '

ls_modify								= ls_modify																									&
											+ 't_title' + ls_item + '.Width="' + String(ll_titleWidth) + '" '							&
											+ 't_overlay' + ls_item + '.Width="' + String(ll_titleWidth) + '" '						&
											+ 't_title' + ls_item																					&
											+ '.Text="' + String(ds_groupBox.of_getItem_text(vl_item)) + '" '							&
											+ 't_overlay' + ls_item																					&
											+ '.Text="' + String(ds_groupBox.of_getItem_text(vl_item)) + '" '

ls_modify								= ls_modify + 't_overlay' + ls_item																	&
											+ '.BackGround.Color="' + String(ds_groupBox.of_getItem_backColor(vl_item)) + '" '

IF ds_groupBox.of_getItem_alignment(vl_item) = CENTER THEN
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Alignment="' + String(CENTER) + '" '								&
											+ 't_overlay' + ls_item + '.Alignment="' + String(CENTER) + '" '
ELSE
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Alignment="' + String(LEFT) + '" '								&
											+ 't_overlay' + ls_item + '.Alignment="' + String(LEFT) + '" '
END IF

IF ds_groupBox.of_getItem_bold(vl_item) THEN
	ls_modify								= ls_modify																								&
											+ 't_title' + ls_item + '.Font.Weight="' + String(700) + '" '													&
											+ 't_overlay' + ls_item + '.Font.Weight="' + String(700) + '" '
ELSE
	ls_modify								= ls_modify																								&
											+ 't_title' + ls_item + '.Font.Weight="' + String(400) + '" '								&
											+ 't_overlay' + ls_item + '.Font.Weight="' + String(400) + '" '
END IF

IF ds_groupBox.of_getItem_italic(vl_item) THEN
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.Italic="' + String(1) + '" '									&
											+ 't_overlay' + ls_item + '.Font.Italic="' + String(1) + '" '
ELSE
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.Italic="' + String(0) + '" '									&
											+ 't_overlay' + ls_item + '.Font.Italic="' + String(0) + '" '
END IF

IF ds_groupBox.of_getItem_underline(vl_item) THEN
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.Underline="' + String(1) + '" '								&
											+ 't_overlay' + ls_item + '.Font.Underline="' + String(1) + '" '
ELSE
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.Underline="' + String(0) + '" '								&
											+ 't_overlay' + ls_item + '.Font.Underline="' + String(0) + '" '
END IF

IF ds_groupBox.of_getItem_strikeOut(vl_item) THEN
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.StrikeThrough="' + String(1) + '" '						&
											+ 't_overlay' + ls_item + '.Font.StrikeThrough="' + String(1) + '" '
ELSE
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Font.StrikeThrough="' + String(0) + '" '						&
											+ 't_overlay' + ls_item + '.Font.StrikeThrough="' + String(0) + '" '
END IF

ls_modify								= ls_modify																									&
											+ 't_title' + ls_item																					&
											+ '.Font.Face="' + ds_groupBox.of_getItem_fontFace(vl_item) + '" '						&
											+ 't_overlay' + ls_item																					&
											+ '.Font.Face="' + ds_groupBox.of_getItem_fontFace(vl_item) + '" '

ls_modify								= ls_modify																									&
											+ 't_title' + ls_item																					&
											+ '.Font.Height="' + String(ds_groupBox.of_getItem_fontSize(vl_item) * -1) + '" '	&
											+ 't_overlay' + ls_item																					&
											+ '.Font.Height="' + String(ds_groupBox.of_getItem_fontSize(vl_item) * -1) + '" '

ls_modify								= ls_modify																									&
											+ 'rr_groupBox' + ls_item + '.Y="' + String(ll_yOffSet) + '" '								&
											+ 'rr_groupBox' + ls_item + '.Height="' + String((ll_newTop + ll_newHeight) - ll_yOffSet) + '" '

ls_modify								= ls_modify																									&
											+ 'rr_groupBox' + ls_item + '.X="' + String(ll_newLeft) + '" '								&
											+ 'rr_groupBox' + ls_item + '.Width="' + String(ll_newWidth) + '" '						&

IF ds_groupBox.of_getItem_roundGroupBox(vl_item) THEN
	ls_modify							= ls_modify																									&
											+ 'rr_groupBox' + ls_item + '.ellipseHeight="36" '												&
											+ 'rr_groupBox' + ls_item + '.ellipseWidth="41" '
ELSE
	ls_modify							= ls_modify																									&
											+ 'rr_groupBox' + ls_item + '.ellipseHeight="0" '												&
											+ 'rr_groupBox' + ls_item + '.ellipseWidth="0" '
END IF

IF ds_groupBox.of_PBVersion() >= 11.5 THEN
	IF ds_groupBox.of_getItem_enabled(vl_item) THEN
		ls_modify						= ls_modify + 'p_title' + ls_item + '.Transparency="0" '
	ELSE
		ls_modify						= ls_modify + 'p_title' + ls_item + '.Transparency="50" '
	END IF
ELSE
	//	Need to come up with a way to show enabled/disabled for version prior to 11.5
END IF
		
IF ds_groupBox.of_PBVersion() >= 12.5 THEN
	IF ds_groupBox.of_getItem_enabled(vl_item) THEN
		ls_modify						= ls_modify + 'p_title' + ls_item + '.Enabled="1" '
	ELSE
		ls_modify						= ls_modify + 'p_title' + ls_item + '.Enabled="0" '
	END IF
END IF

IF ds_groupBox.of_getItem_enabled(vl_item) THEN
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item																					&
											+ '.Color="' + String(ds_groupBox.of_getItem_color(vl_item)) + '" '						&
											+ 't_overlay' + ls_item																					&
											+ '.Color="' + String(ds_groupBox.of_getItem_color(vl_item)) + '" '
ELSE
	ls_modify							= ls_modify																									&
											+ 't_title' + ls_item + '.Color="' + String(of_getColor(DISABLEDTEXT)) + '" '			&
											+ 't_overlay' + ls_item + '.Color="' + String(of_getColor(DISABLEDTEXT)) + '" '
END IF
		
IF ds_groupBox.of_PBVersion() >= 12.5 THEN
	IF ds_groupBox.of_getItem_enabled(vl_item) THEN
		ls_modify						= ls_modify																									&
											+ 't_title' + ls_item + '.Enabled="1" '															&
											+ 't_overlay' + ls_item + '.Enabled="1" '
	ELSE
		ls_modify						= ls_modify																									&
											+ 't_title' + ls_item + '.Enabled="0" '															&
											+ 't_overlay' + ls_item + '.Enabled="0" '
	END IF
END IF

ls_modify								= of_hideUnusedParts(vl_item, ls_modify)

Long										ll_detailHeight
ll_detailHeight						= Long(idw_palette.Describe('DataWindow.Detail.Height'))

ls_modify								= ls_modify + 'DataWindow.Detail.Height="' + String(Max(ll_newTop + ll_newHeight, ll_detailHeight)) + '" '

ls_modify								= idw_palette.Modify(ls_modify)

Return(SUCCESS)
end function

private function integer of_size_text (string vs_text, boolean vb_bold, boolean vb_italic, boolean vb_underline);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_width	= 0

IF isNull(vs_text) OR Trim(vs_text) = '' THEN Return(ll_width)

staticText								lst_groupBox

CHOOSE CASE idw_palette.GetParent().TypeOf()
	CASE Window!
		
		Window							lw_parent
		lw_parent						= idw_palette.GetParent()

		lw_parent.OpenUserObject(lst_groupBox, 'staticText')

		ll_width							= of_size_text(lst_groupBox, vs_text, vb_bold, vb_italic, vb_underline)
		
		lw_parent.CloseUserObject(lst_groupBox)
		
	CASE UserObject!
		
		UserObject						luo_parent
		luo_parent						= idw_palette.GetParent()
		
		luo_parent.OpenUserObject(lst_groupBox, 'staticText')

		ll_width							= of_size_text(lst_groupBox, vs_text, vb_bold, vb_italic, vb_underline)

		luo_parent.CloseUserObject(lst_groupBox)
		
END CHOOSE

Return(ll_width)
end function

public function long of_addgroupbox (string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addGroupBox(vs_text, '', '', 0, 0, 0, 0))
end function

public function long of_addgroupbox (string vs_text, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addGroupBox(vs_text, vs_image, '', 0, 0, 0, 0))
end function

public subroutine of_register (ref datawindow rdw_palette);IF NOT isValid(idw_palette) THEN
	
	//	Make sure any groupBox entries are thrown away from possible previous calls
	ds_groupBox.Reset()
	ds_groupBox.ResetUpdate()
	
	//	Assign the palette
	idw_palette							= rdw_palette
	
END IF

RETURN
end subroutine

private function integer of_size_text (ref statictext rst_groupbox, string vs_text, boolean vb_bold, boolean vb_italic, boolean vb_underline);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_width	= 0

IF isNull(vs_text) OR Trim(vs_text) = '' THEN Return(ll_width)

rst_groupBox.FaceName				= #FontFace
rst_groupBox.TextSize				= #FontSize * -1

Integer									li_bold

IF vb_Bold THEN
	li_bold								= 700
ELSE
	li_bold								= 400
END IF

rst_groupBox.Weight					= li_bold
rst_groupBox.Italic					= vb_italic
rst_groupBox.Underline				= vb_underline

ll_width									= PixelsToUnits((invo_dwGUI.of_GetFontWidth(rst_groupBox, vs_text) + 4), xPixelsToUnits!)

Return(ll_width)
end function

public function boolean of_isenabled (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(ds_groupBox.of_getItem_enabled(vl_item))
end function

public function boolean of_isvisible (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(ds_groupBox.of_getItem_visible(vl_item))
end function

public subroutine of_move (long vl_item, long vl_x, long vl_y);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_rectTop(vl_item, vl_y)
ds_groupBox.of_setItem_rectLeft(vl_item, vl_x)

of_update()

RETURN
end subroutine

public subroutine of_resize (long vl_item, long vl_width, long vl_height);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_rectWidth(vl_item, vl_width)
ds_groupBox.of_setItem_rectHeight(vl_item, vl_height)

of_update()

RETURN
end subroutine

public subroutine of_setbackcolor (long vl_item, long vl_backcolor);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_backColor(vl_item, vl_backColor)

of_update()

RETURN
end subroutine

public subroutine of_setbackcolor (long vl_item, long vl_red, integer vi_green, integer vi_blue);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_red > 255 THEN
	of_setBackColor(vl_item, vl_red)
ELSE
	of_setBackColor(vl_item, RGB(vl_red, vi_green, vi_blue))
END IF

RETURN
end subroutine

public subroutine of_setenabled (long vl_item, boolean vb_enabled);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_enabled(vl_item, vb_enabled)

of_update()

RETURN
end subroutine

public subroutine of_setimage (long vl_item, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_image(vl_item, invo_dwGUI.of_getImageName(vs_image))

of_update()

RETURN
end subroutine

public subroutine of_settext (long vl_item, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_text(vl_item, vs_text)

of_update()

RETURN
end subroutine

public subroutine of_settextalignment (long vl_item, integer vi_alignment);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vi_alignment = CENTER THEN
	ds_groupBox.of_setItem_alignment(vl_item, CENTER)
ELSE
	ds_groupBox.of_setItem_alignment(vl_item, LEFT)
END IF

of_update()

RETURN
end subroutine

public subroutine of_settextbold (long vl_item, boolean vb_bold);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_bold(vl_item, vb_bold)

of_update()

RETURN
end subroutine

public subroutine of_settextcolor (long vl_item, long vl_color);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_color(vl_item, vl_color)

of_update()

RETURN
end subroutine

public subroutine of_settextcolor (long vl_item, long vl_red, integer vi_green, integer vi_blue);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_red > 255 THEN
	of_setTextColor(vl_item, vl_red)
ELSE
	of_setTextColor(vl_item, RGB(vl_red, vi_green, vi_blue))
END IF

RETURN
end subroutine

public subroutine of_settextitalic (long vl_item, boolean vb_italic);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_italic(vl_item, vb_italic)

of_update()

RETURN
end subroutine

public subroutine of_settextstrikeout (long vl_item, boolean vb_strikeout);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_strikeOut(vl_item, vb_strikeOut)

of_update()

RETURN
end subroutine

public subroutine of_settextunderline (long vl_item, boolean vb_underline);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_underline(vl_item, vb_underline)

of_update()

RETURN
end subroutine

public subroutine of_setvisible (long vl_item, boolean vb_visible);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_visible(vl_item, vb_visible)

of_update()

RETURN
end subroutine

public function boolean of_isenabled (string vs_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_isEnabled(ds_groupBox.of_locateItem_text(vs_item)))
end function

public function boolean of_isvisible (string vs_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_isVisible(ds_groupBox.of_locateItem_text(vs_item)))
end function

public subroutine of_move (string vs_item, long vl_x, long vl_y);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_move(ds_groupBox.of_locateItem_text(vs_item), vl_x, vl_y)

RETURN
end subroutine

public subroutine of_resize (string vs_item, long vl_width, long vl_height);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_resize(ds_groupBox.of_locateItem_text(vs_item), vl_width, vl_height)

RETURN
end subroutine

public subroutine of_setbackcolor (string vs_item, long vl_backcolor);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setBackColor(ds_groupBox.of_locateItem_text(vs_item), vl_backColor)

RETURN
end subroutine

public subroutine of_setbackcolor (string vs_item, long vl_red, integer vi_green, integer vi_blue);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_red > 255 THEN
	of_setBackColor(ds_groupBox.of_locateItem_text(vs_item), vl_red)
ELSE
	of_setBackColor(ds_groupBox.of_locateItem_text(vs_item), RGB(vl_red, vi_green, vi_blue))
END IF

RETURN
end subroutine

public subroutine of_setenabled (string vs_item, boolean vb_enabled);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setEnabled(ds_groupBox.of_locateItem_text(vs_item), vb_enabled)

RETURN
end subroutine

public subroutine of_settext (string vs_item, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setText(ds_groupBox.of_locateItem_text(vs_item), vs_text)

RETURN
end subroutine

public subroutine of_settextalignment (string vs_item, integer vi_alignment);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setTextAlignment(ds_groupBox.of_locateItem_text(vs_item), vi_alignment)

RETURN
end subroutine

public subroutine of_settextbold (string vs_item, boolean vb_bold);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setTextBold(ds_groupBox.of_locateItem_text(vs_item), vb_bold)

RETURN
end subroutine

public subroutine of_setimage (string vs_item, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setImage(ds_groupBox.of_locateItem_text(vs_item), vs_image)

RETURN
end subroutine

public subroutine of_settextcolor (string vs_item, long vl_color);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setTextColor(ds_groupBox.of_locateItem_text(vs_item), vl_color)

RETURN
end subroutine

public subroutine of_settextcolor (string vs_item, long vl_red, integer vi_green, integer vi_blue);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_red > 255 THEN
	of_setTextColor(ds_groupBox.of_locateItem_text(vs_item), vl_red)
ELSE
	of_setTextColor(ds_groupBox.of_locateItem_text(vs_item), RGB(vl_red, vi_green, vi_blue))
END IF

RETURN
end subroutine

public subroutine of_settextitalic (string vs_item, boolean vb_italic);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setTextItalic(ds_groupBox.of_locateItem_text(vs_item), vb_italic)

RETURN
end subroutine

public subroutine of_settextstrikeout (string vs_item, boolean vb_strikeout);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setTextStrikeOut(ds_groupBox.of_locateItem_text(vs_item), vb_strikeOut)

RETURN
end subroutine

public subroutine of_settextunderline (string vs_item, boolean vb_underline);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setTextUnderline(ds_groupBox.of_locateItem_text(vs_item), vb_underline)

RETURN
end subroutine

public subroutine of_setvisible (string vs_item, boolean vb_visible);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setVisible(ds_groupBox.of_locateItem_text(vs_item), vb_visible)

RETURN
end subroutine

public function long of_getcolor (string vs_color);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_color = -1

CHOOSE CASE vs_color
	CASE WINDOWBACKGROUND
		ll_color							= invo_color.of_window()
	CASE HIGHLIGHTBORDER,	BORDERCOLOR
		ll_color							= invo_color.of_hiLight()
	CASE DEFAULTIMAGETRANSPARENCY
		ll_color							= invo_color.of_silver()
	CASE HIGHLIGHT1,			HIGHLIGHT2
		ll_color							= invo_color.of_gradientInActiveCaption()
	CASE SELECTED1, 			SELECTED2
		ll_color							= invo_color.of_gradientActiveCaption()
	CASE DISABLEDTEXT
		ll_color							= invo_color.of_grayText()
	CASE INFOTEXT
		ll_color							= invo_color.of_infoText()
	CASE INFOBACKGROUND
		ll_color							= invo_color.of_infoBackGround()
	CASE WINDOWTEXT
		ll_color							= invo_color.of_windowText()
	CASE MENUTEXT
		ll_color							= invo_color.of_menuText()
	CASE GETFOCUS
//		IF #SolidBackGround THEN
//			ll_color						= invo_color.of_menuBar()
//		ELSE
//			IF ds_XPListBar.of_PBVersion() >= 11.5 THEN
				ll_color					= invo_color.of_activeCaption()
//			ELSE
//				ll_color					= invo_color.of_menuBar()
//			END IF
//		END IF
	CASE LOSEFOCUS
//		IF #SolidBackGround THEN
//			ll_color						= invo_color.of_menuBar()
//		ELSE
//			IF ds_XPListBar.of_PBVersion() >= 11.5 THEN
				ll_color					= invo_color.of_inactiveCaption()
//			ELSE
//				ll_color					= invo_color.of_menuBar()
//			END IF
//		END IF
	CASE GRADIENT
		ll_color							= invo_color.of_menuBar()
	CASE THREEDDKSHADOW
		ll_color							= invo_color.of_3DDkShadow()
	CASE THREEDLIGHT
		ll_color							= invo_color.of_3DLight()
	CASE ACTIVEBORDER
		ll_color							= invo_color.of_activeBorder()
END CHOOSE

IF ll_color = -1 THEN
	ll_color								= messageBox('Color Error', vs_color) - 1
END IF

Return(ll_color)
end function

public subroutine of_setfont (long vl_item, string vs_fontface, long vl_fontsize);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_fontFace(vl_item, vs_fontFace)
ds_groupBox.of_setItem_fontSize(vl_item, vl_fontSize)

//idbl_fontHeight						= of_fontHeight()

RETURN
end subroutine

public subroutine of_setfont (string vs_item, string vs_fontface, long vl_fontsize);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setFont(ds_groupBox.of_locateItem_text(vs_item), vs_fontFace, vl_fontSize)

RETURN
end subroutine

public subroutine of_settitlebar (long vl_item, boolean vb_titlebar);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_titleBar(vl_item, vb_titleBar)

of_update()

RETURN
end subroutine

public subroutine of_settitlebar (string vs_item, boolean vb_titlebar);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setTitleBar(ds_groupBox.of_locateItem_text(vs_item), vb_titleBar)

RETURN
end subroutine

public subroutine of_setroundgroupbox (long vl_item, boolean vb_roundgroupbox);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_roundGroupBox(vl_item, vb_roundGroupBox)

of_update()

RETURN
end subroutine

public subroutine of_setroundgroupbox (string vs_item, boolean vb_roundgroupbox);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setRoundGroupBox(ds_groupBox.of_locateItem_text(vs_item), vb_roundGroupBox)

RETURN
end subroutine

public subroutine of_settitlebarastab (long vl_item, boolean vb_titlebarastab);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_titleBarAsTab(vl_item, vb_titleBarAsTab)

of_update()

RETURN
end subroutine

public subroutine of_settitlebarastab (string vs_item, boolean vb_titlebarastab);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setTitleBarAsTab(ds_groupBox.of_locateItem_text(vs_item), vb_titleBarAsTab)

RETURN
end subroutine

public subroutine of_setroundtitlebar (long vl_item, boolean vb_roundtitlebar);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_roundTitleBar(vl_item, vb_roundTitleBar)

of_update()

RETURN
end subroutine

public subroutine of_setroundtitlebar (string vs_item, boolean vb_roundtitlebar);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setRoundTitleBar(ds_groupBox.of_locateItem_text(vs_item), vb_roundTitleBar)

RETURN
end subroutine

public subroutine of_position (long vl_item, long vl_x, long vl_y, long vl_width, long vl_height);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_groupBox.of_setItem_rectTop(vl_item, vl_y)
ds_groupBox.of_setItem_rectLeft(vl_item, vl_x)
ds_groupBox.of_setItem_rectWidth(vl_item, vl_width)
ds_groupBox.of_setItem_rectHeight(vl_item, vl_height)

of_update()

RETURN
end subroutine

public subroutine of_position (string vs_item, long vl_x, long vl_y, long vl_width, long vl_height);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_position(ds_groupBox.of_locateItem_text(vs_item), vl_x, vl_y, vl_width, vl_height)

RETURN
end subroutine

public function long of_addgroupbox (string vs_text, string vs_image, string vs_tooltip, long vl_x, long vl_y, long vl_width, long vl_height);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
ll_item									= ds_groupBox.of_addItem()

IF isNull(vs_text)		THEN vs_text		= ''
IF isNull(vs_image)		THEN vs_image		= ''
IF isNull(vs_toolTip)	THEN vs_toolTip	= ''

vs_text									= Trim(vs_text)
vs_image									= Trim(vs_image)
vs_toolTip								= Trim(vs_toolTip)

ds_groupBox.of_setItem_text(ll_item, vs_text)
ds_groupBox.of_setItem_color(ll_item, of_getColor(WINDOWTEXT))

ds_groupBox.of_setItem_toolTip(ll_item, vs_toolTip)
//ds_groupBox.of_setItem_toolTipDelayInitial(ll_item, 1000)
//ds_groupBox.of_setItem_toolTipDelayVisible(ll_item, 32000)
//ds_groupBox.of_setItem_toolTipIsBubble(ll_item, TRUE)

ds_groupBox.of_setItem_image(ll_item, invo_dwGUI.of_getImageName(vs_image))
ds_groupBox.of_setItem_imageTransparency(ll_item, of_getColor(DEFAULTIMAGETRANSPARENCY))

ds_groupBox.of_setItem_objectName(ll_item, ds_groupBox.GROUPBOX + '_' + String(ll_item))
ds_groupBox.of_setitem_objectType(ll_item, ds_groupBox.GROUPBOX)

ds_groupBox.of_setitem_visible(ll_item, TRUE)
ds_groupBox.of_setitem_enabled(ll_item, TRUE)

ds_groupBox.of_setItem_fontFace(ll_item, 'Tahoma')
ds_groupBox.of_setItem_fontSize(ll_item, 8)

ds_groupBox.of_setItem_backColor(ll_item, 2^29)									//	Transparent

ds_groupBox.of_setItem_rectTop(ll_item, vl_y)
ds_groupBox.of_setItem_rectLeft(ll_item, vl_x)
ds_groupBox.of_setItem_rectWidth(ll_item, vl_width)
ds_groupBox.of_setItem_rectHeight(ll_item, vl_height)

of_createItem_groupBox(ll_item)

of_update()

Return(ll_item)
end function

public function long of_addgroupbox (string vs_text, string vs_image, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addGroupBox(vs_text, vs_image, vs_tooltip, 0, 0, 0, 0))
end function

public function long of_addgroupbox (string vs_text, long vl_x, long vl_y, long vl_width, long vl_height);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addGroupBox(vs_text, '', '', vl_x, vl_y, vl_width, vl_height))
end function

public function long of_addgroupbox (string vs_text, string vs_image, long vl_x, long vl_y, long vl_width, long vl_height);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addGroupBox(vs_text, vs_image, '', vl_x, vl_y, vl_width, vl_height))
end function

public function long of_replacegroupbox (string vs_groupbox);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_type
ls_type									= idw_palette.Describe(vs_groupBox + '.Type')

IF ls_type <> 'groupbox' THEN Return(NO_ACTION)

Long										ll_x,	ll_y,	ll_width,	ll_height

ll_x										= Long(idw_palette.Describe(vs_groupBox + '.X'))
ll_y										= Long(idw_palette.Describe(vs_groupBox + '.Y'))
ll_width									= Long(idw_palette.Describe(vs_groupBox + '.Width'))
ll_height								= Long(idw_palette.Describe(vs_groupBox + '.Height'))

String									ls_text		= ''
ls_text									= idw_palette.Describe(vs_groupBox + '.Text')

String									ls_toolTip	= ''

IF ds_groupBox.of_PBVersion() >= 11.5 THEN
	ls_toolTip							= idw_palette.Describe(vs_groupBox + '.ToolTip.Text')
END IF

Long										ll_item
ll_item									= of_addGroupBox(ls_text, '', ls_toolTip, ll_x, ll_y, ll_width, ll_height)

IF isNull(ll_item) OR ll_item <= 0 THEN
ELSE
	idw_palette.Modify('DESTROY ' + vs_groupBox)
END IF

Return(ll_item)
end function

private function string of_hideunusedparts (long vl_item, string vs_modify);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_item	= ''

IF NOT isNull(vl_item) THEN 
	ls_item								= '_' + String(vl_item)
END IF

String									ls_modify	= ''
	
IF Pos(vs_modify, 'rr_title' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 'rr_title' + ls_item + '.Visible="0" '
END IF

IF Pos(vs_modify, 'p_title' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 'p_title' + ls_item + '.Visible="0" '
END IF

IF Pos(vs_modify, 't_overlay' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 't_overlay' + ls_item + '.Visible="0" '
END IF

IF Pos(vs_modify, 't_title' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 't_title' + ls_item + '.Visible="0" '
END IF

IF Pos(vs_modify, 'l_left' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 'l_left' + ls_item + '.Visible="0" '
END IF

IF Pos(vs_modify, 'r_left_shadow_upper' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 'r_left_shadow_upper' + ls_item + '.Visible="0" '
END IF

IF Pos(vs_modify, 'r_right_shadow_lower' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 'r_right_shadow_lower' + ls_item + '.Visible="0" '
END IF

IF Pos(vs_modify, 'r_left_shadow_lower' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 'r_left_shadow_lower' + ls_item + '.Visible="0" '
END IF

IF Pos(vs_modify, 'r_right_shadow_upper' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 'r_right_shadow_upper' + ls_item + '.Visible="0" '
END IF

IF Pos(vs_modify, 'l_right_upper' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 'l_right_upper' + ls_item + '.Visible="0" '
END IF

IF Pos(vs_modify, 'l_right_lower' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 'l_right_lower' + ls_item + '.Visible="0" '
END IF

IF Pos(vs_modify, 'l_title' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 'l_title' + ls_item + '.Visible="0" '
END IF

IF Pos(vs_modify, 'l_bitmap' + ls_item + '.Visible="1"') <= 0 THEN
	ls_modify							= ls_modify + 'l_bitmap' + ls_item + '.Visible="0" '
END IF

Return(vs_modify + ' ' + ls_modify)
end function

on n_cst_groupbox.create
call super::create
this.ds_groupbox=create ds_groupbox
TriggerEvent( this, "constructor" )
end on

on n_cst_groupbox.destroy
TriggerEvent( this, "destructor" )
call super::destroy
destroy(this.ds_groupbox)
end on

event constructor;IF #toolTipIsBubble THEN
	ii_toolTipIsBubble				= 1
ELSE
	ii_toolTipIsBubble				= 0
END IF
end event

type ds_groupbox from n_cst_groupbox_items within n_cst_groupbox descriptor "pb_nvo" = "true" 
end type

on ds_groupbox.create
call super::create
end on

on ds_groupbox.destroy
call super::destroy
end on

