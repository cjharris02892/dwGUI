HA$PBExportHeader$u_cst_xplistbar.sru
forward
global type u_cst_xplistbar from userobject
end type
type st_xplistbar from statictext within u_cst_xplistbar
end type
type dw_palette from datawindow within u_cst_xplistbar
end type
type r_border from rectangle within u_cst_xplistbar
end type
type mle_xplistbar from multilineedit within u_cst_xplistbar
end type
type ds_xplistbar from n_cst_xplistbar_items within u_cst_xplistbar
end type
type tmg_xplistbar from timing within u_cst_xplistbar
end type
end forward

shared variables
u_cst_XPListBar							suo_XPListBar[]
end variables

global type u_cst_xplistbar from userobject
integer width = 878
integer height = 992
long backcolor = 553648127
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
event type integer ue_itemclicking ( string vs_group,  string vs_item )
event ue_itemclicked ( string vs_group,  string vs_item )
event ue_post_constructor ( )
event ue_context_collapseall ( )
event ue_context_expandall ( )
event ue_context_showtooltips ( boolean vb_showtips )
st_xplistbar st_xplistbar
dw_palette dw_palette
r_border r_border
mle_xplistbar mle_xplistbar
ds_xplistbar ds_xplistbar
tmg_xplistbar tmg_xplistbar
end type
global u_cst_xplistbar u_cst_xplistbar

type variables
Public:

	//	Color constants
	CONSTANT String						HIGHLIGHTBORDER				= 'highlightborder'
	CONSTANT String						BORDERCOLOR						= 'border'
	CONSTANT String						DEFAULTIMAGETRANSPARENCY	= 'defaultimagetransparency'
	CONSTANT String						HIGHLIGHT1						= 'highlight1'
	CONSTANT String						HIGHLIGHT2						= 'highlight2'
	CONSTANT String						SELECTED1						= 'selected1'
	CONSTANT String						SELECTED2						= 'selected2'
	CONSTANT String						DISABLEDTEXT					= 'disabledtext'
	CONSTANT String						INFOTEXT							= 'infotext'
	CONSTANT String						INFOBACKGROUND					= 'infobackground'
	CONSTANT String						WINDOWTEXT						= 'windowtext'
	CONSTANT String						GETFOCUS							= 'getfocus'
	CONSTANT String						LOSEFOCUS						= 'losefocus'
	CONSTANT String						TOOLBAR							= 'toolbar'
	CONSTANT String						GRADIENT							= 'gradient'
	CONSTANT String						MENUTEXT							= 'menutext'
	CONSTANT String						THREEDDKSHADOW					= '3ddkshadow'
	CONSTANT String						THREEDLIGHT						= '3ddklight'

	CONSTANT	Long							ALLOW								= 1
	CONSTANT Long							PREVENT							= -1

	CONSTANT	Long							SUCCESS							= 1
	CONSTANT	Long							NO_ACTION						= 0
	CONSTANT Long							FAILURE							= -1

	CONSTANT Long							SMALL								= 16
	CONSTANT Long							MEDIUM							= 24
	CONSTANT Long							LARGE								= 32
	CONSTANT Long							XLARGE							= 48

Protected:

	Boolean									#DisplayBorder					= TRUE
	Boolean									#RaisedBorder					= FALSE
	Boolean									#SolidBackGround				= FALSE

	String									#FontFace						= 'Tahoma'
	Long										#FontSize						= 8

	Long										#BitMapSize						= 16
	
	Long										#ToolTipDelayInitial			= 1000
	Long										#ToolTipDelayVisible			= 32000
	Boolean									#ToolTipIsBubble				= TRUE

Private:

	CONSTANT Long							NOTAB								= 0
	CONSTANT Long							TAB								= 1
	CONSTANT Long							BACKTAB							= 2
	
	n_cst_toolBar							invo_XPListBar
	n_cst_color								invo_color
	
	Long										il_groupHeight					= 100

	String									is_lbuttonDown

	Boolean									ib_update						= TRUE
	Boolean									ib_trackMouseEvent			= FALSE
		
	Boolean									ib_scrollTop					= FALSE
	Boolean									ib_scrollBottom				= FALSE
	
	Long										il_xIndent						= -1
	Long										il_yIndent						= -1
	
	Long										il_xPixelInUnits				= -1
	Long										il_yPixelInUnits				= -1
	
	Long										il_lastLink						= 0

	Boolean									ib_displayToolTips			= TRUE
	Integer									ii_toolTipIsBubble			= 1
	
	String									is_chevronUp					= ''
	String									is_chevronDown					= ''
end variables

forward prototypes
public function integer resize (integer w, integer h)
public function long of_addgroup (string vs_text, string vs_image, string vs_tooltip)
public function long of_addseparator (long vl_group)
public function long of_addlabel (long vl_group, string vs_text, string vs_image, string vs_tooltip)
public function boolean of_isvisible (long vl_item)
public function long of_addlink (long vl_group, string vs_text, string vs_image, string vs_tooltip)
private subroutine of_correct_fontsize ()
private subroutine of_createitem_group (long vl_item)
private subroutine of_createitem_label (long vl_item)
private subroutine of_createitem_link (long vl_item)
private subroutine of_createitem_separator (long vl_item)
private subroutine of_scrollbuttons ()
public function boolean of_iscollapsed (long vl_item)
private function long of_size_text (string vs_text, string vs_fontface, integer vi_fontsize)
private function long of_size_text (string vs_text)
public function boolean of_isenabled (long vl_item)
public subroutine of_disableupdate ()
public subroutine of_enableupdate ()
public function integer of_setenabled (long vl_item, boolean vb_switch)
public function integer of_setvisible (long vl_item, boolean vb_switch)
public function integer of_setcollapsed (long vl_item, boolean vb_switch)
private function long of_fontheight ()
private function long of_fontheight (integer vi_fontsize)
public subroutine of_enabletooltips ()
public subroutine of_disabletooltips ()
public function boolean of_displaytooltips ()
public function long of_locateitem (string vs_text)
private subroutine of_underline_link (long vl_item)
protected function long of_getcolor (string vs_color)
private subroutine of_correct_bitmapsize ()
private subroutine of_correct_size ()
private subroutine of_losefocus ()
private subroutine of_getfocus ()
public subroutine of_broadcast_showtooltips (boolean vb_showtext)
public function long of_clickitem (long vl_group)
public function long of_clickitem (long vl_group, long vl_item)
public function long of_locateitem (string vs_text_group, string vs_text_item)
public function integer of_setvisible (string vs_text, boolean vb_switch)
public function integer of_setenabled (string vs_text, boolean vb_switch)
public function integer of_setvisible (string vs_text_group, string vs_text_item, boolean vb_switch)
public function boolean of_iscollapsed (string vs_text_group)
public function integer of_setcollapsed (string vs_text_group, boolean vb_switch)
public function long of_clickitem (string vs_text_group)
public function long of_clickitem (string vs_text_group, string vs_text_item)
public function boolean of_isenabled (string vs_text_group, string vs_text_item)
public function boolean of_isenabled (string vs_text)
public function boolean of_isvisible (string vs_text)
public function boolean of_isvisible (string vs_text_group, string vs_text_item)
private subroutine of_underline_link (string vs_objectname)
public function integer of_setimage (long vl_item, string vs_image)
public function integer of_setimage (string vs_text, string vs_image)
public function integer of_setenabled (string vs_text_group, string vs_text_item, boolean vb_switch)
public function integer of_setimage (string vs_text_group, string vs_text_item, string vs_image)
public function integer of_settext (long vl_item, string vs_text_new)
public function integer of_settext (string vs_text, string vs_text_new)
public function integer of_settext (string vs_text_group, string vs_text_item, string vs_text_new)
public function integer of_settiptext (long vl_item, string vs_tooltip)
public function integer of_settiptext (string vs_text, string vs_tooltip)
public function integer of_settiptext (string vs_text_group, string vs_text_item, string vs_tooltip)
public function integer of_update ()
public function integer of_update (boolean vb_resetscrollposition)
public function string of_gettext (long vl_item)
public function string of_gettext (string vs_text)
public function string of_gettext (string vs_text_group, string vs_text_item)
public subroutine of_setbackcolor (long vl_backcolor)
public subroutine of_setbackcolor (integer vi_red, integer vi_green, integer vi_blue)
end prototypes

event type integer ue_itemclicking(string vs_group, string vs_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(ALLOW)
end event

event ue_itemclicked(string vs_group, string vs_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

RETURN
end event

event ue_post_constructor();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

RETURN
end event

event ue_context_collapseall();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_group,	ll_groups
ll_groups								= ds_XPListBar.RowCount()

FOR ll_group = 1 TO ll_groups
	
	IF ds_XPListBar.of_getItem_objectType(ll_group) <> ds_XPListBar.GROUP THEN CONTINUE

	IF NOT of_isCollapsed(ll_group) THEN of_setCollapsed(ll_group, TRUE)
	
NEXT
end event

event ue_context_expandall();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_group,	ll_groups
ll_groups								= ds_XPListBar.RowCount()

FOR ll_group = 1 TO ll_groups
	
	IF ds_XPListBar.of_getItem_objectType(ll_group) <> ds_XPListBar.GROUP THEN CONTINUE

	IF of_isCollapsed(ll_group) THEN of_setCollapsed(ll_group, FALSE)
	
NEXT
end event

event ue_context_showtooltips(boolean vb_showtips);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_broadCast_showToolTips(vb_showTips)

//GetApplication().ToolBarTips	= vb_showTips

RETURN
end event

public function integer resize (integer w, integer h);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										li_RC
li_RC										= Super::Resize(W, H)

r_border.Resize(W, H)
dw_palette.Resize(r_border.Width - (il_xPixelInUnits * 2), r_border.Height - (il_yPixelInUnits * 2))

Return(li_RC)
end function

public function long of_addgroup (string vs_text, string vs_image, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
ll_item									= ds_XPListBar.of_addItem()

IF isNull(vs_text)		THEN vs_text		= ''
IF isNull(vs_image)		THEN vs_image		= ''
IF isNull(vs_toolTip)	THEN vs_toolTip	= ''

vs_text									= Trim(vs_text)
vs_image									= Trim(vs_image)
vs_toolTip								= Trim(vs_toolTip)

ds_XPListBar.of_setItem_text(ll_item, vs_text)
ds_XPListBar.of_setItem_toolTip(ll_item, vs_toolTip)

ds_XPListBar.of_setItem_image(ll_item, invo_XPListBar.of_getImageName(vs_image))
ds_XPListBar.of_setItem_imageTransparency(ll_item, of_getColor(DEFAULTIMAGETRANSPARENCY))

ds_XPListBar.of_setItem_objectName(ll_item, ds_XPListBar.GROUP + '_' + String(ll_item))
ds_XPListBar.of_setitem_objectType(ll_item, ds_XPListBar.GROUP)

ds_XPListBar.of_setitem_visible(ll_item, TRUE)
ds_XPListBar.of_setitem_enabled(ll_item, TRUE)

ds_XPListBar.of_setItem_fontFace(ll_item, #FontFace)
ds_XPListBar.of_setItem_fontSize(ll_item, #FontSize)

of_createItem_group(ll_item)

of_update()

Return(ll_item)
end function

public function long of_addseparator (long vl_group);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
ll_item									= ds_XPListBar.of_addItem()

ds_XPListBar.of_setitem_parent(ll_item, vl_group)

ds_XPListBar.of_setItem_objectName(ll_item, ds_XPListBar.SEPARATOR + '_' + String(ll_item))
ds_XPListBar.of_setitem_objectType(ll_item, ds_XPListBar.SEPARATOR)

ds_XPListBar.of_setitem_visible(ll_item, TRUE)
ds_XPListBar.of_setitem_enabled(ll_item, TRUE)

of_createItem_separator(ll_item)

of_update()

Return(ll_item)
end function

public function long of_addlabel (long vl_group, string vs_text, string vs_image, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

//	Null group value
IF isNull(vl_group) THEN Return(FAILURE)

//	Invalid group number
IF ds_XPListBar.of_getItem_objectType(vl_group) <> ds_XPListBar.GROUP THEN Return(FAILURE)

Long										ll_item
ll_item									= ds_XPListBar.of_addItem()

IF isNull(vs_text)		THEN vs_text		= ''
IF isNull(vs_image)		THEN vs_image		= ''
IF isNull(vs_toolTip)	THEN vs_toolTip	= ''

vs_text									= Trim(vs_text)
vs_image									= Trim(vs_image)
vs_toolTip								= Trim(vs_toolTip)

ds_XPListBar.of_setItem_parent(ll_item, vl_group)

ds_XPListBar.of_setItem_text(ll_item, vs_text)
ds_XPListBar.of_setItem_toolTip(ll_item, vs_toolTip)

ds_XPListBar.of_setItem_image(ll_item, invo_XPListBar.of_getImageName(vs_image))
ds_XPListBar.of_setItem_imageTransparency(ll_item, of_getColor(DEFAULTIMAGETRANSPARENCY))

ds_XPListBar.of_setItem_objectName(ll_item, ds_XPListBar.LABEL + '_' + String(ll_item))
ds_XPListBar.of_setitem_objectType(ll_item, ds_XPListBar.LABEL)

ds_XPListBar.of_setitem_visible(ll_item, TRUE)
ds_XPListBar.of_setitem_enabled(ll_item, TRUE)

ds_XPListBar.of_setItem_fontFace(ll_item, #FontFace)
ds_XPListBar.of_setItem_fontSize(ll_item, #FontSize)

of_createItem_label(ll_item)

of_update()

Return(ll_item)
end function

public function boolean of_isvisible (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_Visible = FALSE

IF vl_Item > 0 AND vl_Item <= ds_XPListBar.RowCount() THEN
	lb_Visible							= ds_XPListBar.of_getItem_visible(vl_item)
END IF

Return(lb_Visible)
end function

public function long of_addlink (long vl_group, string vs_text, string vs_image, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

//	Null group value
IF isNull(vl_group) THEN Return(FAILURE)

//	Invalid group number
IF ds_XPListBar.of_getItem_objectType(vl_group) <> ds_XPListBar.GROUP THEN Return(FAILURE)

Long										ll_item
ll_item									= ds_XPListBar.of_addItem()

IF isNull(vs_text)		THEN vs_text		= ''
IF isNull(vs_image)		THEN vs_image		= ''
IF isNull(vs_toolTip)	THEN vs_toolTip	= ''

vs_text									= Trim(vs_text)
vs_image									= Trim(vs_image)
vs_toolTip								= Trim(vs_toolTip)

ds_XPListBar.of_setItem_parent(ll_item, vl_group)

ds_XPListBar.of_setItem_text(ll_item, vs_text)
ds_XPListBar.of_setItem_toolTip(ll_item, vs_toolTip)

ds_XPListBar.of_setItem_image(ll_item, invo_XPListBar.of_getImageName(vs_image))
ds_XPListBar.of_setItem_imageTransparency(ll_item, of_getColor(DEFAULTIMAGETRANSPARENCY))

ds_XPListBar.of_setItem_objectName(ll_item, ds_XPListBar.LINK + '_' + String(ll_item))
ds_XPListBar.of_setitem_objectType(ll_item, ds_XPListBar.LINK)

ds_XPListBar.of_setitem_visible(ll_item, TRUE)
ds_XPListBar.of_setitem_enabled(ll_item, TRUE)

ds_XPListBar.of_setItem_fontFace(ll_item, #FontFace)
ds_XPListBar.of_setItem_fontSize(ll_item, #FontSize)

of_createItem_link(ll_item)

of_update()

Return(ll_item)
end function

private subroutine of_correct_fontsize ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

CHOOSE CASE #FontSize
	CASE IS < 10
		#FontSize						= 8
	CASE IS < 12
		#FontSize						= 10
	CASE IS < 14
		#FontSize						= 12
	CASE ELSE
		#FontSize						= 14
END CHOOSE

RETURN
end subroutine

private subroutine of_createitem_group (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										li_displayToolTips

IF of_displayToolTips() THEN
	li_displayToolTips				= 1
ELSE
	li_displayToolTips				= 0
END IF

Long										ll_width
ll_width									= dw_palette.Width - (il_xIndent * 2)

String									ls_modify

ls_modify								= 'CREATE roundrectangle(band=detail '														&
											+ 'ellipseheight="36" ellipsewidth="41" '													&
											+ 'x="' + String(il_xIndent) + '" '															&
											+ 'y="0" '																							&
											+ 'height="' + String(il_groupHeight) + '" '												&
											+ 'width="0" '																						&
											+ 'name=r_' + ds_XPListBar.GROUP + '_' + String(vl_item) + '_roundrectangle '	&
											+ 'visible="1" '																					&
											+ 'brush.hatch="8" '																				&
											+ 'brush.color="0" '																				&
											+ 'pen.style="0" pen.width="5" ' +															&	
											+ 'pen.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.mode="2" '																		&
											+ 'background.color="' + String(of_getColor(SELECTED1)) + '" '						&
											+ 'background.transparency="0" '																&
											+ 'background.gradient.color="8421504" '													&
											+ 'background.gradient.transparency="0" '													&
											+ 'background.gradient.angle="0" '															&
											+ 'background.brushmode="0" '																	&
											+ 'background.gradient.repetition.mode="0" '												&
											+ 'background.gradient.repetition.count="0" '											&
											+ 'background.gradient.repetition.length="100" '										&
											+ 'background.gradient.focus="0" '															&
											+ 'background.gradient.scale="100" '														&
											+ 'background.gradient.spread="100" '														&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '				&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +				&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +				&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '							&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" '										&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '							&
											+ 'tooltip.maxwidth="0" '																		&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '						&
											+ 'tooltip.transparency="0") '
											
ls_modify								= dw_palette.Modify(ls_modify)

ls_modify								= 'CREATE rectangle(band=detail '															&
											+ 'x="' + String(il_xIndent) + '" '															&
											+ 'y="0" '																							&
											+ 'height="0" '																					&
											+ 'width="0" '																						&
											+ 'name=r_' + ds_XPListBar.GROUP + '_' + String(vl_item) + '_container '		&
											+ 'visible="1" '																					&
											+ 'brush.hatch="8" '																				&
											+ 'brush.color="0" '																				&
											+ 'pen.style="0" pen.width="5" ' +															&	
											+ 'pen.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.mode="2" '																		&
											+ 'background.color="' + String(of_getColor(SELECTED1)) + '" '						&
											+ 'background.transparency="0" '																&
											+ 'background.gradient.color="' + String(of_getColor(GRADIENT)) + '" '			&
											+ 'background.gradient.transparency="0" '													&
											+ 'background.gradient.angle="0" '															&
											+ 'background.brushmode="2" '																	&
											+ 'background.gradient.repetition.mode="0" '												&
											+ 'background.gradient.repetition.count="0" '											&
											+ 'background.gradient.repetition.length="100" '										&
											+ 'background.gradient.focus="0" '															&
											+ 'background.gradient.scale="100" '														&
											+ 'background.gradient.spread="100" '														&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '				&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +				&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +				&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '							&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" '										&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '							&
											+ 'tooltip.maxwidth="0" '																		&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '						&
											+ 'tooltip.transparency="0") '
											
ls_modify								= dw_palette.Modify(ls_modify)

ls_modify								= 'CREATE rectangle(band=detail '															&
											+ 'x="' + String(il_xIndent) + '" '															&
											+ 'y="84" '																							&
											+ 'height="16" '																					&
											+ 'width="18" '																					&
											+ 'name=r_' + ds_XPListBar.GROUP + '_' + String(vl_item) + '_left_corner '		&
											+ 'visible="1" '																					&
											+ 'brush.hatch="6" '																				&
											+ 'brush.color="' + String(of_getColor(SELECTED1)) + '" '							&
											+ 'pen.style="0" pen.width="5" '																&
											+ 'pen.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.mode="2" '																		&
											+ 'background.color="0" '																		&
											+ 'background.transparency="0" '																&
											+ 'background.gradient.color="8421504" '													&
											+ 'background.gradient.transparency="0" '													&
											+ 'background.gradient.angle="0" background.brushmode="0" '							&
											+ 'background.gradient.repetition.mode="0" '												&
											+ 'background.gradient.repetition.count="0" '											&
											+ 'background.gradient.repetition.length="100" '										&
											+ 'background.gradient.focus="0" '															&
											+ 'background.gradient.scale="100" '														&
											+ 'background.gradient.spread="100" '														&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '				&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +				&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +				&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '							&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" '										&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '							&
											+ 'tooltip.maxwidth="0" '																		&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '						&
											+ 'tooltip.transparency="0") '

ls_modify								= dw_palette.Modify(ls_modify)

ls_modify								= 'CREATE rectangle(band=detail '															&
											+ 'x="' + String(il_xIndent + il_xPixelInUnits) + '" '								&
											+ 'y="84" '																							&
											+ 'height="16" '																					&
											+ 'width="18" '																					&
											+ 'name=r_' + ds_XPListBar.GROUP + '_' + String(vl_item) + '_left_shadow '		&
											+ 'visible="1" '																					&
											+ 'brush.hatch="6" '																				&
											+ 'brush.color="' + String(of_getColor(SELECTED1)) + '" '							&
											+ 'pen.style="5" pen.width="5" '																&
											+ 'pen.color="0" '																				&
											+ 'background.mode="2" '																		&
											+ 'background.color="0" '																		&
											+ 'background.transparency="0" '																&
											+ 'background.gradient.color="8421504" '													&
											+ 'background.gradient.transparency="0" '													&
											+ 'background.gradient.angle="0" background.brushmode="0" '							&
											+ 'background.gradient.repetition.mode="0" '												&
											+ 'background.gradient.repetition.count="0" '											&
											+ 'background.gradient.repetition.length="100" '										&
											+ 'background.gradient.focus="0" '															&
											+ 'background.gradient.scale="100" '														&
											+ 'background.gradient.spread="100" '														&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '				&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +				&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +				&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '							&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" '										&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '							&
											+ 'tooltip.maxwidth="0" '																		&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '						&
											+ 'tooltip.transparency="0") '

ls_modify								= dw_palette.Modify(ls_modify)

ls_modify								= 'CREATE rectangle(band=detail '															&
											+ 'x="' + String(il_xIndent + ll_width - 18) + '" '									&
											+ 'y="84" '																							&
											+ 'height="16" '																					&
											+ 'width="18" '																					&
											+ 'name=r_' + ds_XPListBar.GROUP + '_' + String(vl_item) + '_right_corner '	&
											+ 'visible="1" '																					&
											+ 'brush.hatch="6" '																				&
											+ 'brush.color="' + String(of_getColor(SELECTED1)) + '" '							&
											+ 'pen.style="0" pen.width="5" '																&
											+ 'pen.color="' + String(of_getColor(GETFOCUS)) + '" '								&
											+ 'background.mode="2" '																		&
											+ 'background.color="0" '																		&
											+ 'background.transparency="0" '																&
											+ 'background.gradient.color="8421504" '													&
											+ 'background.gradient.transparency="0" '													&
											+ 'background.gradient.angle="0" background.brushmode="0" '							&
											+ 'background.gradient.repetition.mode="0" '												&
											+ 'background.gradient.repetition.count="0" '											&
											+ 'background.gradient.repetition.length="100" '										&
											+ 'background.gradient.focus="0" '															&
											+ 'background.gradient.scale="100" '														&
											+ 'background.gradient.spread="100" '														&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '				&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +				&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +				&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '							&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" '										&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '							&
											+ 'tooltip.maxwidth="0" '																		&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '						&
											+ 'tooltip.transparency="0") '

ls_modify								= dw_palette.Modify(ls_modify)

ls_modify								= 'CREATE rectangle(band=detail '															&
											+ 'x="' + String(il_xIndent + ll_width - 18) + '" '									&
											+ 'y="84" '																							&
											+ 'height="16" '																					&
											+ 'width="18" '																					&
											+ 'name=r_' + ds_XPListBar.GROUP + '_' + String(vl_item) + '_right_shadow '	&
											+ 'visible="1" '																					&
											+ 'brush.hatch="6" '																				&
											+ 'brush.color="' + String(of_getColor(SELECTED1)) + '" '							&
											+ 'pen.style="5" pen.width="5" '																&
											+ 'pen.color="0" '																				&
											+ 'background.mode="2" '																		&
											+ 'background.color="0" '																		&
											+ 'background.transparency="0" '																&
											+ 'background.gradient.color="8421504" '													&
											+ 'background.gradient.transparency="0" '													&
											+ 'background.gradient.angle="0" '															&
											+ 'background.brushmode="0" '																	&
											+ 'background.gradient.repetition.mode="0" '												&
											+ 'background.gradient.repetition.count="0" '											&
											+ 'background.gradient.repetition.length="100" '										&
											+ 'background.gradient.focus="0" '															&
											+ 'background.gradient.scale="100" '														&
											+ 'background.gradient.spread="100" '														&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '				&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +				&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +				&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '							&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" '										&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '							&
											+ 'tooltip.maxwidth="0" '																		&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '						&
											+ 'tooltip.transparency="0") '

ls_modify								= dw_palette.Modify(ls_modify)

ls_modify								= 'CREATE ellipse(band=detail '																&
											+ 'x="' + String(il_xIndent + ll_width - 87 - (il_xPixelInUnits * 4)) + '" '	&
											+ 'y="12" '																							&
											+ 'height="76" '																					&
											+ 'width="87" '																					&
											+ 'name=e_' + ds_XPListBar.GROUP + '_' + String(vl_item) + ' '						&
											+ 'visible="1" '																					&
											+ 'brush.hatch="6" '																				&
											+ 'brush.color="' + String("67108864") + '" '											&
											+ 'pen.style="0" pen.width="5" '																&
											+ 'pen.color="' + String("67108864") + '" '												&
											+ 'background.mode="2" '																		&
											+ 'background.color="0" '																		&
											+ 'background.transparency="0" '																&
											+ 'background.gradient.color="8421504" '													&
											+ 'background.gradient.transparency="0" '													&
											+ 'background.gradient.angle="0" background.brushmode="0" '							&
											+ 'background.gradient.repetition.mode="0" '												&
											+ 'background.gradient.repetition.count="0" '											&
											+ 'background.gradient.repetition.length="100" '										&
											+ 'background.gradient.focus="0" '															&
											+ 'background.gradient.scale="100" '														&
											+ 'background.gradient.spread="100" '														&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '				&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +				&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +				&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '							&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" '										&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '							&
											+ 'tooltip.maxwidth="0" '																		&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '						&
											+ 'tooltip.transparency="0") '

ls_modify								= ls_modify																							&
											+ 'CREATE text(band=detail' + ' '															&
											+ 'alignment="0" '																				&
											+ 'text="' + ds_XPListBar.of_getItem_text(vl_item) + '" '							&
											+ 'border="0" '																					&
											+ 'x="' + String(il_xIndent + (il_xPixelInUnits * 3)) + '" '						&
											+ 'y="0" '																							&
											+ 'width="0" '																						&
											+ 'height="0" '																					&
											+ 'html.valueishtml="0" '																		&
											+ 'name=t_' + ds_XPListBar.of_getItem_objectName(vl_item) + ' '					&
											+ 'visible="1" '																					&
											+ 'font.face="' + ds_XPListBar.of_getItem_fontFace(vl_item) + '" '				&
											+ 'font.height="' + String(#FontSize * -1) + '" '										&
											+ 'font.weight="400" '																			&
											+ 'font.family="2" font.pitch="2" font.charset="0" '									&
											+ 'background.mode="1" '

//IF ds_XPListbar.of_PBVersion >= 12.5 THEN
//			
//	IF ds_XPListBar.of_getItem_enabled(vl_item) THEN
//		ls_modify						= ls_modify + 'enabled="1" '
//	ELSE
//		ls_modify						= ls_modify + 'enabled="0" '
//	END IF
//
//END IF

IF ds_XPListbar.of_PBVersion() >= 11.5 THEN

	ls_modify							= ls_Modify																							&
											+ 'background.transparency="100" '															&
											+ 'background.brushmode="0" background.gradient.repetition.mode="0" '			&
											+ 'background.gradient.repetition.count="0" '											&
											+ 'background.gradient.repetition.length="100" '										&
											+ 'background.gradient.focus="0" background.gradient.scale="100" '				&
											+ 'background.gradient.spread="100" '														&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '				&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +				&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +				&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '							&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" ' +										&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '							&
											+ 'tooltip.maxwidth="0" '																		&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '						&
											+ 'tooltip.transparency="0" '																	&
											+ 'tooltip.tip="' + ds_XPListBar.of_getItem_toolTip(vl_item) + '" '
END IF

//IF ds_XPListBar.of_getItem_enabled(vl_item) THEN
//	ls_modify							= ls_modify + 'color="' + String(of_getColor(MENUTEXT)) + '" '
//ELSE
//	ls_modify							= ls_modify + 'color="' + String(of_getColor(DISABLEDTEXT)) + '" '
//END IF

ls_modify								= ls_modify + ') '

ls_modify								= ls_modify																							&
											+ 'CREATE bitmap(band=detail '																&
											+ 'filename="' + is_chevronUp + '" '														&
											+ 'x="' + String(il_xIndent + ll_width - 87) + '" '									&
											+ 'y="28" '																							&
											+ 'height="'+ String(11 * il_yPixelInUnits) + '" '										&
											+ 'width="' + String(11 * il_xPixelInUnits) + '" '										&
											+ 'border="0" '																					&
											+ 'name=p_' + ds_XPListBar.of_getItem_objectName(vl_item) + '_chevron '			&
											+ 'visible="1" '

//IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
//		
//	IF ds_XPListBar.of_getItem_enabled(vl_item) THEN
//		ls_modify						= ls_modify + 'enabled="1" '
//	ELSE
//		ls_modify						= ls_modify + 'enabled="0" '
//	END IF
//
//END IF
	
IF ds_XPListbar.of_PBVersion() >= 11.5 THEN
		
	ls_modify							= ls_modify																							&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '				&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +				&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +				&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '							&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" ' +										&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '							&
											+ 'tooltip.maxwidth="0" '																		&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '						&
											+ 'tooltip.transparency="0" '																	&
											+ 'tooltip.tip="' + '' + '" '																	&
											+ 'transparentcolor="' + String(ds_XPListBar.of_getItem_imageTransparency(vl_item)) + '" '
												
//	IF ds_XPListBar.of_getItem_enabled(vl_item) THEN
//		ls_modify						= ls_modify + 'transparency="0" '
//	ELSE
//		ls_modify						= ls_modify + 'transparency="50" '
//	END IF
		
ELSE
	//	Need to come up with a way to show enabled/disabled for version prior to 11.5
END IF
	
ls_modify								= ls_modify + ') '
	
ls_modify								= dw_palette.Modify(ls_modify)

IF ls_modify <> '' THEN
	MessageBox('Syntax Error Creating Group', ls_modify)
END IF

dw_palette.SetPosition('t_' + ds_XPListBar.of_getItem_objectName(vl_item), "detail", TRUE)
dw_palette.SetPosition('p_' + ds_XPListBar.of_getItem_objectName(vl_item), "detail", TRUE)

RETURN
end subroutine

private subroutine of_createitem_label (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										li_displayToolTips

IF of_displayToolTips() THEN
	li_displayToolTips				= 1
ELSE
	li_displayToolTips				= 0
END IF

String									ls_modify

ls_modify								= 'CREATE text(band=detail' + ' '															&
											+ 'alignment="0" '																				&
											+ 'text="' + ds_XPListBar.of_getItem_text(vl_item) + '" '							&
											+ 'border="0" '																					&
											+ 'x="' + String(il_xIndent + (il_xPixelInUnits * 3)) + '" '						&
											+ 'y="0" '																							&
											+ 'width="0" '																						&
											+ 'height="0" '																					&
											+ 'html.valueishtml="0" '																		&
											+ 'name=t_' + ds_XPListBar.of_getItem_objectName(vl_item) + ' '					&
											+ 'visible="1" '																					&
											+ 'font.face="' + ds_XPListBar.of_getItem_fontFace(vl_item) + '" '				&
											+ 'font.height="' + String(#FontSize * -1) + '" '										&
											+ 'font.weight="400" '																			&
											+ 'font.family="2" font.pitch="2" font.charset="0" '									&
											+ 'background.mode="1" '

//IF invo_XPListBar.of_PBVersion >= 12.5 THEN
//			
//	IF ds_XPListBar.of_getItem_enabled(vl_item) THEN
//		ls_modify						= ls_modify + 'enabled="1" '
//	ELSE
//		ls_modify						= ls_modify + 'enabled="0" '
//	END IF
//
//END IF

IF ds_XPListbar.of_PBVersion() >= 11.5 THEN

	ls_modify							= ls_Modify																							&
											+ 'background.transparency="100" '															&
											+ 'background.brushmode="0" '																	&
											+ 'background.gradient.repetition.mode="0" '												&
											+ 'background.gradient.repetition.count="0" '											&
											+ 'background.gradient.repetition.length="100" '										&
											+ 'background.gradient.focus="0" '															&
											+ 'background.gradient.scale="100" '														&
											+ 'background.gradient.spread="100" '														&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '				&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +				&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +				&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '							&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" ' +										&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '							&
											+ 'tooltip.maxwidth="0" '																		&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '						&
											+ 'tooltip.transparency="0" '																	&
											+ 'tooltip.tip="' + ds_XPListBar.of_getItem_toolTip(vl_item) + '" '
END IF

//IF ds_XPListBar.of_getItem_enabled(vl_item) THEN
//	ls_modify							= ls_modify + 'color="' + String(of_getColor(MENUTEXT)) + '" '
//ELSE
//	ls_modify							= ls_modify + 'color="' + String(of_getColor(DISABLEDTEXT)) + '" '
//END IF
		
ls_modify								= ls_modify + ') '

ls_modify								= dw_palette.Modify(ls_modify)

IF ls_modify <> '' THEN
	MessageBox('Syntax Error Creating Label', ls_modify)
END IF

RETURN
end subroutine

private subroutine of_createitem_link (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										li_displayToolTips

IF of_displayToolTips() THEN
	li_displayToolTips				= 1
ELSE
	li_displayToolTips				= 0
END IF

String									ls_modify

ls_modify								= 'CREATE text(band=detail' + ' '															&
											+ 'alignment="0" '																				&
											+ 'text="' + ds_XPListBar.of_getItem_text(vl_item) + '" '							&
											+ 'border="0" '																					&
											+ 'x="' + String(il_xIndent + (il_xPixelInUnits * 3)) + '" '						&
											+ 'y="0" '																							&
											+ 'width="0" '																						&
											+ 'height="0" '																					&
											+ 'html.valueishtml="0" '																		&
											+ 'name=t_' + ds_XPListBar.of_getItem_objectName(vl_item) + ' '					&
											+ 'pointer="HyperLink!"'																		&
											+ 'visible="1" '																					&
											+ 'font.face="' + ds_XPListBar.of_getItem_fontFace(vl_item) + '" '				&
											+ 'font.height="' + String(#FontSize * -1) + '" '										&
											+ 'font.weight="400" '																			&
											+ 'font.family="2" font.pitch="2" font.charset="0" '									&
											+ 'background.mode="1" '

//IF invo_XPListBar.of_PBVersion >= 12.5 THEN
//			
//	IF ds_XPListBar.of_getItem_enabled(vl_item) THEN
//		ls_modify						= ls_modify + 'enabled="1" '
//	ELSE
//		ls_modify						= ls_modify + 'enabled="0" '
//	END IF
//
//END IF

IF ds_XPListbar.of_PBVersion() >= 11.5 THEN

	ls_modify							= ls_Modify																							&
											+ 'background.transparency="100" '															&
											+ 'background.brushmode="0" '																	&
											+ 'background.gradient.repetition.mode="0" '												&
											+ 'background.gradient.repetition.count="0" '											&
											+ 'background.gradient.repetition.length="100" '										&
											+ 'background.gradient.focus="0" '															&
											+ 'background.gradient.scale="100" '														&
											+ 'background.gradient.spread="100" '														&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '				&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +				&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +				&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '							&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" ' +										&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '							&
											+ 'tooltip.maxwidth="0" '																		&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '						&
											+ 'tooltip.transparency="0" '																	&
											+ 'tooltip.tip="' + ds_XPListBar.of_getItem_toolTip(vl_item) + '" '
END IF

//IF ds_XPListBar.of_getItem_enabled(vl_item) THEN
//	ls_modify							= ls_modify + 'color="' + String(of_getColor(MENUTEXT)) + '" '
//ELSE
//	ls_modify							= ls_modify + 'color="' + String(of_getColor(DISABLEDTEXT)) + '" '
//END IF
		
ls_modify								= ls_modify + ') '

ls_modify								= dw_palette.Modify(ls_modify)

IF ls_modify <> '' THEN
	MessageBox('Syntax Error Creating Link', ls_modify)
END IF

RETURN
end subroutine

private subroutine of_createitem_separator (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_modify

ls_modify								= 'CREATE line(band=detail' + ' '																&
											+ 'x1="' + String(il_xIndent + (il_xPixelInUnits * 2)) + '" '							&
											+ 'y1="0" '																								&
											+ 'x2="0" '																								&
											+ 'y2="0" '																								&
											+ 'name=l_' + ds_XPListBar.SEPARATOR + '_' + String(vl_item) + '_a '					&
											+ 'visible="1" '																						&
											+ 'pen.style="0" '																					&
											+ 'pen.width="' + String(il_yPixelInUnits) + '" '											&
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '							&
											+ 'background.mode="2") '																			&
											+ 'CREATE line(band=detail' + ' '																&
											+ 'x1="' + String(il_xIndent + (il_xPixelInUnits * 2)) + '" '							&
											+ 'y1="0" '																								&
											+ 'x2="0" '																								&
											+ 'y2="0" '																								&
											+ 'name=l_' + ds_XPListBar.SEPARATOR + '_' + String(vl_item) + '_b '					&
											+ 'visible="1" '																						&
											+ 'pen.style="0" '																					&
											+ 'pen.width="' + String(il_yPixelInUnits) + '" '											&
											+ 'pen.color="' + String(of_getColor(THREEDLIGHT)) + '" '								&
											+ 'background.mode="2")'
											
ls_modify								= dw_palette.Modify(ls_modify)

IF ls_modify <> '' THEN
	MessageBox('Syntax Error Creating Separator', ls_modify)
END IF

RETURN
end subroutine

private subroutine of_scrollbuttons ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_vMax
ll_vMax									= Long(dw_palette.Describe('dataWindow.VerticalScrollMaximum'))

IF ll_vMax = 0 THEN
	dw_palette.Modify('t_scroll_top.Visible="0" t_scroll_bottom.Visible="0"')
//	dw_palette.Modify('l_scroll_top.Visible="0" l_scroll_bottom.Visible="0"')
ELSE

	Long									ll_pos
	ll_pos								= Long(dw_palette.Describe('dataWindow.VerticalScrollPosition'))

	Long									ll_top		= 1
	Long									ll_bottom	= 1
	
	CHOOSE CASE ll_pos
		CASE 0
			ll_top						= 0
		CASE ll_vMax
			ll_bottom					= 0
		CASE ELSE
	END CHOOSE
	
	dw_palette.Modify('t_scroll_top.Visible="' + String(ll_top) + '" t_scroll_bottom.Visible="' + String(ll_bottom) + '"')
//	dw_palette.Modify('l_scroll_top.Visible="' + String(ll_top) + '" l_scroll_bottom.Visible="' + String(ll_bottom) + '"')

	IF tmg_XPListBar.Running THEN
		IF ib_scrollTop THEN
			IF ll_top = 0 THEN
				tmg_XPListBar.Stop()
			END IF
		ELSE
			IF ib_scrollBottom THEN
				IF ll_bottom = 0 THEN
					tmg_XPListBar.Stop()
				END IF
			END IF
		END IF
	END IF
	
END IF

RETURN
end subroutine

public function boolean of_iscollapsed (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_collapsed = FALSE

IF vl_Item > 0 AND vl_Item <= ds_XPListBar.RowCount() THEN
	lb_collapsed						= ds_XPListBar.of_getItem_collapsed(vl_item)
END IF

Return(lb_collapsed)
end function

private function long of_size_text (string vs_text, string vs_fontface, integer vi_fontsize);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_width	= 0

IF isNull(vs_text) OR Trim(vs_text) = '' THEN Return(ll_width)

IF isNull(vs_fontFace) OR Trim(vs_fontFace) = '' THEN Return(ll_width)

st_XPListBar.FaceName				= vs_fontFace
st_XPListBar.TextSize					= vi_fontSize * -1
	
ll_width									= PixelsToUnits(invo_XPListBar.of_GetFontWidth(st_XPListBar, vs_text) + 4, XPixelsToUnits!)
	
Return(ll_width)
end function

private function long of_size_text (string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_size_text(vs_text, #FontFace, #FontSize))
end function

public function boolean of_isenabled (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_enabled = FALSE

IF vl_Item > 0 AND vl_Item <= ds_XPListBar.RowCount() THEN
	lb_enabled							= ds_XPListBar.of_getItem_enabled(vl_item)
END IF

Return(lb_enabled)
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

public function integer of_setenabled (long vl_item, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 0 OR vl_item > ds_XPListBar.RowCount() THEN Return(FAILURE)

IF isnull(vb_switch) THEN vb_switch = FALSE

IF ds_XPListBar.of_getItem_enabled(vl_item) = (NOT vb_switch) THEN
	
	ds_XPListBar.of_setItem_enabled(vl_item, vb_switch)

	of_update(TRUE)
	
END IF

Return(SUCCESS)
end function

public function integer of_setvisible (long vl_item, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 0 OR vl_item > ds_XPListBar.RowCount() THEN Return(FAILURE)

IF isnull(vb_switch) THEN vb_switch = FALSE

IF ds_XPListBar.of_getItem_visible(vl_item) = (NOT vb_switch) THEN
	
	ds_XPListBar.of_setItem_visible(vl_item, vb_switch)

	of_update()
	
END IF

Return(SUCCESS)
end function

public function integer of_setcollapsed (long vl_item, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 0 OR vl_item > ds_XPListBar.RowCount() THEN Return(FAILURE)

IF ds_XPListBar.of_getItem_parent(vl_item) <> 0 THEN Return(FAILURE)		//	If this is not a parent, then it can't be collapsed

IF isnull(vb_switch) THEN vb_switch = FALSE

IF ds_XPListBar.of_getItem_collapsed(vl_item) = (NOT vb_switch) THEN
	
	ds_XPListBar.of_setItem_collapsed(vl_item, vb_switch)

	IF vb_switch THEN
		dw_palette.Modify('p_group_' + String(vl_item) + '_chevron.filename="' + is_chevronDown + '"')
	ELSE
		dw_palette.Modify('p_group_' + String(vl_item) + '_chevron.filename="' + is_chevronUp + '"')
	END IF
	
	of_update(TRUE)
	
END IF

Return(SUCCESS)
end function

private function long of_fontheight ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_fontHeight(#FontSize))
end function

private function long of_fontheight (integer vi_fontsize);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(Long(Round(Double(vi_fontSize) * Double(6.4) + Double(0.5), 0)))
end function

public subroutine of_enabletooltips ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ib_displayToolTips					= TRUE

String									ls_objectName

String									ls_describe

Long										ll_item,	ll_items
ll_items									= ds_XPListBar.RowCount()

FOR ll_item = 1 TO ll_items
	
	CHOOSE CASE ds_XPListBar.of_getItem_objectType(ll_item)
			
		CASE ds_XPListBar.GROUP,	ds_XPListBar.LABEL,	ds_XPListBar.LINK
		
			ls_objectName				= ds_XPListBar.of_getItem_objectName(ll_item)
			
			ls_describe					= Trim(dw_palette.Describe('p_' + ls_objectName + '.X'))
	
			IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
				dw_palette.Modify('p_' + ls_objectName + '.ToolTip.Enabled="1"')
			END IF
		
			ls_describe					= Trim(dw_palette.Describe('t_' + ls_objectName + '.X'))
			
			IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
				dw_palette.Modify('t_' + ls_objectName + '.ToolTip.Enabled="1"')
			END IF

	END CHOOSE

NEXT

RETURN
end subroutine

public subroutine of_disabletooltips ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ib_displayToolTips					= FALSE

String									ls_describe

String									ls_objectName

Long										ll_item,	ll_items
ll_items									= ds_XPListBar.RowCount()

FOR ll_item = 1 TO ll_items
	
	CHOOSE CASE ds_XPListBar.of_getItem_objectType(ll_item)
			
		CASE ds_XPListBar.GROUP,	ds_XPListBar.LABEL,	ds_XPListBar.LINK
			
			ls_objectName				= ds_XPListBar.of_getItem_objectName(ll_item)
			
			ls_describe					= Trim(dw_palette.Describe('p_' + ls_objectName + '.X'))
	
			IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
				dw_palette.Modify('p_' + ls_objectName + '.ToolTip.Enabled="0"')
			END IF
		
			ls_describe					= Trim(dw_palette.Describe('t_' + ls_objectName + '.X'))
			
			IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
				dw_palette.Modify('t_' + ls_objectName + '.ToolTip.Enabled="0"')
			END IF

	END CHOOSE

NEXT

RETURN
end subroutine

public function boolean of_displaytooltips ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(ib_displayToolTips)
end function

public function long of_locateitem (string vs_text);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(ds_XPListBar.of_locateItem_text(vs_text))
end function

private subroutine of_underline_link (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF il_lastLink = 0 AND vl_item = 0 THEN RETURN

String									ls_modify

IF il_lastLink <> 0 THEN
	ls_modify							= ls_modify + 't_' + ds_XPListBar.of_getItem_objectName(il_lastLink) + '.font.underline="0" '
END IF

IF vl_item <> 0 THEN
	ls_modify							= ls_modify + 't_' + ds_XPListBar.of_getItem_objectName(vl_item) + '.font.underline="1" '
END IF

ls_modify								= dw_palette.Modify(ls_modify)

il_lastLink								= vl_item

RETURN
end subroutine

protected function long of_getcolor (string vs_color);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_color = -1

CHOOSE CASE vs_color
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
		IF #SolidBackGround THEN
			ll_color						= invo_color.of_menuBar()
		ELSE
			IF ds_XPListBar.of_PBVersion() >= 11.5 THEN
				ll_color					= invo_color.of_activeCaption()
			ELSE
				ll_color					= invo_color.of_menuBar()
			END IF
		END IF
	CASE LOSEFOCUS
		IF #SolidBackGround THEN
			ll_color						= invo_color.of_menuBar()
		ELSE
			IF ds_XPListBar.of_PBVersion() >= 11.5 THEN
				ll_color					= invo_color.of_inactiveCaption()
			ELSE
				ll_color					= invo_color.of_menuBar()
			END IF
		END IF
	CASE TOOLBAR
		IF #SolidBackGround THEN
			ll_color						= invo_color.of_menuBar()
		ELSE
			IF ds_XPListBar.of_PBVersion() >= 11.5 THEN
				IF ib_trackMouseEvent THEN
					ll_color				= invo_color.of_activeCaption()
				ELSE
					ll_color				= invo_color.of_inactiveCaption()
				END IF
			ELSE
				ll_color					= invo_color.of_menuBar()
			END IF
		END IF
	CASE GRADIENT
		ll_color							= invo_color.of_menuBar()
	CASE THREEDDKSHADOW
		ll_color							= invo_color.of_3DDkShadow()
	CASE THREEDLIGHT
		ll_color							= invo_color.of_3DLight()
END CHOOSE

IF ll_color = -1 THEN
	ll_color								= messageBox('Color Error', vs_color) - 1
END IF

Return(ll_color)
end function

private subroutine of_correct_bitmapsize ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

CHOOSE CASE #BitMapSize
	CASE IS < MEDIUM
		#BitMapSize						= SMALL
	CASE IS < LARGE
		#BitMapSize						= MEDIUM
	CASE IS < XLARGE
		#BitMapSize						= LARGE
	CASE ELSE
		#BitMapSize						= XLARGE
END CHOOSE

RETURN
end subroutine

private subroutine of_correct_size ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_bitMapSize	= -1

CHOOSE CASE #BitMapSize
	CASE IS < MEDIUM
		ll_bitMapSize					= 1
	CASE IS < LARGE
		ll_bitMapSize					= 2
	CASE IS < XLARGE
		ll_bitMapSize					= 3
	CASE ELSE
		ll_bitMapSize					= 4
END CHOOSE

Long										ll_fontSize	= -1

CHOOSE CASE #FontSize
	CASE IS < 10
		ll_fontSize						= 1
	CASE IS < 12
		ll_fontSize						= 2
	CASE IS < 14
		ll_fontSize						= 3
	CASE ELSE
		ll_fontSize						= 4
END CHOOSE

Long										ll_size
ll_size									= Max(ll_bitMapSize, ll_fontSize)

CHOOSE CASE ll_size
		
	CASE 1
		
		#BitMapSize						= SMALL
		#FontSize						= 8

	CASE 2
		
		#BitMapSize						= MEDIUM
		#FontSize						= 10

	CASE 3
		
		#BitMapSize						= LARGE
		#FontSize						= 12

	CASE ELSE
		
		#BitMapSize						= XLARGE
		#FontSize						= 14

END CHOOSE

RETURN
end subroutine

private subroutine of_losefocus ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

dw_palette.SetRedraw(FALSE)

String									ls_modify			= ''

String									ls_group

Long										ll_group,	ll_groups
ll_groups								= ds_XPListBar.RowCount()

FOR ll_group = 1 TO ll_groups
	
	IF ds_XPListBar.of_getItem_objectType(ll_group) <> ds_XPListBar.GROUP THEN CONTINUE

	ls_group								= ds_XPListBar.of_getItem_objectName(ll_group)

	ls_modify							= ls_modify																							&
											+ 'r_' + ls_group + '_container.'															&
											+ 'background.color="' + String(of_getColor(LOSEFOCUS)) + '" '
NEXT

ls_modify								= dw_palette.Modify(ls_modify)

dw_palette.SetRedraw(TRUE)
end subroutine

private subroutine of_getfocus ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

dw_palette.SetRedraw(FALSE)

String									ls_modify			= ''

String									ls_group

Long										ll_group,	ll_groups
ll_groups								= ds_XPListBar.RowCount()

FOR ll_group = 1 TO ll_groups
	
	IF ds_XPListBar.of_getItem_objectType(ll_group) <> ds_XPListBar.GROUP THEN CONTINUE

	ls_group								= ds_XPListBar.of_getItem_objectName(ll_group)

	ls_modify							= ls_modify																							&
											+ 'r_' + ls_group + '_container.'															&
											+ 'background.color="' + String(of_getColor(GETFOCUS)) + '" '
NEXT

ls_modify								= dw_palette.Modify(ls_modify)

dw_palette.SetRedraw(TRUE)
end subroutine

public subroutine of_broadcast_showtooltips (boolean vb_showtext);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

//	This routine notifies all u_cst_toolBar objects to turn on/off their text

Long										ll_XPListBar,	ll_XPListBars
ll_XPListBars							= upperBound(suo_XPListBar[])

FOR ll_XPListBar = 1 TO ll_XPListBars
	
	IF NOT IsValid(suo_XPListBar[ll_XPListBar]) THEN CONTINUE

	IF vb_showText THEN
		suo_XPListBar[ll_XPListBar].of_enableToolTips()
	ELSE
		suo_XPListBar[ll_XPListBar].of_disableToolTips()
	END IF
	
NEXT

RETURN
end subroutine

public function long of_clickitem (long vl_group);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_group) THEN Return(PREVENT)

IF vl_group <= 0 OR vl_group > ds_XPListBar.RowCount() THEN Return(PREVENT)

Return(of_clickItem(ds_XPListBar.of_getItem_text(vl_group), ''))
end function

public function long of_clickitem (long vl_group, long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_group) THEN Return(PREVENT)

IF vl_group <= 0 OR vl_group > ds_XPListBar.RowCount() THEN Return(PREVENT)

IF isNull(vl_item) THEN Return(PREVENT)

IF vl_item <= 0 OR vl_item > ds_XPListBar.RowCount() THEN Return(PREVENT)

Return(of_clickItem(ds_XPListBar.of_getItem_text(vl_group), ds_XPListBar.of_getItem_text(vl_item)))
end function

public function long of_locateitem (string vs_text_group, string vs_text_item);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(ds_XPListBar.of_locateItem_text(vs_text_group, vs_text_item))
end function

public function integer of_setvisible (string vs_text, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setVisible(of_locateItem(vs_text), vb_switch))
end function

public function integer of_setenabled (string vs_text, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setEnabled(of_locateItem(vs_text), vb_switch))
end function

public function integer of_setvisible (string vs_text_group, string vs_text_item, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setVisible(of_locateItem(vs_text_group, vs_text_item), vb_switch))
end function

public function boolean of_iscollapsed (string vs_text_group);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_collapsed = FALSE

Long										ll_item
ll_item									= of_locateItem(vs_text_group, '')

IF NOT IsNull(ll_item) THEN
	lb_collapsed						= ds_XPListbar.of_getItem_collapsed(ll_item)
END IF

Return(lb_collapsed)
end function

public function integer of_setcollapsed (string vs_text_group, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setCollapsed(of_locateItem(vs_text_group, ''), vb_switch))
end function

public function long of_clickitem (string vs_text_group);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_clickItem(vs_text_group, ''))
end function

public function long of_clickitem (string vs_text_group, string vs_text_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_Return		= PREVENT

Boolean									lb_available	= TRUE

IF of_isVisible(vs_text_group) AND of_isEnabled(vs_text_group) THEN
	IF isNull(vs_text_item) OR Trim(vs_text_item) = '' THEN
	ELSE
		IF of_isVisible(vs_text_item) AND of_isEnabled(vs_text_item) THEN
		ELSE
			lb_available				= FALSE
		END IF
	END IF
ELSE
	lb_available						= FALSE
END IF

IF NOT lb_available THEN
	
	MessageBox('ToolBar Error', 'XPListBar option (' + vs_text_group + ', ' + vs_text_item + ') is not currently available.')
	
	Return(ll_return)
	
END IF

ll_Return								= TRIGGER EVENT ue_itemClicking(vs_text_group, vs_text_item)
				
IF IsNull(ll_Return) THEN ll_Return = ALLOW
					
IF ll_Return = ALLOW THEN 
	EVENT ue_itemClicked(vs_text_group, vs_text_item)
END IF

Return(ll_Return)
end function

public function boolean of_isenabled (string vs_text_group, string vs_text_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_enabled = FALSE

Long										ll_item
ll_item									= of_locateItem(vs_text_group, vs_text_item)

IF NOT IsNull(ll_item) THEN
	lb_enabled							= ds_XPListbar.of_getItem_enabled(ll_item)
END IF

Return(lb_enabled)
end function

public function boolean of_isenabled (string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_enabled = FALSE

Long										ll_item
ll_item									= of_locateItem(vs_text)

IF NOT IsNull(ll_item) THEN
	lb_enabled							= ds_XPListbar.of_getItem_enabled(ll_item)
END IF

Return(lb_enabled)
end function

public function boolean of_isvisible (string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_Visible = FALSE

Long										ll_item
ll_item									= of_locateItem(vs_text)

IF NOT IsNull(ll_item) THEN
	lb_Visible							= ds_XPListbar.of_getItem_visible(ll_item)
END IF

Return(lb_Visible)
end function

public function boolean of_isvisible (string vs_text_group, string vs_text_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_Visible = FALSE

Long										ll_item
ll_item									= of_locateItem(vs_text_group, vs_text_item)

IF NOT IsNull(ll_item) THEN
	lb_Visible							= ds_XPListbar.of_getItem_visible(ll_item)
END IF

Return(lb_Visible)
end function

private subroutine of_underline_link (string vs_objectname);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_underLine_link(ds_XPListBar.of_locateItem_objectName(vs_objectName))

RETURN
end subroutine

public function integer of_setimage (long vl_item, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 1 OR vl_item > ds_XPListBar.RowCount() THEN Return(FAILURE)

IF isNull(vs_image) THEN vs_image = ''

ds_XPListBar.of_setItem_image(vl_item, invo_XPListBar.of_getImageName(vs_image))

IF isNull(vs_image) OR Trim(vs_image) = '' THEN
	ds_XPListBar.of_setItem_imageTransparency(vl_item, of_getColor(DEFAULTIMAGETRANSPARENCY))
ELSE
	ds_XPListBar.of_setItem_imageTransparency(vl_item, of_getColor(DEFAULTIMAGETRANSPARENCY))
END IF

String									ls_objectName
ls_objectName							= ds_XPListBar.of_getItem_objectName(vl_item)
			
String									ls_describe
ls_describe								= Trim(dw_palette.Describe('p_' + ls_objectName + '.X'))
			
IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
	dw_palette.Modify('p_' + ls_objectName + '.FileName="' + vs_image + '"')
END IF

Return(SUCCESS)
end function

public function integer of_setimage (string vs_text, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setImage(of_locateItem(vs_text), vs_image))
end function

public function integer of_setenabled (string vs_text_group, string vs_text_item, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setEnabled(of_locateItem(vs_text_group, vs_text_item), vb_switch))
end function

public function integer of_setimage (string vs_text_group, string vs_text_item, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setImage(of_locateItem(vs_text_group, vs_text_item), vs_image))
end function

public function integer of_settext (long vl_item, string vs_text_new);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 1 OR vl_item > ds_XPListBar.RowCount() THEN Return(FAILURE)

IF isNull(vs_text_new) THEN vs_text_new = ''

ds_XPListBar.of_setItem_text(vl_item, vs_text_new)

String									ls_objectName
ls_objectName							= ds_XPListBar.of_getItem_objectName(vl_item)
			
String									ls_describe
ls_describe								= Trim(dw_palette.Describe('t_' + ls_objectName + '.X'))
			
IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
	dw_palette.Modify('t_' + ls_objectName + '.Text="' + vs_text_new + '"')
END IF

Return(SUCCESS)
end function

public function integer of_settext (string vs_text, string vs_text_new);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setText(of_locateItem(vs_text), vs_text_new))
end function

public function integer of_settext (string vs_text_group, string vs_text_item, string vs_text_new);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setText(of_locateItem(vs_text_group, vs_text_item), vs_text_new))
end function

public function integer of_settiptext (long vl_item, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 1 OR vl_item > ds_XPListBar.RowCount() THEN Return(FAILURE)

IF isNull(vs_tooltip) THEN vs_tooltip = ''

ds_XPListBar.of_setItem_toolTip(vl_item, vs_tooltip)

String									ls_objectName
ls_objectName							= ds_XPListBar.of_getItem_objectName(vl_item)
			
String									ls_describe
ls_describe								= Trim(dw_palette.Describe('p_' + ls_objectName + '.X'))
	
IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
	dw_palette.Modify('p_' + ls_objectName + '.ToolTip.Tip="1"')
END IF

ls_describe								= Trim(dw_palette.Describe('t_' + ls_objectName + '.X'))
			
IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
	dw_palette.Modify('t_' + ls_objectName + '.ToolTip.Tip="1"')
END IF

Return(SUCCESS)
end function

public function integer of_settiptext (string vs_text, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setTipText(of_locateItem(vs_text), vs_tooltip))
end function

public function integer of_settiptext (string vs_text_group, string vs_text_item, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setTipText(of_locateItem(vs_text_group, vs_text_item), vs_tooltip))
end function

public function integer of_update ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_update(FALSE))
end function

public function integer of_update (boolean vb_resetscrollposition);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF NOT ib_update THEN Return(SUCCESS)

IF vb_resetScrollPosition THEN
	Long									ll_verticalPosition
	ll_verticalPosition				= Long(dw_palette.Describe('dataWindow.VerticalScrollPosition'))
END IF

Long										li_displayToolTips

IF of_displayToolTips() THEN
	li_displayToolTips				= 1
ELSE
	li_displayToolTips				= 0
END IF

dw_palette.SetRedraw(FALSE)

Boolean									lb_groupEnabled
Boolean									lb_groupIsEmpty	= TRUE
Long										ll_groupY,			ll_groupWidth

String									ls_modify			= ''
Long										ll_newWidth,		ll_newHeight

//ll_newWidth								= PixelsToUnits(dw_palette.Width, XPixelsToUnits!)
//ll_newHeight							= PixelsToUnits(dw_palette.Height, YPixelsToUnits!)

ll_newWidth								= dw_palette.Width
ll_newHeight							= dw_palette.Height

ls_modify								= 't_scroll_top.width="' + String(ll_newWidth - (il_xIndent * 2)) + '" '		&
											+ 't_scroll_bottom.width="' + String(ll_newWidth - (il_xIndent * 2)) + '" '	&

Long										ll_width,	ll_lines
ll_width									= ll_newWidth - (il_xIndent * 2)

Double									ldbl_fontHeight
ldbl_fontHeight						= of_fontHeight()

mle_XPListBar.TextSize				= #FontSize * -1

mle_XPListBar.Resize(ll_width - (il_xPixelInUnits * 6), 10000)

Long										ll_pos					= 0,	ll_posLast
Long										ll_containerHeight	= 0,	ll_containerHeightLast
Long										ll_containerItem		= 0
Long										ll_separator			= 0
Long										ll_group

String									ls_item,	ls_group

Long										ll_item,	ll_items
ll_items									= ds_XPListBar.RowCount()

FOR ll_group = 1 TO ll_items
	
	IF ds_XPListBar.of_getItem_objectType(ll_group) <> ds_XPListBar.GROUP THEN CONTINUE

	ls_group								= ds_XPListBar.of_getItem_objectName(ll_group)
	
	IF NOT of_isVisible(ll_group) THEN
		
		//	Group is not visible
		ls_modify						= ls_modify																							&
											+ 'r_' + ls_group + '_roundrectangle.Visible="0" '										&
											+ 'r_' + ls_group + '_container.Visible="0" '											&
											+ 'r_' + ls_group + '_right_corner.Visible="0" '										&
											+ 'r_' + ls_group + '_right_shadow.Visible="0" '										&
											+ 'r_' + ls_group + '_left_corner.Visible="0" '											&
											+ 'r_' + ls_group + '_left_shadow.Visible="0" '											&
											+ 'e_' + ls_group + '.Visible="0" '															&
											+ 't_' + ls_group + '.Visible="0" '															&
											+ 'p_' + ls_group + '_chevron.Visible="0" '
											
		//	Items under the group are not visible
		FOR ll_item = 1 TO ll_items
				
			IF ds_XPListBar.of_getItem_parent(ll_item) <> ll_group THEN CONTINUE
			
			//	If the group is not visible, then all items under it are not visible
			CHOOSE CASE ds_XPListBar.of_getItem_objectType(ll_item)
		
				CASE ds_XPListBar.LABEL
					ls_modify			= ls_modify + 't_' + ds_XPListBar.of_getItem_objectName(ll_item) + '.Visible="0" '
				CASE ds_XPListBar.LINK
					ls_modify			= ls_modify + 't_' + ds_XPListBar.of_getItem_objectName(ll_item) + '.Visible="0" '
				CASE ds_XPListBar.SEPARATOR
					ls_modify			= ls_modify																							&
											+ 'l_separator_' + String(ll_item) + '_a.Visible="0" '								&
											+ 'l_separator_' + String(ll_item) + '_b.Visible="0" '
			END CHOOSE
			
		NEXT
		
		CONTINUE

	END IF
	
	//	Group is visible
	ls_modify							= ls_modify																							&
											+ 'r_' + ls_group + '_roundrectangle.Visible="1" '										&
											+ 'r_' + ls_group + '_container.Visible="1" '											&
											+ 'r_' + ls_group + '_right_corner.Visible="1" '										&
											+ 'r_' + ls_group + '_right_shadow.Visible="1" '										&
											+ 'r_' + ls_group + '_left_corner.Visible="1" '											&
											+ 'r_' + ls_group + '_left_shadow.Visible="1" '											&
											+ 'e_' + ls_group + '.Visible="1" '															&
											+ 't_' + ls_group + '.Visible="1" '															&
											+ 'p_' + ls_group + '_chevron.Visible="1" '

	//	Update the group's position
	ls_modify							= ls_modify																							&
											+ 'r_' + ls_group + '_roundrectangle.'														&
											+ 'width="' + String(ll_newWidth - (il_xIndent * 2)) + '" '							&
											+ 'r_' + ls_group + '_container.'															&
											+ 'width="' + String(ll_newWidth - (il_xIndent * 2)) + '" '							&
											+ 'r_' + ls_group + '_right_corner.'														&
											+ 'x="' + String(il_xIndent + ll_width - 18) + '" '									&
											+ 'r_' + ls_group + '_right_shadow.'														&
											+ 'x="' + String(il_xIndent + ll_width - 18) + '" '									&
											+ 'e_' + ls_group + '.'																			&
											+ 'x="' + String(il_xIndent + ll_width - 87 - (il_xPixelInUnits * 4)) + '" '	&
											+ 'p_' + ls_group + '_chevron.'																&
											+ 'x="' + String(il_xIndent + ll_width - 87) + '" '
											
	ll_groupY							= ll_pos + ((il_groupHeight - ldbl_fontHeight) / 2)
	
	ll_groupWidth						= (il_xIndent + ll_width - 87 - (il_xPixelInUnits * 4))								&
											- Long(dw_palette.Describe('t_' + ls_group + '.x')) - (il_xPixelInUnits * 2)
	
	ll_groupWidth						= Min(ll_groupWidth, of_size_text(ds_XPListBar.of_getItem_text(ll_group)))
	
	ls_modify							= ls_modify																							&
											+ 'r_' + ls_group + '_roundrectangle.'														&
											+ 'y="' + String(ll_pos) + '" '																&
											+ 'r_' + ls_group + '_container.'															&
											+ 'y="' + String(ll_pos + 96) + '" '														&
											+ 'r_' + ls_group + '_right_corner.'														&
											+ 'y="' + String(ll_pos + 84) + '" '														&
											+ 'r_' + ls_group + '_right_shadow.'														&
											+ 'y="' + String(ll_pos + 84) + '" '														&
											+ 'r_' + ls_group + '_left_corner.'															&
											+ 'y="' + String(ll_pos + 84) + '" '														&
											+ 'r_' + ls_group + '_left_shadow.'															&
											+ 'y="' + String(ll_pos + 84) + '" '														&
											+ 'e_' + ls_group + '.'																			&
											+ 'y="' + String(ll_pos + 12) + '" '														&
											+ 't_' + ls_group + '.'																			&
											+ 'y="' + String(ll_groupY) + '" '															&
											+ 't_' + ls_group + '.'																			&
											+ 'height="' + String(1 * Int(ldbl_fontHeight)) + '" '								&
											+ 't_' + ls_group + '.'																			&
											+ 'width="' + String(ll_groupWidth) + '" '												&
											+ 'p_' + ls_group + '_chevron.'																&
											+ 'y="' + String(ll_pos + 28) + '" '

	ll_pos							 	= ll_pos + il_groupHeight
	
	lb_groupEnabled					= of_isEnabled(ll_group)
	
	IF lb_groupEnabled THEN

		IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
			ls_modify					= ls_modify + 't_' + ls_group + '.Enabled="1" '
		END IF

		ls_modify						= ls_modify + 't_' + ls_group + '.Color="' + String(of_getColor(MENUTEXT)) + '"'
		
	ELSE
		
		IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
			ls_modify					= ls_modify + 't_' + ls_group + '.Enabled="0" '
		END IF
		
		ls_modify						= ls_modify + 't_' + ls_group + '.Color="' + String(of_getColor(DISABLEDTEXT)) + '"'
		
	END IF
	
	ll_containerHeight				= 0
	ll_containerItem					= 0

	lb_groupIsEmpty					= TRUE
	
	FOR ll_item = 1 TO ll_items
				
		IF ds_XPListBar.of_getItem_parent(ll_item) <> ll_group THEN CONTINUE
			
		ls_item							= ds_XPListBar.of_getItem_objectName(ll_item)
		
		CHOOSE CASE ds_XPListBar.of_getItem_objectType(ll_item)
		
			CASE ds_XPListBar.LABEL
	
				IF NOT of_isVisible(ll_item) OR of_isCollapsed(ll_group) THEN
					ls_modify			= ls_modify + 't_' + ls_item + '.Visible="0" '
					CONTINUE
				END IF
				
				IF of_isEnabled(ll_item) AND lb_groupEnabled THEN
					
					IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
						ls_modify		= ls_modify + 't_' + ls_item + '.Enabled="1" '
					END IF
					
					ls_modify			= ls_modify + 't_' + ls_item + '.Color="' + String(of_getColor(MENUTEXT)) + '"'
					
				ELSE
					
					IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
						ls_modify		= ls_modify + 't_' + ls_item + '.Enabled="0" '
					END IF
					
					ls_modify			= ls_modify + 't_' + ls_item + '.Color="' + String(of_getColor(DISABLEDTEXT)) + '"'
					
				END IF
					
				lb_groupIsEmpty		= FALSE
				
				ls_modify				= ls_modify + 't_' + ls_item + '.Visible="1" '
		
				ll_separator			= 0
				ll_containerItem		= ll_containerItem + 1
				
				mle_XPListBar.Text	= ds_XPListBar.of_getItem_text(ll_item)
	
				ll_lines					= mle_XPListBar.LineCount()
				
				ls_modify				= ls_modify																							&
											+ 't_' + ls_item + '.'																			&
											+ 'width="' + String(ll_width - (il_xPixelInUnits * 6)) + '" '						&
											+ 't_' + ls_item + '.'																			&
											+ 'height="' + String(ll_lines * Int(ldbl_fontHeight)) + '" '
											
				ll_pos					= ll_pos + (il_yPixelInUnits * 2)
				ll_containerHeight	= ll_containerHeight + (il_yPixelInUnits * 2)
				
				ls_modify				= ls_modify																							&
											+ 't_' + ls_item + '.y="' + String(ll_pos) + '" '

				ll_pos					= ll_pos + (ll_lines * Int(ldbl_fontHeight))
				ll_containerHeight	= ll_containerHeight + (ll_lines * Int(ldbl_fontHeight))
				
				ll_pos					= ll_pos + il_yPixelInUnits
				ll_containerHeight	= ll_containerHeight + il_yPixelInUnits
				
			CASE ds_XPListBar.LINK
	
				IF NOT of_isVisible(ll_item) OR of_isCollapsed(ll_group) THEN
					ls_modify			= ls_modify + 't_' + ls_item + '.Visible="0" '
					CONTINUE
				END IF
				
				IF of_isEnabled(ll_item) AND lb_groupEnabled THEN
					
					IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
						ls_modify		= ls_modify + 't_' + ls_item + '.Enabled="1" '
					END IF
					
					ls_modify			= ls_modify + 't_' + ls_item + '.Color="' + String(of_getColor(MENUTEXT)) + '"'
					
				ELSE
					
					IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
						ls_modify		= ls_modify + 't_' + ls_item + '.Enabled="0" '
					END IF
					
					ls_modify			= ls_modify + 't_' + ls_item + '.Color="' + String(of_getColor(DISABLEDTEXT)) + '"'
					
				END IF
				
				lb_groupIsEmpty		= FALSE

				ls_modify				= ls_modify + 't_' + ls_item + '.Visible="1" '

				ll_separator			= 0
				ll_containerItem		= ll_containerItem + 1
		
				
				mle_XPListBar.Text	= ds_XPListBar.of_getItem_text(ll_item)
	
				ll_lines					= mle_XPListBar.LineCount()
				
				ls_modify				= ls_modify																							&
											+ 't_' + ls_item + '.'																			&
											+ 'width="' + String(ll_width - (il_xPixelInUnits * 6)) + '" '						&
											+ 't_' + ls_item + '.'																			&
											+ 'height="' + String(ll_lines * Int(ldbl_fontHeight)) + '" '

				ll_pos					= ll_pos + (il_yPixelInUnits * 2)
				ll_containerHeight	= ll_containerHeight + (il_yPixelInUnits * 2)
				
				ls_modify				= ls_modify																							&
											+ 't_' + ls_item + '.y="' + String(ll_pos) + '" '

				ll_pos					= ll_pos + (ll_lines * Int(ldbl_fontHeight))
				ll_containerHeight	= ll_containerHeight + (ll_lines * Int(ldbl_fontHeight))

				ll_pos					= ll_pos + il_yPixelInUnits
				ll_containerHeight	= ll_containerHeight + il_yPixelInUnits
				
			CASE ds_XPListBar.SEPARATOR
	
				IF NOT of_isVisible(ll_item) OR of_isCollapsed(ll_group) THEN
					ls_modify			= ls_modify																							&
											+ 'l_' + ls_item + '_a.Visible="0" ' + 'l_' + ls_item + '_b.Visible="0" '
					CONTINUE
				END IF

				//	First item can not be a separator
				IF ll_containerItem = 0 THEN
					ls_modify			= ls_modify																							&
											+ 'l_' + ls_item + '_a.Visible="0" ' + 'l_' + ls_item + '_b.Visible="0" '
					CONTINUE
				END IF
				
				//	No consecutive separators
				IF ll_separator <> 0 THEN
					ls_modify			= ls_modify																							&
											+ 'l_' + ls_item + '_a.Visible="0" ' + 'l_' + ls_item + '_b.Visible="0" '
					CONTINUE
				END IF
				
				lb_groupIsEmpty		= FALSE

				ls_modify				= ls_modify																							&
											+ 'l_' + ls_item + '_a.Visible="1" ' + 'l_' + ls_item + '_b.Visible="1" '
											
				ll_separator 			= ll_item
				
				ls_modify				= ls_modify																							&
											+ 'l_' + ls_item + '_a.'																		&
											+ 'x2="' + String(il_xIndent + ll_width - (il_xPixelInUnits * 2)) + '" '		&
											+ 'l_' + ls_item + '_b.'																		&
											+ 'x2="' + String(il_xIndent + ll_width - (il_xPixelInUnits * 2)) + '" '
											
				ll_posLast				= ll_pos
				ll_containerHeightLast																										&
											= ll_containerHeight
											
				ll_pos					= ll_pos + (il_yPixelInUnits * 2)
				ll_containerHeight	= ll_containerHeight + (il_yPixelInUnits * 2)
				
				ls_modify				= ls_modify																							&
											+ 'l_' + ls_item + '_a.y1="' + String(ll_pos) + '" '									&
											+ 'l_' + ls_item + '_a.y2="' + String(ll_pos) + '" '									&
											+ 'l_' + ls_item + '_b.'																		&
											+ 'y1="' + String(ll_pos + il_yPixelInUnits) + '" '									&
											+ 'l_' + ls_item + '_b.'																		&
											+ 'y2="' + String(ll_pos + il_yPixelInUnits) + '" '

				ll_pos					= ll_pos + (il_yPixelInUnits * 2)
				ll_containerHeight	= ll_containerHeight + (il_yPixelInUnits * 2)

				ll_pos					= ll_pos + il_yPixelInUnits
				ll_containerHeight	= ll_containerHeight + il_yPixelInUnits

		END CHOOSE
		
	NEXT

	IF ll_separator <> 0 THEN
		
		ls_modify						= ls_modify																							&
											+ 'l_separator_' + String(ll_separator) + '_a.Visible="0" '							&
											+ 'l_separator_' + String(ll_separator) + '_b.Visible="0" '

		ll_pos							= ll_posLast
		ll_containerHeight			= ll_containerHeightLast
		
	END IF
	
	IF lb_groupIsEmpty THEN
		ll_containerHeight			= 0
	ELSE
		
		ll_pos							= ll_pos + (il_yPixelInUnits * 4)
		ll_containerHeight			= ll_containerHeight + (il_yPixelInUnits * 4)
	
	END IF
										
	ls_modify							= ls_modify																							&
											+ 'r_' + ls_group + '_container.Height="' + String(ll_containerHeight) + '" '

	ll_pos								= ll_pos + il_yIndent
	
NEXT

ls_modify								= dw_palette.Modify(ls_modify)

IF il_yIndent <> -1 THEN
	dw_palette.Modify('dataWindow.Header.Height="0"')
	dw_palette.Modify('dataWindow.Header.Height="' + String(il_yIndent) + '"')
END IF

IF vb_resetScrollPosition THEN
	dw_palette.Modify('dataWindow.VerticalScrollPosition="' + String(ll_verticalPosition) + '"')
END IF

dw_palette.SetRedraw(TRUE)

of_scrollButtons()

Return(SUCCESS)
end function

public function string of_gettext (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_Text = ''

IF isNull(vl_item) THEN Return(ls_text)

IF vl_Item > 0 AND vl_Item <= ds_XPListBar.RowCount() THEN
	ls_Text								= ds_XPListBar.of_getItem_text(vl_item)
END IF

Return(ls_Text)
end function

public function string of_gettext (string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_getText(of_locateItem(vs_text)))
end function

public function string of_gettext (string vs_text_group, string vs_text_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_getText(of_locateItem(vs_text_group, vs_text_item)))
end function

public subroutine of_setbackcolor (long vl_backcolor);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

BackColor								= vl_backColor

RETURN
end subroutine

public subroutine of_setbackcolor (integer vi_red, integer vi_green, integer vi_blue);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_setBackColor(RGB(vi_red, vi_green, vi_blue))

RETURN
end subroutine

on u_cst_xplistbar.create
this.st_xplistbar=create st_xplistbar
this.dw_palette=create dw_palette
this.r_border=create r_border
this.mle_xplistbar=create mle_xplistbar
this.ds_xplistbar=create ds_xplistbar
this.tmg_xplistbar=create tmg_xplistbar
this.Control[]={this.st_xplistbar,&
this.dw_palette,&
this.r_border,&
this.mle_xplistbar}
end on

on u_cst_xplistbar.destroy
destroy(this.st_xplistbar)
destroy(this.dw_palette)
destroy(this.r_border)
destroy(this.mle_xplistbar)
destroy(this.ds_xplistbar)
destroy(this.tmg_xplistbar)
end on

event constructor;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

is_chevronUp							= invo_XPListBar.of_image_chevronUp()
is_chevronDown							= invo_XPListBar.of_image_chevronDown()

il_xPixelInUnits						= PixelsToUnits(1, XPixelsToUnits!)
il_yPixelInUnits						= PixelsToUnits(1, YPixelsToUnits!)

of_correct_size()

IF #toolTipIsBubble THEN
	ii_toolTipIsBubble				= 1
ELSE
	ii_toolTipIsBubble				= 0
END IF

setNull(is_lButtonDown)

r_border.Move(0, 0)
r_border.Resize(Width, Height)

dw_palette.Move(il_xPixelInUnits, il_yPixelInUnits)
dw_palette.Resize(Width - (il_xPixelInUnits * 2), Height - (il_yPixelInUnits * 2))

r_border.LineColor					= of_getColor(THREEDDKSHADOW)
r_border.Visible						= #DisplayBorder

Long										ll_index

Long										ll_last
ll_last									= UpperBound(suo_XPListBar[])

FOR ll_index = 1 TO ll_last

	IF isValid(suo_XPListBar[ll_index]) THEN CONTINUE
	
	EXIT
	
NEXT

suo_XPListBar[ll_index]				= this

POST EVENT ue_post_constructor()

RETURN
end event

event destructor;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_index

Long										ll_last
ll_last									= UpperBound(suo_XPListBar[])

FOR ll_index = 1 TO ll_last

	IF isValid(suo_XPListBar[ll_index]) THEN CONTINUE
	
	IF suo_XPListBar[ll_index] = this THEN
		
		setNull(suo_XPListBar[ll_index])
		
		EXIT
		
	END IF
	
NEXT
end event

type st_xplistbar from statictext within u_cst_xplistbar
integer width = 10002
integer height = 10000
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 134217742
long backcolor = 134217741
string text = "XPListBar"
boolean focusrectangle = false
end type

event constructor;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Hide()
end event

type dw_palette from datawindow within u_cst_xplistbar
event ue_dwnmousemove pbm_dwnmousemove
event ue_dwnlbuttonup pbm_dwnlbuttonup
event ue_post_getfocus ( long vl_tabbed )
integer width = 878
integer taborder = 10
string dataobject = "d_xplistbar_palette"
boolean border = false
end type

event ue_dwnmousemove;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

CHOOSE CASE dwo.Name
		
	CASE 't_scroll_top'
		
		ib_scrollTop					= TRUE
		ib_scrollBottom				= FALSE

		IF NOT tmg_XPListBar.Running THEN tmg_XPListBar.Start(.0025)

	CASE 't_scroll_bottom'
		
		ib_scrollTop					= FALSE
		ib_scrollBottom				= TRUE
		
		IF NOT tmg_XPListBar.Running THEN tmg_XPListBar.Start(.0025)
		
	CASE ELSE
		
		ib_scrollTop					= FALSE
		ib_scrollBottom				= FALSE

		IF tmg_XPListBar.Running THEN tmg_XPListBar.Stop()
		
		IF Pos(dwo.Name, 'link') > 0 THEN
			of_underLine_link(ds_XPListBar.of_locateItem_objectName(Mid(dwo.Name, 3)))
		ELSE
			of_underLine_link(0)
		END IF

END CHOOSE

IF NOT ib_trackMouseEvent THEN
	
	ib_trackMouseEvent				= invo_XPListBar.of_trackMouseEvent(handle(this), invo_XPListBar.TME_LEAVE)

	of_getFocus()

//	of_broadCast_invisible(parent)
	
END IF
end event

event ue_dwnlbuttonup;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
ll_item									= ds_XPListBar.of_locateItem_objectName(Mid(dwo.Name, 3))

String									ls_lButtonDown

IF NOT isNull(ll_item) THEN
	ls_lButtonDown						= ds_XPListBar.of_getItem_objectName(ll_item)
ELSE
	setNull(is_lButtonDown)
END IF

IF ls_lButtonDown = is_lButtonDown THEN

	IF of_isVisible(ll_item) AND of_isEnabled(ll_item) THEN
			
		String							ls_group,	ls_item
		String							ls_text

		IF ds_XPListBar.of_getItem_parent(ll_item) = 0 THEN
			
			ls_text						= ds_XPListBar.of_getItem_text(ll_item)
			
			IF isNull(ls_text) OR Trim(ls_text) = '' THEN
				ls_group					= Mid(dwo.Name, 3)
			ELSE
				ls_group					= ls_text
			END IF

			ls_item						= ''
		
		ELSE
		
			Long							ll_group
			ll_group						= ds_XPListBar.of_getItem_parent(ll_item)

			ls_text						= ds_XPListBar.of_getItem_text(ll_group)

			IF isNull(ls_text) OR Trim(ls_text) = '' THEN
				ls_group					= ds_XPListBar.of_getItem_objectName(ll_group)
			ELSE
				ls_group					= ls_text
			END IF
			
			ls_text						= ds_XPListBar.of_getItem_text(ll_item)

			IF isNull(ls_text) OR Trim(ls_text) = '' THEN
				ls_item					= Mid(dwo.Name, 3)
			ELSE
				ls_item					= ls_text
			END IF
				
		END IF
	
		Long								ll_return
		ll_return						= parent.EVENT ue_itemClicking(ls_group, ls_item)
				
		IF isNull(ll_return) THEN ll_return = ALLOW
				
		IF ll_return = ALLOW THEN
			parent.EVENT ue_itemClicked(ls_group, ls_item)
		END IF
			
	END IF
		
END IF
	
setNull(is_lButtonDown)
end event

event losefocus;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_loseFocus()

ib_trackMouseEvent					= FALSE
end event

event other;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

CHOOSE CASE message.Number
	CASE invo_XPListBar.WM_MOUSELEAVE
		
		ib_trackMouseEvent			= FALSE
//		ib_trackMouseEvent			= NOT (of_highLight(INVISIBLE) = SUCCESS)
		
		of_loseFocus()
		
		IF tmg_XPListBar.Running THEN tmg_XPListBar.Stop()

		of_underLine_link(0)
		
END CHOOSE
end event

event resize;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_update()
end event

event constructor;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

//	Make the dataWindow visible
InsertRow(0)
ResetUpdate()

//	Initialize instance variables
il_yIndent								= Long(dw_palette.Describe('DataWindow.Header.Height'))

Long										ll_pixels
ll_pixels								= il_yIndent / il_yPixelInUnits

il_xIndent								= PixelsToUnits(ll_pixels, XPixelsToUnits!)

//	Make sure initial objects are in proper position
String									ls_modify

ls_modify								= 't_scroll_top.x="' + String(il_xIndent) + '" '										&
											+ 't_scroll_bottom.x="' + String(il_xIndent) + '" '
											
ls_modify								= dw_palette.Modify(ls_modify)
end event

event clicked;Long										ll_item

CHOOSE CASE dwo.Type
	
	CASE 'ellipse'
		
		ll_item							= ds_XPListBar.of_locateItem_objectName(Mid(dwo.Name, 3))
		
		IF NOT isNull(ll_item) THEN
			of_setCollapsed(ll_item, NOT of_isCollapsed(ll_item))
		END IF
		
	CASE 'line'

	CASE 'datawindow'
	
	CASE 'bitmap'
		
		ll_item							= ds_XPListBar.of_locateItem_objectName(Mid(dwo.Name, 3))
	
		IF NOT isNull(ll_item) THEN
			IF Pos(dwo.name, '_chevron') > 0 THEN
				of_setCollapsed(ll_item, NOT of_isCollapsed(ll_item))
			ELSE
				is_lButtonDown			= ds_XPListBar.of_getItem_objectName(ll_item)
			END IF
		ELSE
			setNull(is_lButtonDown)
		END IF
	
	CASE 'text'
	
		ll_item							= ds_XPListBar.of_locateItem_objectName(Mid(dwo.Name, 3))
		
		IF NOT isNull(ll_item) THEN
			is_lButtonDown				= ds_XPListBar.of_getItem_objectName(ll_item)
		ELSE
			setNull(is_lButtonDown)
		END IF
		
END CHOOSE
end event

event getfocus;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_getFocus()

Long										ll_tab	= NOTAB

IF KeyDown(KeyTab!) THEN
   IF KeyDown(KeyShift!) THEN
      ll_tab							= BACKTAB
	ELSE
		ll_tab							= TAB
	END IF
END IF

POST EVENT ue_post_getFocus(ll_tab)
end event

event rbuttondown;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

m_XPListBar_context					lm_context
lm_context								= CREATE m_XPListBar_context

lm_context.mf_setParent(parent)

lm_context.m_showToolTips.Checked		= of_displayToolTips()

lm_context.mf_popMenu(this)
end event

event scrollvertical;of_scrollButtons()
end event

type r_border from rectangle within u_cst_xplistbar
long linecolor = 134217738
integer linethickness = 4
long fillcolor = 134217752
integer x = 87
integer y = 176
integer width = 2651
integer height = 104
end type

type mle_xplistbar from multilineedit within u_cst_xplistbar
boolean visible = false
integer width = 78
integer height = 40
integer taborder = 20
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean enabled = false
boolean border = false
borderstyle borderstyle = stylelowered!
end type

type ds_xplistbar from n_cst_xplistbar_items within u_cst_xplistbar descriptor "pb_nvo" = "true" 
end type

on ds_xplistbar.create
call super::create
end on

on ds_xplistbar.destroy
call super::destroy
end on

type tmg_xplistbar from timing within u_cst_xplistbar descriptor "pb_nvo" = "true" 
end type

event timer;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_modify

Long										ll_pos,	ll_new
ll_pos									= Long(dw_palette.Describe('dataWindow.VerticalScrollPosition'))

IF ib_scrollTop THEN
	
	ll_new								= Max(ll_pos - il_yPixelInUnits, 0)
	
	ls_modify							= dw_palette.Modify('dataWindow.VerticalScrollPosition="' + String(ll_new) + '"')

	of_scrollButtons()

ELSE
	IF ib_scrollBottom THEN
		
		Long								ll_max
		ll_max							= Long(dw_palette.Describe('dataWindow.VerticalScrollMaximum'))
		
		ll_new							= Min(ll_pos + il_yPixelInUnits, ll_max)

		ls_modify						= dw_palette.Modify('dataWindow.VerticalScrollPosition="' + String(ll_new) + '"')

		of_scrollButtons()
		
	END IF
END IF

RETURN
end event

on tmg_xplistbar.create
call super::create
TriggerEvent( this, "constructor" )
end on

on tmg_xplistbar.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

