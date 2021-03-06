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
event ue_context_scrollspeed ( long vl_scrollspeed )
event ue_context_size ( string vs_size )
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
	CONSTANT String					ACTIVEBORDER					= 'activeborder'

	CONSTANT	Long						ALLOW								= 1
	CONSTANT Long						PREVENT							= -1

	CONSTANT	Long						SUCCESS							= 1
	CONSTANT	Long						NO_ACTION						= 0
	CONSTANT Long						FAILURE							= -1

	CONSTANT Long						SMALL								= 16
	CONSTANT Long						MEDIUM							= 24
	CONSTANT Long						LARGE								= 32
	CONSTANT Long						XLARGE							= 48

	CONSTANT Long						NORMAL							= 1
	CONSTANT Long						FAST								= 5
	CONSTANT Long						FASTEST							= 10
	
Protected:

	Boolean								#DisplayBorder					= TRUE
	Boolean								#RaisedBorder					= FALSE
	Boolean								#SolidBackGround				= FALSE

	String								#FontFace						= 'Tahoma'
	Long									#FontSize						= 8

	Long									#BitMapSize						= 16
	
	Long									#ScrollSpeed					= 1
	
	Long									#ToolTipDelayInitial			= 1000
	Long									#ToolTipDelayVisible			= 32000
	Boolean								#ToolTipIsBubble				= TRUE

Private:

	CONSTANT Long						NOTAB								= 0
	CONSTANT Long						TAB								= 1
	CONSTANT Long						BACKTAB							= 2
	
	n_cst_dwGUI							invo_dwGUI
	n_cst_color							invo_color
	
	Long									il_groupHeight					= 104

	String								is_lbuttonDown

	Boolean								ib_update						= TRUE
	Boolean								ib_trackMouseEvent			= FALSE
		
	Boolean								ib_scrollTop					= FALSE
	Boolean								ib_scrollBottom				= FALSE
	
	Long									il_xIndent						= -1
	Long									il_yIndent						= -1
	
	Boolean								ib_displayToolTips			= TRUE
	Integer								ii_toolTipIsBubble			= 1
	
	String								is_chevronUp					= ''
	String								is_chevronDown					= ''
	
	Long									il_lastLink						= 0
	Long									il_groupFocus					= -1
	
	Double								idbl_fontHeight			 	= -1
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
public function long of_clickitem (long vl_group, long vl_item)
public function long of_locateitem (string vs_text_group, string vs_text_item)
public function integer of_setvisible (string vs_text, boolean vb_switch)
public function integer of_setenabled (string vs_text, boolean vb_switch)
public function integer of_setvisible (string vs_text_group, string vs_text_item, boolean vb_switch)
public function boolean of_iscollapsed (string vs_text_group)
public function integer of_setcollapsed (string vs_text_group, boolean vb_switch)
public function long of_clickitem (string vs_text_group, string vs_text_item)
public function boolean of_isenabled (string vs_text_group, string vs_text_item)
public function boolean of_isenabled (string vs_text)
public function boolean of_isvisible (string vs_text)
public function boolean of_isvisible (string vs_text_group, string vs_text_item)
private subroutine of_underline_link (string vs_objectname)
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
public function long of_clickgroup (long vl_group)
public function long of_clicklabel (long vl_group, long vl_item)
public function long of_clicklabel (string vs_text_group, string vs_text_item)
public function long of_clicklink (string vs_text_group, string vs_text_item)
public function long of_clicklink (long vl_group, long vl_item)
public function integer of_setimage (long vl_item, string vs_image)
private function long of_size_imageheight (string vs_image)
private function long of_size_imagewidth (string vs_image)
private subroutine of_getfocus (long vl_group)
private subroutine of_losefocus (ref long vl_group)
private subroutine of_correct_scrollspeed ()
public subroutine of_setbackcolor (long vl_red, integer vi_green, integer vi_blue)
private subroutine of_createitem_image (long vl_item)
public function long of_clickitem (long vl_item)
public function long of_clickitem (string vs_text)
public function long of_clicklabel (string vs_text_item)
public function long of_clicklink (string vs_text_item)
public function long of_clicklink (long vl_item)
public function long of_clicklabel (long vl_item)
private subroutine of_broadcast_showtooltips (boolean vb_showtext)
public function long of_addlabel (string vs_group, string vs_text, string vs_image, string vs_tooltip)
public function long of_addseparator (string vs_group)
public function long of_addlink (string vs_group, string vs_text, string vs_image, string vs_tooltip)
public function long of_clickgroup (string vs_group)
public function long of_addlabel (long vl_group, string vs_text)
public function long of_addlabel (long vl_group, string vs_text, string vs_image)
public function long of_addlabel (string vs_group, string vs_text)
public function long of_addlabel (string vs_group, string vs_text, string vs_image)
public function long of_addlink (string vs_group, string vs_text)
public function long of_addlink (string vs_group, string vs_text, string vs_image)
public function long of_addgroup (string vs_text, string vs_image)
public function long of_addgroup (string vs_text)
public function long of_addlink (long vl_group, string vs_text)
public function long of_addlink (long vl_group, string vs_text, string vs_image)
private subroutine of_setfont (string vs_fontface, long vl_fontsize)
public function integer of_settextcolor (long vl_item, long vl_color)
public function integer of_settextcolor (string vs_text, long vl_color)
public function integer of_settextcolor (string vs_text_group, string vs_text_item, long vl_color)
public subroutine of_size (integer vi_size)
public subroutine of_size ()
private function long of_size_text (string vs_text, string vs_fontface)
private function string of_ellipsistext (string vs_text, long vl_width, string vs_fontface)
public function integer of_keydown (keycode vkc_key, unsignedinteger vui_keyflags)
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

event ue_context_scrollspeed(long vl_scrollspeed);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

#ScrollSpeed							= vl_scrollSpeed

RETURN
end event

event ue_context_size(string vs_size);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_disableUpdate()

CHOOSE CASE Lower(vs_size)
	CASE 'small'
		of_size(SMALL)
	CASE 'medium'
		of_size(MEDIUM)
	CASE 'large'
		of_size(LARGE)	
	CASE 'xlarge'
		of_size(XLARGE)
END CHOOSE

of_enableUpdate()
end event

public function integer resize (integer w, integer h);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

this.setRedraw(FALSE)

Long										li_RC
li_RC										= Super::Resize(W, H)

r_border.Resize(W, H)
dw_palette.Resize(r_border.Width - PixelsToUnits(2, xPixelsToUnits!), r_border.Height - PixelsToUnits(2, yPixelsToUnits!))

this.setRedraw(TRUE)

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
ds_XPListBar.of_setItem_color(ll_item, of_getColor(MENUTEXT))
ds_XPListBar.of_setItem_toolTip(ll_item, vs_toolTip)

ds_XPListBar.of_setItem_image(ll_item, invo_dwGUI.of_getImageName(vs_image))
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
ds_XPListBar.of_setItem_color(ll_item, of_getColor(MENUTEXT))
ds_XPListBar.of_setItem_toolTip(ll_item, vs_toolTip)

ds_XPListBar.of_setItem_image(ll_item, invo_dwGUI.of_getImageName(vs_image))
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
ds_XPListBar.of_setItem_color(ll_item, of_getColor(MENUTEXT))
ds_XPListBar.of_setItem_toolTip(ll_item, vs_toolTip)

ds_XPListBar.of_setItem_image(ll_item, invo_dwGUI.of_getImageName(vs_image))
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

of_setFont(#FontFace, #FontSize)

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

Long										ll_x
Long										li_displayToolTips

IF of_displayToolTips() THEN
	li_displayToolTips				= 1
ELSE
	li_displayToolTips				= 0
END IF

String									ls_toolTip
ls_toolTip								= ds_XPListBar.of_getItem_toolTip(vl_item)

IF ds_XPListBar.of_getItem_text(vl_item) = ls_toolTip THEN
	ls_toolTip							= ''
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
											+ 'visible="0" '																					&
											+ 'brush.hatch="8" '																				&
											+ 'brush.color="0" '																				&
											+ 'pen.style="0" pen.width="5" ' +															&	
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '						&
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
											+ 'visible="0" '																					&
											+ 'brush.hatch="8" '																				&
											+ 'brush.color="0" '																				&
											+ 'pen.style="0" pen.width="5" ' +															&	
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '						&
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
											+ 'y="' + String(il_groupHeight - 16) + '" '												&
											+ 'height="16" '																					&
											+ 'width="18" '																					&
											+ 'name=r_' + ds_XPListBar.GROUP + '_' + String(vl_item) + '_left_corner '		&
											+ 'visible="0" '																					&
											+ 'brush.hatch="6" '																				&
											+ 'brush.color="' + String(of_getColor(SELECTED1)) + '" '							&
											+ 'pen.style="0" pen.width="5" '																&
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '						&
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
											+ 'x="' + String(il_xIndent + PixelsToUnits(1, xPixelsToUnits!)) + '" '			&
											+ 'y="' + String(il_groupHeight - 16) + '" '												&
											+ 'height="16" '																					&
											+ 'width="18" '																					&
											+ 'name=r_' + ds_XPListBar.GROUP + '_' + String(vl_item) + '_left_shadow '		&
											+ 'visible="0" '																					&
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
											+ 'y="' + String(il_groupHeight - 16) + '" '												&
											+ 'height="16" '																					&
											+ 'width="18" '																					&
											+ 'name=r_' + ds_XPListBar.GROUP + '_' + String(vl_item) + '_right_corner '	&
											+ 'visible="0" '																					&
											+ 'brush.hatch="6" '																				&
											+ 'brush.color="' + String(of_getColor(SELECTED1)) + '" '							&
											+ 'pen.style="0" pen.width="5" '																&
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '						&
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
											+ 'y="' + String(il_groupHeight - 16) + '" '												&
											+ 'height="16" '																					&
											+ 'width="18" '																					&
											+ 'name=r_' + ds_XPListBar.GROUP + '_' + String(vl_item) + '_right_shadow '	&
											+ 'visible="0" '																					&
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

ll_x										= il_xIndent + ll_width - 87 - PixelsToUnits(4, xPixelsToUnits!)

ls_modify								= 'CREATE ellipse(band=detail '																&
											+ 'x="' + String(ll_x) + '" '																	&
											+ 'y="12" '																							&
											+ 'height="76" '																					&
											+ 'width="87" '																					&
											+ 'name=e_' + ds_XPListBar.GROUP + '_' + String(vl_item) + ' '						&
											+ 'visible="0" '																					&
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
											+ 'text="" '																						&
											+ 'border="0" '																					&
											+ 'x="0" '																							&
											+ 'y="0" '																							&
											+ 'width="0" '																						&
											+ 'height="0" '																					&
											+ 'color="' + String(ds_XPListBar.of_getItem_color(vl_item)) + '" '				&
											+ 'html.valueishtml="0" '																		&
											+ 'name=t_' + ds_XPListBar.of_getItem_objectName(vl_item) + ' '					&
											+ 'visible="0" '																					&
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
											+ 'tooltip.tip="' + ls_toolTip + '" '
END IF

//IF ds_XPListBar.of_getItem_enabled(vl_item) THEN
//	ls_modify							= ls_modify + 'color="' + String(ds_XPListBar.of_getItem_color(vl_item)) + '" '
//ELSE
//	ls_modify							= ls_modify + 'color="' + String(of_getColor(DISABLEDTEXT)) + '" '
//END IF

ls_modify								= ls_modify + ') '

ls_modify								= ls_modify																							&
											+ 'CREATE bitmap(band=detail '																&
											+ 'filename="' + is_chevronUp + '" '														&
											+ 'x="' + String(il_xIndent + ll_width - 84) + '" '									&
											+ 'y="20" '																							&
											+ 'width="' + String(PixelsToUnits(9, xPixelsToUnits!)) + '" '						&
											+ 'height="'+ String(PixelsToUnits(16, yPixelsToUnits!)) + '" '					&
											+ 'border="0" '																					&
											+ 'name=p_' + ds_XPListBar.of_getItem_objectName(vl_item) + '_chevron '			&
											+ 'visible="0" '

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

of_createItem_image(vl_item)

dw_palette.SetPosition('t_' + ds_XPListBar.of_getItem_objectName(vl_item), "detail", TRUE)
dw_palette.SetPosition('p_' + ds_XPListBar.of_getItem_objectName(vl_item), "detail", TRUE)

dw_palette.SetPosition('p_' + ds_XPListBar.of_getItem_objectName(vl_item) + "_chevron", "detail", TRUE)

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

String									ls_toolTip
ls_toolTip								= ds_XPListBar.of_getItem_toolTip(vl_item)

IF ds_XPListBar.of_getItem_text(vl_item) = ls_toolTip THEN
	ls_toolTip							= ''
END IF

String									ls_modify

ls_modify								= 'CREATE text(band=detail' + ' '															&
											+ 'alignment="0" '																				&
											+ 'text="' + ds_XPListBar.of_getItem_text(vl_item) + '" '							&
											+ 'border="0" '																					&
											+ 'x="' + String(il_xIndent + PixelsToUnits(3, xPixelsToUnits!)) + '" '			&
											+ 'y="0" '																							&
											+ 'width="0" '																						&
											+ 'height="0" '																					&
											+ 'color="' + String(ds_XPListBar.of_getItem_color(vl_item)) + '" '				&
											+ 'html.valueishtml="0" '																		&
											+ 'name=t_' + ds_XPListBar.of_getItem_objectName(vl_item) + ' '					&
											+ 'visible="0" '																					&
											+ 'font.face="' + ds_XPListBar.of_getItem_fontFace(vl_item) + '" '				&
											+ 'font.height="' + String(#FontSize * -1) + '" '										&
											+ 'font.weight="400" '																			&
											+ 'font.family="2" font.pitch="2" font.charset="0" '									&
											+ 'background.mode="1" '

//IF invo_dwGUI.of_PBVersion >= 12.5 THEN
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
											+ 'tooltip.tip="' + ls_toolTip + '" '
END IF

//IF ds_XPListBar.of_getItem_enabled(vl_item) THEN
//	ls_modify							= ls_modify + 'color="' + String(ds_XPListBar.of_getItem_color(vl_item)) + '" '
//ELSE
//	ls_modify							= ls_modify + 'color="' + String(of_getColor(DISABLEDTEXT)) + '" '
//END IF
		
ls_modify								= ls_modify + ') '

ls_modify								= dw_palette.Modify(ls_modify)

IF ls_modify <> '' THEN
	MessageBox('Syntax Error Creating Label', ls_modify)
END IF

of_createItem_image(vl_item)

dw_palette.SetPosition('t_' + ds_XPListBar.of_getItem_objectName(vl_item), "detail", TRUE)
dw_palette.SetPosition('p_' + ds_XPListBar.of_getItem_objectName(vl_item), "detail", TRUE)

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

String									ls_toolTip
ls_toolTip								= ds_XPListBar.of_getItem_toolTip(vl_item)

IF ds_XPListBar.of_getItem_text(vl_item) = ls_toolTip THEN
	ls_toolTip							= ''
END IF

String									ls_modify

ls_modify								= 'CREATE text(band=detail' + ' '															&
											+ 'alignment="0" '																				&
											+ 'text="' + ds_XPListBar.of_getItem_text(vl_item) + '" '							&
											+ 'border="0" '																					&
											+ 'x="' + String(il_xIndent + PixelsToUnits(3, xPixelsToUnits!)) + '" '			&
											+ 'y="0" '																							&
											+ 'width="0" '																						&
											+ 'height="0" '																					&
											+ 'color="' + String(ds_XPListBar.of_getItem_color(vl_item)) + '" '				&
											+ 'html.valueishtml="0" '																		&
											+ 'name=t_' + ds_XPListBar.of_getItem_objectName(vl_item) + ' '					&
											+ 'pointer="HyperLink!"'																		&
											+ 'visible="0" '																					&
											+ 'font.face="' + ds_XPListBar.of_getItem_fontFace(vl_item) + '" '				&
											+ 'font.height="' + String(#FontSize * -1) + '" '										&
											+ 'font.weight="400" '																			&
											+ 'font.family="2" font.pitch="2" font.charset="0" '									&
											+ 'background.mode="1" '

//IF invo_dwGUI.of_PBVersion >= 12.5 THEN
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
											+ 'tooltip.tip="' + ls_toolTip + '" '
END IF

//IF ds_XPListBar.of_getItem_enabled(vl_item) THEN
//	ls_modify							= ls_modify + 'color="' + String(ds_XPListBar.of_getItem_color(vl_item)) + '" '
//ELSE
//	ls_modify							= ls_modify + 'color="' + String(of_getColor(DISABLEDTEXT)) + '" '
//END IF
		
ls_modify								= ls_modify + ') '

ls_modify								= dw_palette.Modify(ls_modify)

IF ls_modify <> '' THEN
	MessageBox('Syntax Error Creating Link', ls_modify)
END IF

of_createItem_image(vl_item)

dw_palette.SetPosition('t_' + ds_XPListBar.of_getItem_objectName(vl_item), "detail", TRUE)
dw_palette.SetPosition('p_' + ds_XPListBar.of_getItem_objectName(vl_item), "detail", TRUE)

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
											+ 'x1="' + String(il_xIndent + PixelsToUnits(2, xPixelsToUnits!)) + '" '			&
											+ 'y1="0" '																								&
											+ 'x2="0" '																								&
											+ 'y2="0" '																								&
											+ 'name=l_' + ds_XPListBar.SEPARATOR + '_' + String(vl_item) + '_a '					&
											+ 'visible="0" '																						&
											+ 'pen.style="0" '																					&
											+ 'pen.width="' + String(PixelsToUnits(1, yPixelsToUnits!)) + '" '					&
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '							&
											+ 'background.mode="2") '																			&
											+ 'CREATE line(band=detail' + ' '																&
											+ 'x1="' + String(il_xIndent + PixelsToUnits(2, xPixelsToUnits!)) + '" '			&
											+ 'y1="0" '																								&
											+ 'x2="0" '																								&
											+ 'y2="0" '																								&
											+ 'name=l_' + ds_XPListBar.SEPARATOR + '_' + String(vl_item) + '_b '					&
											+ 'visible="0" '																						&
											+ 'pen.style="0" '																					&
											+ 'pen.width="' + String(PixelsToUnits(1, yPixelsToUnits!)) + '" '					&
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

//	If this is not a group, then it can't be collapsed
IF ds_XPListBar.of_getItem_objectType(vl_item) <> ds_XPListBar.GROUP THEN Return(FAILURE)

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
	CASE ACTIVEBORDER
		ll_color							= invo_color.of_activeBorder()
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

of_setFont(#FontFace, #FontSize)

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

IF ds_XPListBar.of_getItem_objectType(vl_group) <> ds_XPListBar.GROUP THEN Return(PREVENT)

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

IF of_isVisible(vs_text_group, '') AND of_isEnabled(vs_text_group, '') THEN
	IF isNull(vs_text_item) OR Trim(vs_text_item) = '' THEN
	ELSE
		IF of_isVisible(vs_text_group, vs_text_item) AND of_isEnabled(vs_text_group, vs_text_item) THEN
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

//	Reset ToolTip based on new item text
of_setTipText(vl_item, ds_XPListBar.of_getItem_toolTip(vl_item))

of_update(TRUE)

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

ds_XPListBar.of_setItem_toolTip(vl_item, Trim(vs_tooltip))

IF ds_XPListBar.of_getItem_text(vl_item) = ds_XPListBar.of_getItem_toolTip(vl_item) THEN
	vs_toolTip							= ''
END IF

String									ls_objectName
ls_objectName							= ds_XPListBar.of_getItem_objectName(vl_item)
			
String									ls_describe
ls_describe								= Trim(dw_palette.Describe('p_' + ls_objectName + '.X'))
	
IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
	dw_palette.Modify('p_' + ls_objectName + '.ToolTip.Tip="' + vs_toolTip + '"')
END IF

ls_describe								= Trim(dw_palette.Describe('t_' + ls_objectName + '.X'))
			
IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
	dw_palette.Modify('t_' + ls_objectName + '.ToolTip.Tip="' + vs_toolTip + '"')
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

IF NOT isValid(dw_palette) THEN Return(NO_ACTION)

IF vb_resetScrollPosition THEN
	Long									ll_verticalPosition
	ll_verticalPosition				= Long(dw_palette.Describe('dataWindow.VerticalScrollPosition'))
END IF

Long										ll_x
Long										li_displayToolTips

IF of_displayToolTips() THEN
	li_displayToolTips				= 1
ELSE
	li_displayToolTips				= 0
END IF

dw_palette.SetRedraw(FALSE)

String									ls_text

Boolean									lb_groupEnabled
Boolean									lb_groupIsEmpty	= TRUE

Long										ll_textWidth

Long										ll_startX
ll_startX								= il_xIndent + PixelsToUnits(3, xPixelsToUnits!)

String									ls_modify			= ''
Long										ll_newWidth,		ll_newHeight

ll_newWidth								= dw_palette.Width
ll_newHeight							= dw_palette.Height

ls_modify								= 't_scroll_top.width="' + String(ll_newWidth - (il_xIndent * 2)) + '" '			&
											+ 't_scroll_bottom.width="' + String(ll_newWidth - (il_xIndent * 2)) + '" '		&

Long										ll_width,	ll_lines
ll_width									= ll_newWidth - (il_xIndent * 2)

Long										ll_pos					= 0,	ll_posLast
Long										ll_containerHeight	= 0,	ll_containerHeightLast
Long										ll_containerItem		= 0
Long										ll_separator			= 0
Long										ll_group

Long										ll_imageWidth,			ll_imageHeight
Long										ll_textAdjust,			ll_textHeight
Long										ll_groupHeight

String									ls_item,	ls_group,	ls_image

Long										ll_item,	ll_items
ll_items									= ds_XPListBar.RowCount()

FOR ll_group = 1 TO ll_items
	
	IF ds_XPListBar.of_getItem_objectType(ll_group) <> ds_XPListBar.GROUP THEN CONTINUE

	ls_group								= ds_XPListBar.of_getItem_objectName(ll_group)
	
	IF NOT of_isVisible(ll_group) THEN
		
		//	Group is not visible
		ls_modify						= ls_modify																								&
											+ 'r_' + ls_group + '_roundrectangle.Visible="0" '											&
											+ 'r_' + ls_group + '_container.Visible="0" '												&
											+ 'r_' + ls_group + '_right_corner.Visible="0" '											&
											+ 'r_' + ls_group + '_right_shadow.Visible="0" '											&
											+ 'r_' + ls_group + '_left_corner.Visible="0" '												&
											+ 'r_' + ls_group + '_left_shadow.Visible="0" '												&
											+ 'e_' + ls_group + '.Visible="0" '																&
											+ 't_' + ls_group + '.Visible="0" '																&
											+ 'p_' + ls_group + '_chevron.Visible="0" '													&
											+ 'p_' + ls_group + '.Visible="0" '
											
		//	Items under the group are not visible
		FOR ll_item = 1 TO ll_items
				
			IF ds_XPListBar.of_getItem_parent(ll_item) <> ll_group THEN CONTINUE

			ls_item						= ds_XPListBar.of_getItem_objectName(ll_item)
			
			//	If the group is not visible, then all items under it are not visible
			CHOOSE CASE ds_XPListBar.of_getItem_objectType(ll_item)
		
				CASE ds_XPListBar.LABEL
					ls_modify			= ls_modify + 't_' + ls_item + '.Visible="0" ' + 'p_' + ls_item + '.Visible="0" '
				CASE ds_XPListBar.LINK
					ls_modify			= ls_modify + 't_' + ls_item + '.Visible="0" ' + 'p_' + ls_item + '.Visible="0" '
				CASE ds_XPListBar.SEPARATOR
					ls_modify			= ls_modify																								&
											+ 'l_separator_' + String(ll_item) + '_a.Visible="0" '									&
											+ 'l_separator_' + String(ll_item) + '_b.Visible="0" '
			END CHOOSE
			
		NEXT
		
		CONTINUE

	END IF

	ls_image								= ds_XPListBar.of_getItem_image(ll_group)
	
	//	Group is visible
	ls_modify							= ls_modify																								&
											+ 'r_' + ls_group + '_roundrectangle.Visible="1" '											&
											+ 'r_' + ls_group + '_container.Visible="1" '												&
											+ 'r_' + ls_group + '_right_corner.Visible="1" '											&
											+ 'r_' + ls_group + '_right_shadow.Visible="1" '											&
											+ 'r_' + ls_group + '_left_corner.Visible="1" '												&
											+ 'r_' + ls_group + '_left_shadow.Visible="1" '												&
											+ 'e_' + ls_group + '.Visible="1" '																&
											+ 't_' + ls_group + '.Visible="1" '																&
											+ 'p_' + ls_group + '_chevron.Visible="1" '													&
											+ 't_' + ls_group + '.font.height="' + String(#FontSize * -1) + '" '										&

	IF isNull(ls_image) OR ls_image = '' THEN
		
		ll_imageWidth					= 0
		ll_imageHeight					= 0
		
		ls_modify						= ls_modify																								&
											+ 'p_' + ls_group + '.Visible="0" '																&
											+ 't_' + ls_group + '.X="' + String(ll_startX) + '" '
	ELSE
		
		ll_imageWidth					= of_size_imageWidth(ls_image)
		ll_imageHeight					= of_size_imageHeight(ls_image)

		ls_modify						= ls_modify																								&
											+ 'p_' + ls_group + '.Visible="1" '																&
											+ 'p_' + ls_group + '.Width="' + String(ll_imageWidth) + '" '							&
											+ 'p_' + ls_group + '.Height="' + String(ll_imageHeight) + '" '						&
											+ 'p_' + ls_group + '.X="' + String(ll_startX) + '" '										&
											+ 't_' + ls_group + '.X="' + String(ll_startX + ll_imageWidth + PixelsToUnits(2, xPixelsToUnits!)) + '" '
											
		ll_imageWidth					= ll_imageWidth + PixelsToUnits(1, xPixelsToUnits!)
		
	END IF
	
	//	Update the group's position
	ll_x									= (il_xIndent + ll_width - 87 - PixelsToUnits(4, xPixelsToUnits!))
	
	ls_modify							= ls_modify																								&
											+ 'r_' + ls_group + '_roundrectangle.'															&
											+ 'width="' + String(ll_newWidth - (il_xIndent * 2)) + '" '								&
											+ 'r_' + ls_group + '_container.'																&
											+ 'width="' + String(ll_newWidth - (il_xIndent * 2)) + '" '								&
											+ 'r_' + ls_group + '_right_corner.'															&
											+ 'x="' + String(il_xIndent + ll_width - 18) + '" '										&
											+ 'r_' + ls_group + '_right_shadow.'															&
											+ 'x="' + String(il_xIndent + ll_width - 18) + '" '										&
											+ 'e_' + ls_group + '.'																				&
											+ 'x="' + String(ll_x) + '" '																		&
											+ 'p_' + ls_group + '_chevron.'																	&
											+ 'x="' + String(il_xIndent + ll_width - 84) + '" '
											
	ll_textWidth						= ll_x - (ll_startX + ll_imageWidth + PixelsToUnits(4, xPixelsToUnits!))
//	ll_textWidth						= Min(ll_textWidth, of_size_text(ds_XPListBar.of_getItem_text(ll_group)))
	
	ls_text								=																											&
		of_ellipsisText(ds_XPListBar.of_getItem_text(ll_group),																		&
							 ll_x - (ll_startX + ll_imageWidth - PixelsToUnits(4, xPixelsToUnits!)),							&
							 ds_XPListBar.of_getItem_fontFace(ll_group)) 
		
	ls_modify							= ls_modify																								&
											+ 't_' + ls_group + '.Text="' + ls_text + '" '
	
	ll_groupHeight						= Max(Max(ll_imageHeight, Int(idbl_fontHeight)) + 40, il_groupHeight)
	
	ls_modify							= ls_modify																								&
											+ 'r_' + ls_group + '_roundrectangle.'															&
											+ 'y="' + String(ll_pos) + '" '																	&
											+ 'r_' + ls_group + '_roundrectangle.'															&
											+ 'height="' + String(ll_groupHeight) + '" '													&
											+ 'r_' + ls_group + '_container.'																&
											+ 'y="' + String(ll_pos + (ll_groupHeight - 4)) + '" '									&
											+ 'r_' + ls_group + '_right_corner.'															&
											+ 'y="' + String(ll_pos + (ll_groupHeight - 16)) + '" '									&
											+ 'r_' + ls_group + '_right_shadow.'															&
											+ 'y="' + String(ll_pos + (ll_groupHeight - 16)) + '" '									&
											+ 'r_' + ls_group + '_left_corner.'																&
											+ 'y="' + String(ll_pos + (ll_groupHeight - 16)) + '" '									&
											+ 'r_' + ls_group + '_left_shadow.'																&
											+ 'y="' + String(ll_pos + (ll_groupHeight - 16)) + '" '									&
											+ 'e_' + ls_group + '.'																				&
											+ 'y="' + String(ll_pos + 12) + '" '															&
											+ 't_' + ls_group + '.'																				&
											+ 'y="' + String(ll_pos + Int(((ll_groupHeight - idbl_fontHeight) / 2))) + '" '	&
											+ 't_' + ls_group + '.'																				&
											+ 'height="' + String(Int(idbl_fontHeight)) + '" '											&
											+ 't_' + ls_group + '.'																				&
											+ 'font.face="' + ds_XPListBar.of_getItem_fontFace(ll_group) + '" '					&
											+ 't_' + ls_group + '.'																				&
											+ 'width="' + String(ll_textWidth) + '" '														&
											+ 'p_' + ls_group + '_chevron.'																	&
											+ 'y="' + String(ll_pos + 20) + '" '

	ls_modify							= ls_modify																								&
											+ 'p_' + ls_group + '.'																				&
											+ 'y="' + String(ll_pos + Int(((ll_groupHeight - ll_imageHeight) / 2))) + '" '

	ll_pos							 	= ll_pos + ll_groupHeight
	
	lb_groupEnabled					= of_isEnabled(ll_group)

	IF lb_groupEnabled THEN

		IF ds_XPListBar.of_PBVersion() >= 11.5 THEN
			ls_modify					= ls_modify + 'p_' + ls_group + '.Transparency="0" '
		ELSE
			//	Need to come up with a way to show enabled/disabled for version prior to 11.5
		END IF
	
		IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
			ls_modify					= ls_modify + 't_' + ls_group + '.Enabled="1" '
			ls_modify					= ls_modify + 'p_' + ls_group + '.Enabled="1" '
		END IF

		ls_modify						= ls_modify + 't_' + ls_group + '.Color="' + String(ds_XPListBar.of_getItem_color(ll_group)) + '" '
		
	ELSE
		
		IF ds_XPListBar.of_PBVersion() >= 11.5 THEN
			ls_modify					= ls_modify + 'p_' + ls_group + '.Transparency="50" '
		ELSE
			//	Need to come up with a way to show enabled/disabled for version prior to 11.5
		END IF

		IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
			ls_modify					= ls_modify + 't_' + ls_group + '.Enabled="0" '
			ls_modify					= ls_modify + 'p_' + ls_group + '.Enabled="0" '
		END IF
		
		ls_modify						= ls_modify + 't_' + ls_group + '.Color="' + String(of_getColor(DISABLEDTEXT)) + '" '
		
	END IF
	
	ll_containerHeight				= 0
	ll_containerItem					= 0

	lb_groupIsEmpty					= TRUE
	
	FOR ll_item = 1 TO ll_items
				
		IF ds_XPListBar.of_getItem_parent(ll_item) <> ll_group THEN CONTINUE
			
		ls_item							= ds_XPListBar.of_getItem_objectName(ll_item)
		ls_image							= ds_XPListBar.of_getItem_image(ll_item)
		
		CHOOSE CASE ds_XPListBar.of_getItem_objectType(ll_item)
		
			CASE ds_XPListBar.LABEL, ds_XPListBar.LINK
	
				IF NOT of_isVisible(ll_item) OR of_isCollapsed(ll_group) THEN
					ls_modify			= ls_modify + 't_' + ls_item + '.Visible="0" '
					ls_modify			= ls_modify + 'p_' + ls_item + '.Visible="0" '
					CONTINUE
				END IF

				ls_image					= ds_XPListBar.of_getItem_image(ll_item)

				IF of_isEnabled(ll_item) AND lb_groupEnabled THEN
					
					IF ds_XPListBar.of_PBVersion() >= 11.5 THEN
						ls_modify		= ls_modify + 'p_' + ls_item + '.Transparency="0" '
					ELSE
						//	Need to come up with a way to show enabled/disabled for version prior to 11.5
					END IF

					IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
						ls_modify		= ls_modify + 't_' + ls_item + '.Enabled="1" '
						ls_modify		= ls_modify + 'p_' + ls_item + '.Enabled="1" '
					END IF
					
					ls_modify			= ls_modify + 't_' + ls_item + '.Color="' + String(ds_XPListBar.of_getItem_color(ll_item)) + '" '
					
				ELSE
					
					IF ds_XPListBar.of_PBVersion() >= 11.5 THEN
						ls_modify		= ls_modify + 'p_' + ls_item + '.Transparency="50" '
					ELSE
						//	Need to come up with a way to show enabled/disabled for version prior to 11.5
					END IF

					IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
						ls_modify		= ls_modify + 't_' + ls_item + '.Enabled="0" '
						ls_modify		= ls_modify + 'p_' + ls_item + '.Enabled="0" '
					END IF
					
					ls_modify			= ls_modify + 't_' + ls_item + '.Color="' + String(of_getColor(DISABLEDTEXT)) + '" '
					
				END IF
					
				lb_groupIsEmpty		= FALSE
				
				ls_modify				= ls_modify																								&
											+ 't_' + ls_item + '.Visible="1" '																&
											+ 't_' + ls_item + '.font.height="' + String(#FontSize * -1) + '" '										&


				IF isNull(ls_image) OR ls_image = '' THEN
					
					ll_imageWidth		= 0
					ll_imageHeight		= 0

					ls_modify			= ls_modify + 'p_' + ls_item + '.Visible="0" '												&
											+ 't_' + ls_item + '.X="' + String(ll_startX) + '" '
					
				ELSE
					
					ll_imageWidth		= of_size_imageWidth(ls_image)
					ll_imageHeight		= of_size_imageHeight(ls_image)

					ls_modify			= ls_modify																								&
											+ 'p_' + ls_item + '.Visible="1" '																&
											+ 'p_' + ls_item + '.Width="' + String(ll_imageWidth) + '" '							&
											+ 'p_' + ls_item + '.Height="' + String(ll_imageHeight) + '" '							&
											+ 'p_' + ls_item + '.X="' + String(ll_startX) + '" '										&
											+ 't_' + ls_item + '.X="' + String(ll_startX + ll_imageWidth + PixelsToUnits(2, xPixelsToUnits!)) + '" '
											
					ll_imageWidth		= ll_imageWidth + PixelsToUnits(2, xPixelsToUnits!)
					
				END IF

				ll_separator			= 0
				ll_containerItem		= ll_containerItem + 1
				
				mle_XPListBar.Resize(ll_width - ll_imageWidth - PixelsToUnits(6, xPixelsToUnits!), 10000)
				mle_XPListBar.FaceName																											&
											= ds_XPListBar.of_getItem_fontFace(ll_item)
				mle_XPListBar.Text	= ds_XPListBar.of_getItem_text(ll_item)
	
				ll_lines					= mle_XPListBar.LineCount()
				
				ls_modify				= ls_modify																								&
											+ 't_' + ls_item + '.'																				&
											+ 'font.face="' + ds_XPListBar.of_getItem_fontFace(ll_item) + '" '					&
											+ 't_' + ls_item + '.'																				&
											+ 'width="' + String(ll_width - ll_imageWidth - PixelsToUnits(6, xPixelsToUnits!)) + '" '

				ll_textHeight			= ll_lines * Int(idbl_fontHeight)
				
				IF ll_imageHeight > ll_textHeight THEN
					ll_textAdjust		= PixelsToUnits(Int((unitsToPixels(ll_imageHeight, yUnitsToPixels!) - unitsToPixels(ll_textHeight, yUnitsToPixels!)) / 2), yPixelsToUnits!)
				ELSE
					ll_textAdjust		= 0		
				END IF
				
				ls_modify				= ls_modify																								&
											+ 't_' + ls_item + '.'																				&
											+ 'height="' + String(ll_textHeight) + '" '
											
				ll_pos					= ll_pos + PixelsToUnits(2, yPixelsToUnits!)
				ll_containerHeight	= ll_containerHeight + PixelsToUnits(2, yPixelsToUnits!)
				
				ls_modify				= ls_modify																								&
											+ 't_' + ls_item + '.y="' + String(ll_pos + ll_textAdjust) + '" '

				ls_modify				= ls_modify																								&
											+ 'p_' + ls_item + '.y="' + String(ll_pos) + '" '

				ll_pos					= ll_pos + Max(ll_imageHeight, ll_textHeight)
				ll_containerHeight	= ll_containerHeight + Max(ll_imageHeight, ll_textHeight)
				
				ll_pos					= ll_pos + PixelsToUnits(1, yPixelsToUnits!)
				ll_containerHeight	= ll_containerHeight + PixelsToUnits(1, yPixelsToUnits!)
				
//			CASE ds_XPListBar.LINK
//	
//				IF NOT of_isVisible(ll_item) OR of_isCollapsed(ll_group) THEN
//					ls_modify			= ls_modify + 't_' + ls_item + '.Visible="0" '
//					ls_modify			= ls_modify + 'p_' + ls_item + '.Visible="0" '
//					CONTINUE
//				END IF
//
//				ls_image					= ds_XPListBar.of_getItem_image(ll_item)
//
//				IF of_isEnabled(ll_item) AND lb_groupEnabled THEN
//					
//					IF ds_XPListBar.of_PBVersion() >= 11.5 THEN
//						ls_modify		= ls_modify + 'p_' + ls_item + '.Transparency="0" '
//					ELSE
//						//	Need to come up with a way to show enabled/disabled for version prior to 11.5
//					END IF
//
//					IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
//						ls_modify		= ls_modify + 't_' + ls_item + '.Enabled="1" '
//						ls_modify		= ls_modify + 'p_' + ls_item + '.Enabled="1" '
//					END IF
//					
//					ls_modify			= ls_modify + 't_' + ls_item + '.Color="' + String(ds_XPListBar.of_getItem_color(ll_item)) + '" '
//					
//				ELSE
//					
//					IF ds_XPListBar.of_PBVersion() >= 11.5 THEN
//						ls_modify		= ls_modify + 'p_' + ls_item + '.Transparency="50" '
//					ELSE
//						//	Need to come up with a way to show enabled/disabled for version prior to 11.5
//					END IF
//
//					IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
//						ls_modify		= ls_modify + 't_' + ls_item + '.Enabled="0" '
//						ls_modify		= ls_modify + 'p_' + ls_item + '.Enabled="0" '
//					END IF
//					
//					ls_modify			= ls_modify + 't_' + ls_item + '.Color="' + String(of_getColor(DISABLEDTEXT)) + '" '
//					
//				END IF
//				
//				lb_groupIsEmpty		= FALSE
//
//				ls_modify				= ls_modify + 't_' + ls_item + '.Visible="1" '
//				
//				IF isNull(ls_image) OR ls_image = '' THEN
//					ls_modify			= ls_modify + 'p_' + ls_item + '.Visible="0" '
//				ELSE
//					ls_modify			= ls_modify + 'p_' + ls_item + '.Visible="1" '
//				END IF
//				
//				ll_separator			= 0
//				ll_containerItem		= ll_containerItem + 1
//		
//				
//				mle_XPListBar.Text	= ds_XPListBar.of_getItem_text(ll_item)
//	
//				ll_lines					= mle_XPListBar.LineCount()
//				
//				ls_modify				= ls_modify																								&
//											+ 't_' + ls_item + '.'																				&
//											+ 'width="' + String(ll_width - PixelsToUnits(6, xPixelsToUnits!)) + '" '			&
//											+ 't_' + ls_item + '.'																				&
//											+ 'height="' + String(ll_lines * Int(idbl_fontHeight)) + '" '
//
//				ll_pos					= ll_pos + PixelsToUnits(2, yPixelsToUnits!)
//				ll_containerHeight	= ll_containerHeight + PixelsToUnits(2, yPixelsToUnits!)
//				
//				ls_modify				= ls_modify																								&
//											+ 't_' + ls_item + '.y="' + String(ll_pos) + '" '
//
//				ll_pos					= ll_pos + (ll_lines * Int(idbl_fontHeight))
//				ll_containerHeight	= ll_containerHeight + (ll_lines * Int(idbl_fontHeight))
//
//				ll_pos					= ll_pos + PixelsToUnits(1, yPixelsToUnits!)
//				ll_containerHeight	= ll_containerHeight + PixelsToUnits(1, yPixelsToUnits!)
				
			CASE ds_XPListBar.SEPARATOR
	
				IF NOT of_isVisible(ll_item) OR of_isCollapsed(ll_group) THEN
					ls_modify			= ls_modify																								&
											+ 'l_' + ls_item + '_a.Visible="0" ' + 'l_' + ls_item + '_b.Visible="0" '
					CONTINUE
				END IF

				//	First item can not be a separator
				IF ll_containerItem = 0 THEN
					ls_modify			= ls_modify																								&
											+ 'l_' + ls_item + '_a.Visible="0" ' + 'l_' + ls_item + '_b.Visible="0" '
					CONTINUE
				END IF
				
				//	No consecutive separators
				IF ll_separator <> 0 THEN
					ls_modify			= ls_modify																								&
											+ 'l_' + ls_item + '_a.Visible="0" ' + 'l_' + ls_item + '_b.Visible="0" '
					CONTINUE
				END IF
				
				lb_groupIsEmpty		= FALSE

				ls_modify				= ls_modify																								&
											+ 'l_' + ls_item + '_a.Visible="1" ' + 'l_' + ls_item + '_b.Visible="1" '
											
				ll_separator 			= ll_item
				
				ll_x						= il_xIndent + ll_width - PixelsToUnits(2, xPixelsToUnits!)
				
				ls_modify				= ls_modify																								&
											+ 'l_' + ls_item + '_a.x2="' + String(ll_x) + '" '											&
											+ 'l_' + ls_item + '_b.x2="' + String(ll_x) + '" '
											
				ll_posLast				= ll_pos
				ll_containerHeightLast																											&
											= ll_containerHeight
											
				ll_pos					= ll_pos + PixelsToUnits(2, yPixelsToUnits!)
				ll_containerHeight	= ll_containerHeight + PixelsToUnits(2, yPixelsToUnits!)
				
				ls_modify				= ls_modify																								&
											+ 'l_' + ls_item + '_a.y1="' + String(ll_pos) + '" '										&
											+ 'l_' + ls_item + '_a.y2="' + String(ll_pos) + '" '										&
											+ 'l_' + ls_item + '_b.'																			&
											+ 'y1="' + String(ll_pos + PixelsToUnits(1, yPixelsToUnits!)) + '" '					&
											+ 'l_' + ls_item + '_b.'																			&
											+ 'y2="' + String(ll_pos + PixelsToUnits(1, yPixelsToUnits!)) + '" '

				ll_pos					= ll_pos + PixelsToUnits(2, yPixelsToUnits!)
				ll_containerHeight	= ll_containerHeight + PixelsToUnits(2, yPixelsToUnits!)

				ll_pos					= ll_pos + PixelsToUnits(1, yPixelsToUnits!)
				ll_containerHeight	= ll_containerHeight + PixelsToUnits(1, yPixelsToUnits!)

		END CHOOSE
		
	NEXT

	IF ll_separator <> 0 THEN
		
		ls_modify						= ls_modify																								&
											+ 'l_separator_' + String(ll_separator) + '_a.Visible="0" '								&
											+ 'l_separator_' + String(ll_separator) + '_b.Visible="0" '

		ll_pos							= ll_posLast
		ll_containerHeight			= ll_containerHeightLast
		
	END IF
	
	IF lb_groupIsEmpty THEN
		ll_containerHeight			= 0
	ELSE
		
		ll_pos							= ll_pos + PixelsToUnits(4, yPixelsToUnits!)
		ll_containerHeight			= ll_containerHeight + PixelsToUnits(4, yPixelsToUnits!)
	
	END IF
										
	ls_modify							= ls_modify																								&
											+ 'r_' + ls_group + '_container.Height="' + String(ll_containerHeight) + '" '

	ll_pos								= ll_pos + il_yIndent
	
NEXT

ls_modify								= dw_palette.Modify(ls_modify)

dw_palette.Modify('dataWindow.Detail.Height="' + String(Max(0, ll_pos - il_yIndent)) + '"')

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

public function long of_clickgroup (long vl_group);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_group) THEN Return(PREVENT)

IF vl_group <= 0 OR vl_group > ds_XPListBar.RowCount() THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(vl_group) <> ds_XPListBar.GROUP THEN Return(PREVENT)

Return(of_clickItem(ds_XPListBar.of_getItem_text(vl_group), ''))
end function

public function long of_clicklabel (long vl_group, long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
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

IF ds_XPListBar.of_getItem_objectType(vl_group) <> ds_XPListBar.GROUP THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(vl_item) <> ds_XPListBar.LABEL THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_parent(vl_item) <> vl_group THEN Return(PREVENT)

Return(of_clickItem(ds_XPListBar.of_getItem_text(vl_group), ds_XPListBar.of_getItem_text(vl_item)))
end function

public function long of_clicklabel (string vs_text_group, string vs_text_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
ll_item									= ds_XPListBar.of_locateItem_text(vs_text_group, vs_text_item)

IF isNull(ll_item) THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(ll_item) <> ds_XPListBar.LABEL THEN Return(PREVENT)

Return(of_clickItem(vs_text_group, vs_text_item))
end function

public function long of_clicklink (string vs_text_group, string vs_text_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
ll_item									= ds_XPListBar.of_locateItem_text(vs_text_group, vs_text_item)

IF isNull(ll_item) THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(ll_item) <> ds_XPListBar.LINK THEN Return(PREVENT)

Return(of_clickItem(vs_text_group, vs_text_item))
end function

public function long of_clicklink (long vl_group, long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
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

IF ds_XPListBar.of_getItem_objectType(vl_group) <> ds_XPListBar.GROUP THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(vl_item) <> ds_XPListBar.LINK THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_parent(vl_item) <> vl_group THEN Return(PREVENT)

Return(of_clickItem(ds_XPListBar.of_getItem_text(vl_group), ds_XPListBar.of_getItem_text(vl_item)))
end function

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

vs_image									= invo_dwGUI.of_getImageName(vs_image)

ds_XPListBar.of_setItem_image(vl_item, vs_image)

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

of_update(TRUE)

Return(SUCCESS)
end function

private function long of_size_imageheight (string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_height

IF isNull(vs_image) OR Trim(vs_image) = '' THEN
	ll_height							= 0
ELSE
	ll_height							= PixelsToUnits(#BitMapSize, yPixelsToUnits!)
END IF

Return(ll_height)
end function

private function long of_size_imagewidth (string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_width

IF isNull(vs_image) OR Trim(vs_image) = '' THEN
	ll_width								= 0
ELSE
	ll_width								= PixelsToUnits(#BitMapSize, xPixelsToUnits!)
END IF

Return(ll_width)
end function

private subroutine of_getfocus (long vl_group);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_group = il_groupFocus THEN RETURN

dw_palette.SetRedraw(FALSE)

String									ls_modify			= ''

ls_modify								= ls_modify																							&
											+ 'r_' + ds_XPListBar.of_getItem_objectName(vl_group) + '_container.'			&
											+ 'background.color="' + String(of_getColor(GETFOCUS)) + '" '

ls_modify								= dw_palette.Modify(ls_modify)

il_groupFocus							= vl_group

dw_palette.SetRedraw(TRUE)

RETURN
end subroutine

private subroutine of_losefocus (ref long vl_group);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(il_groupFocus) THEN RETURN

dw_palette.SetRedraw(FALSE)

String									ls_modify			= ''

ls_modify								= ls_modify																							&
											+ 'r_' + ds_XPListBar.of_getItem_objectName(vl_group) + '_container.'			&
											+ 'background.color="' + String(of_getColor(LOSEFOCUS)) + '" '

ls_modify								= dw_palette.Modify(ls_modify)

setNull(il_groupFocus)

dw_palette.SetRedraw(TRUE)

RETURN
end subroutine

private subroutine of_correct_scrollspeed ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

CHOOSE CASE #ScrollSpeed
	CASE IS < FAST
		#ScrollSpeed					= NORMAL
	CASE IS < FASTEST
		#ScrollSpeed					= FAST
	CASE ELSE
		#ScrollSpeed					= FASTEST
END CHOOSE

RETURN
end subroutine

public subroutine of_setbackcolor (long vl_red, integer vi_green, integer vi_blue);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_red > 255 THEN
	of_setBackColor(vl_red)
ELSE
	of_setBackColor(RGB(vl_red, vi_green, vi_blue))
END IF

RETURN
end subroutine

private subroutine of_createitem_image (long vl_item);Long										li_displayToolTips

IF of_displayToolTips() THEN
	li_displayToolTips				= 1
ELSE
	li_displayToolTips				= 0
END IF

String									ls_toolTip = ''
ls_toolTip								= ds_XPListBar.of_getItem_toolTip(vl_item)

IF ds_XPListBar.of_getItem_text(vl_item) = ls_toolTip THEN
	ls_toolTip							= ''
END IF

String									ls_image
ls_image									= ds_XPListBar.of_getItem_image(vl_item)

//	BitMap logic
String									ls_modify
	
ls_modify								= 'CREATE bitmap(band=detail '															&
											+ 'filename="' + ls_image + '" '															&
											+ 'x="0" '																						&
											+ 'y="0" '																						&
											+ 'height="0" '																				&
											+ 'width="0" '																					&
											+ 'border="0" '																				&
											+ 'name=p_' + ds_XPListBar.of_getItem_objectName(vl_item) + ' '				&
											+ 'visible="0" '
											
//IF ds_XPListBar.of_PBVersion() >= 12.5 THEN
//		
//	IF ds_XPListBar.of_getItem_enabled(vl_item) THEN
//		ls_modify						= ls_modify + 'enabled="1" '
//	ELSE
//		ls_modify						= ls_modify + 'enabled="0" '
//	END IF
//
//END IF
	
IF ds_XPListBar.of_PBVersion() >= 11.5 THEN
		
	ls_modify							= ls_modify																						&
											+ 'tooltip.backcolor="' + String(of_getColor(INFOBACKGROUND)) + '" '			&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +			&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +			&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '						&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" ' +									&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '						&
											+ 'tooltip.maxwidth="0" '																	&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '					&
											+ 'tooltip.transparency="0" '																&
											+ 'tooltip.tip="' + ls_toolTip + '" '													&
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
	
RETURN
end subroutine

public function long of_clickitem (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(PREVENT)

IF vl_item <= 0 OR vl_item > ds_XPListBar.RowCount() THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(vl_item) = ds_XPListBar.GROUP THEN
	Return(of_clickItem(ds_XPListBar.of_getItem_text(vl_item), ''))
END IF

Return(of_clickItem(ds_XPListBar.of_getItem_text(ds_XPListBar.of_getItem_parent(vl_item)), ds_XPListBar.of_getItem_text(vl_item)))
end function

public function long of_clickitem (string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
ll_item									= ds_XPListBar.of_locateItem_text(vs_text)

IF isNull(ll_item) THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(ll_item) = ds_XPListBar.GROUP THEN
	Return(of_clickItem(text, ''))
END IF

Return(of_clickItem(ds_XPListBar.of_getItem_text(ds_XPListBar.of_getItem_parent(ll_item)), vs_text))
end function

public function long of_clicklabel (string vs_text_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
ll_item									= ds_XPListBar.of_locateItem_label(vs_text_item)

IF isNull(ll_item) THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(ll_item) <> ds_XPListBar.LABEL THEN Return(PREVENT)

Return(of_clickItem(ds_XPListBar.of_getItem_Text(ds_XPListBar.of_getItem_parent(ll_item)), vs_text_item))
end function

public function long of_clicklink (string vs_text_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
ll_item									= ds_XPListBar.of_locateItem_link(vs_text_item)

IF isNull(ll_item) THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(ll_item) <> ds_XPListBar.LINK THEN Return(PREVENT)

Return(of_clickItem(ds_XPListBar.of_getItem_Text(ds_XPListBar.of_getItem_parent(ll_item)), vs_text_item))
end function

public function long of_clicklink (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(PREVENT)

IF vl_item <= 0 OR vl_item > ds_XPListBar.RowCount() THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(vl_item) <> ds_XPListBar.LINK THEN Return(PREVENT)

Return(of_clickItem(ds_XPListBar.of_getItem_text(ds_XPListBar.of_getItem_parent(vl_item)), ds_XPListBar.of_getItem_text(vl_item)))
end function

public function long of_clicklabel (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(PREVENT)

IF vl_item <= 0 OR vl_item > ds_XPListBar.RowCount() THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(vl_item) <> ds_XPListBar.LABEL THEN Return(PREVENT)

Return(of_clickItem(ds_XPListBar.of_getItem_text(ds_XPListBar.of_getItem_parent(vl_item)), ds_XPListBar.of_getItem_text(vl_item)))
end function

private subroutine of_broadcast_showtooltips (boolean vb_showtext);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
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

public function long of_addlabel (string vs_group, string vs_text, string vs_image, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_group
ll_group									= ds_XPListBar.of_locateItem_group(vs_group)

IF isNull(ll_group) THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(ll_group) <> ds_XPListBar.GROUP THEN Return(PREVENT)

Return(of_addLabel(ll_group, vs_text, vs_image, vs_toolTip))
end function

public function long of_addseparator (string vs_group);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
ll_item									= ds_XPListBar.of_locateItem_group(vs_group)

IF isNull(ll_item) THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(ll_item) <> ds_XPListBar.GROUP THEN Return(PREVENT)

Return(of_addSeparator(ll_item))
end function

public function long of_addlink (string vs_group, string vs_text, string vs_image, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_group
ll_group									= ds_XPListBar.of_locateItem_group(vs_group)

IF isNull(ll_group) THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(ll_group) <> ds_XPListBar.GROUP THEN Return(PREVENT)

Return(of_addLink(ll_group, vs_text, vs_image, vs_toolTip))
end function

public function long of_clickgroup (string vs_group);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
ll_item									= ds_XPListBar.of_locateItem_group(vs_group)

IF isNull(ll_item) THEN Return(PREVENT)

IF ds_XPListBar.of_getItem_objectType(ll_item) <> ds_XPListBar.GROUP THEN Return(PREVENT)

Return(of_clickItem(vs_group, ''))
end function

public function long of_addlabel (long vl_group, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addLabel(vl_group, vs_text, '', ''))
end function

public function long of_addlabel (long vl_group, string vs_text, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addLabel(vl_group, vs_text, vs_image, ''))
end function

public function long of_addlabel (string vs_group, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addLabel(vs_group, vs_text, '', ''))
end function

public function long of_addlabel (string vs_group, string vs_text, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addLabel(vs_group, vs_text, vs_image, ''))
end function

public function long of_addlink (string vs_group, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addLink(vs_group, vs_text, '', ''))
end function

public function long of_addlink (string vs_group, string vs_text, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addLink(vs_group, vs_text, vs_image, ''))
end function

public function long of_addgroup (string vs_text, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addGroup(vs_text, vs_image, ''))
end function

public function long of_addgroup (string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addGroup(vs_text, '', ''))
end function

public function long of_addlink (long vl_group, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addLink(vl_group, vs_text, '', ''))
end function

public function long of_addlink (long vl_group, string vs_text, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addLink(vl_group, vs_text, vs_image, ''))
end function

private subroutine of_setfont (string vs_fontface, long vl_fontsize);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

#FontFace								= vs_fontFace
#FontSize								= vl_fontSize

st_XPListBar.TextSize				= #FontSize * -1
mle_XPListBar.TextSize				= #FontSize * -1

idbl_fontHeight						= of_fontHeight()

RETURN
end subroutine

public function integer of_settextcolor (long vl_item, long vl_color);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 1 OR vl_item > ds_XPListBar.RowCount() THEN Return(FAILURE)

IF isNull(vl_color) THEN vl_color = of_getColor(MENUTEXT)

ds_XPListBar.of_setItem_color(vl_item, vl_color)

String									ls_objectName
ls_objectName							= ds_XPListBar.of_getItem_objectName(vl_item)
			
String									ls_describe
ls_describe								= Trim(dw_palette.Describe('t_' + ls_objectName + '.X'))
			
IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
	dw_palette.Modify('t_' + ls_objectName + '.Color="' + String(vl_color) + '"')
END IF

Return(SUCCESS)
end function

public function integer of_settextcolor (string vs_text, long vl_color);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setTextColor(of_locateItem(vs_text), vl_color))
end function

public function integer of_settextcolor (string vs_text_group, string vs_text_item, long vl_color);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setTextColor(of_locateItem(vs_text_group, vs_text_item), vl_color))
end function

public subroutine of_size (integer vi_size);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

#BitMapSize								= vi_size

of_correct_bitMapSize()

CHOOSE CASE #BitMapSize
		
	CASE SMALL
		
		#FontSize						= 8

	CASE MEDIUM
		
		#FontSize						= 10
		
	CASE LARGE
		
		#FontSize						= 12
		
	CASE XLARGE
		
		#FontSize						= 14
		
END CHOOSE

of_setFont(#FontFace, #FontSize)

of_update()

RETURN
end subroutine

public subroutine of_size ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_size(#BitMapSize)

RETURN
end subroutine

private function long of_size_text (string vs_text, string vs_fontface);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_width	= 0

IF isNull(vs_text) OR Trim(vs_text) = '' THEN Return(ll_width)

st_XPListBar.FaceName				= vs_fontFace

ll_width									= PixelsToUnits(invo_dwGUI.of_GetFontWidth(st_XPListBar, vs_text) + 4, xPixelsToUnits!)
	
Return(ll_width)
end function

private function string of_ellipsistext (string vs_text, long vl_width, string vs_fontface);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vs_text) THEN Return('')

vs_text									= Trim(vs_text)

IF vs_text = '' THEN Return(vs_text)

Long										ll_sizeText
ll_sizeText								= of_size_text(vs_text, vs_fontFace)

IF ll_sizeText <= vl_width THEN Return(vs_text)

String									ls_ellipsis		= '...'

Long										ll_sizeEllipsis
ll_sizeEllipsis						= of_size_text(ls_ellipsis, vs_fontFace)

DO WHILE vs_text <> '' AND (ll_sizeText + ll_sizeEllipsis) > vl_width

	vs_text								= Left(vs_text, Len(vs_text) - 1)

	ll_sizeText							= of_size_text(vs_text, vs_fontFace)

LOOP

Return(vs_text + ls_ellipsis)
end function

public function integer of_keydown (keycode vkc_key, unsignedinteger vui_keyflags);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_itemMove
Long										ll_startX,		ll_startY
Long										ll_endX,			ll_endY
Long										ll_cursorX,		ll_cursorY
Long										ll_pointerX,	ll_pointerY

Long										ll_item
//ll_item									= of_locateItem()
	
IF vkc_key = keySpaceBar! THEN
//	IF NOT IsNull(ll_item) THEN of_clickButton(ll_item)
ELSEIF vkc_key = keyDownArrow! THEN
	IF NOT isNull(ll_item) THEN
		
//		ll_itemMove						= ds_toolBar.of_locateItem_next(ll_item)
//		
//		IF NOT isNull(ll_itemMove) THEN
//			
//			IF ib_trackMouseEvent THEN
//				
//				ll_pointerX				= UnitsToPixels(dw_palette.PointerX(), xUnitsToPixels!)
//				ll_pointerY				= UnitsToPixels(dw_palette.PointerY(), yUnitsToPixels!)
//					
//				invo_dwGUI.of_getCursorPos(ll_cursorX, ll_cursorY)
//				
//			END IF
//
//			of_drawButton(ll_itemMove)
//
//			IF ib_trackMouseEvent THEN
//				
//				//	Locate the 0,0 cursor position of the toolBar
//				ll_startX				= ll_cursorX - ll_pointerX
//				ll_startY				= ll_cursorY - ll_pointerY
//					
//				//	Move cursor to button location
//				ll_endX					= unitsToPixels(Long(dw_palette.Describe('r_button.X')) + Long(dw_palette.Describe('r_button.Width')),	xUnitsToPixels!)
//				ll_endY					= unitsToPixels(Long(dw_palette.Describe('r_button.Y')) + Long(dw_palette.Describe('r_button.Height')),	yUnitsToPixels!)
//					
//				ll_cursorX				= ll_startX + ll_endX - 5
//				ll_cursorY				= ll_startY + ll_endY - 5
//					
//				invo_dwGUI.of_setCursorPos(ll_cursorX, ll_cursorY)
//	
//			END IF
//			
//		END IF
		
	END IF
ELSEIF vkc_key = keyUpArrow! THEN
	IF NOT isNull(ll_item) THEN
		
//		ll_itemMove						= ds_toolBar.of_locateItem_previous(ll_item)
//		
//		IF NOT isNull(ll_itemMove) THEN
//			
//			IF ib_trackMouseEvent THEN
//				
//				ll_pointerX				= UnitsToPixels(dw_palette.PointerX(), xUnitsToPixels!)
//				ll_pointerY				= UnitsToPixels(dw_palette.PointerY(), yUnitsToPixels!)
//					
//				invo_dwGUI.of_getCursorPos(ll_cursorX, ll_cursorY)
//				
//			END IF
//
//			of_drawButton(ll_itemMove)
//
//			IF ib_trackMouseEvent THEN
//				
//				//	Locate the 0,0 cursor position of the toolBar
//				ll_startX				= ll_cursorX - ll_pointerX
//				ll_startY				= ll_cursorY - ll_pointerY
//					
//				//	Move cursor to button location
//				ll_endX					= unitsToPixels(Long(dw_palette.Describe('r_button.X')) + Long(dw_palette.Describe('r_button.Width')),	xUnitsToPixels!)
//				ll_endY					= unitsToPixels(Long(dw_palette.Describe('r_button.Y')) + Long(dw_palette.Describe('r_button.Height')),	yUnitsToPixels!)
//					
//				ll_cursorX				= ll_startX + ll_endX - 5
//				ll_cursorY				= ll_startY + ll_endY - 5
//					
//				invo_dwGUI.of_setCursorPos(ll_cursorX, ll_cursorY)
//	
//			END IF
//			
//		END IF
		
	END IF
ELSEIF vkc_key = keyTab! THEN
	IF vui_keyFlags = 1 THEN
	ELSE
	END IF
END IF

Return(SUCCESS)
end function

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

of_setFont(#FontFace, #FontSize)

setNull(il_groupFocus)

is_chevronUp							= invo_dwGUI.of_image_chevronUp()
is_chevronDown							= invo_dwGUI.of_image_chevronDown()

of_correct_size()
of_correct_scrollSpeed()

IF #toolTipIsBubble THEN
	ii_toolTipIsBubble				= 1
ELSE
	ii_toolTipIsBubble				= 0
END IF

setNull(is_lButtonDown)

r_border.Move(0, 0)
r_border.Resize(Width, Height)

dw_palette.Move(PixelsToUnits(1, xPixelsToUnits!), PixelsToUnits(1, yPixelsToUnits!))
dw_palette.Resize(Width - PixelsToUnits(2, xPixelsToUnits!), Height - PixelsToUnits(2, yPixelsToUnits!))

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
event ue_dwnkey pbm_dwnkey
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
		
		of_underLine_link(0)
		of_loseFocus(il_groupFocus)
		
		ib_scrollTop					= TRUE
		ib_scrollBottom				= FALSE

		IF NOT tmg_XPListBar.Running THEN tmg_XPListBar.Start(.0025)

	CASE 't_scroll_bottom'
		
		of_underLine_link(0)
		of_loseFocus(il_groupFocus)
		
		ib_scrollTop					= FALSE
		ib_scrollBottom				= TRUE
		
		IF NOT tmg_XPListBar.Running THEN tmg_XPListBar.Start(.0025)

	CASE ELSE
		
		ib_scrollTop					= FALSE
		ib_scrollBottom				= FALSE

		IF tmg_XPListBar.Running THEN tmg_XPListBar.Stop()
		
		long								ll_item
		ll_item							= ds_XPListBar.of_locateItem_objectName(Mid(dwo.Name, 3))
		
		CHOOSE CASE ds_XPListBar.of_getItem_objectType(ll_item)
				
			CASE ds_XPListBar.LINK
				
				of_underLine_link(ll_item)
				of_getFocus(ds_XPListBar.of_getItem_parent(ll_item))
				
			CASE ds_XPListBar.GROUP
				
				of_underLine_link(0)
				of_getFocus(ll_item)
				
			CASE ds_XPListBar.LABEL
				
				of_underLine_link(0)
				of_getFocus(ds_XPListBar.of_getItem_parent(ll_item))
			
			CASE ds_XPListBar.SEPARATOR
				
				of_underLine_link(0)
				of_getFocus(ds_XPListBar.of_getItem_parent(ll_item))

			CASE ELSE
				
				of_underLine_link(0)
				of_loseFocus(il_groupFocus)

		END CHOOSE

END CHOOSE

IF NOT ib_trackMouseEvent THEN
	
	ib_trackMouseEvent				= invo_dwGUI.of_trackMouseEvent(handle(this), invo_dwGUI.TME_LEAVE)

//	of_getFocus()

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

		IF ds_XPListBar.of_getItem_objectType(ll_item) = ds_XPListBar.GROUP THEN
			
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

event ue_dwnkey;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_keyDown(key, keyFlags)
end event

event losefocus;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ib_trackMouseEvent					= FALSE

IF tmg_XPListBar.Running THEN tmg_XPListBar.Stop()

of_loseFocus(il_groupFocus)
of_underLine_link(0)
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
	CASE invo_dwGUI.WM_MOUSELEAVE
		
		ib_trackMouseEvent			= FALSE
//		ib_trackMouseEvent			= NOT (of_highLight(INVISIBLE) = SUCCESS)
		
		IF tmg_XPListBar.Running THEN tmg_XPListBar.Stop()

		of_loseFocus(il_groupFocus)
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
ll_pixels								= il_yIndent / PixelsToUnits(1, yPixelsToUnits!)

il_xIndent								= ll_pixels * PixelsToUnits(1, xPixelsToUnits!)

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

//of_getFocus()

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

CHOOSE CASE #ScrollSpeed
	CASE NORMAL
		lm_context.m_scrollSpeed.m_normal.Checked									&
											= TRUE
	CASE FAST
		lm_context.m_scrollSpeed.m_fast.Checked									&
											= TRUE
	CASE FASTEST
		lm_context.m_scrollSpeed.m_fastest.Checked								&
											= TRUE
	CASE ELSE
		MessageBox('XPListBar Error', 'Invalid ScrollSpeed (' + String(#ScrollSpeed) + ') defined.')
END CHOOSE

CHOOSE CASE #BitMapSize
	CASE SMALL
		lm_context.m_size.m_small.Checked											&
											= TRUE
	CASE MEDIUM
		lm_context.m_size.m_medium.Checked											&
											= TRUE
	CASE LARGE
		lm_context.m_size.m_large.Checked											&
											= TRUE
	CASE XLARGE
		lm_context.m_size.m_xLarge.Checked											&
											= TRUE
	CASE ELSE
		MessageBox('ToolBar Error', 'Invalid BitMapSize (' + String(#BitMapSize) + ') defined.')
END CHOOSE

lm_context.m_showToolTips.Checked													&
											= of_displayToolTips()
lm_context.mf_popMenu(this)
end event

event scrollvertical;of_scrollButtons()
end event

event scrollhorizontal;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Object.DataWindow.HorizontalScrollPosition	= 0
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
	
	ll_new								= Max(ll_pos - PixelsToUnits(#ScrollSpeed, yPixelsToUnits!), 0)
	
	ls_modify							= dw_palette.Modify('dataWindow.VerticalScrollPosition="' + String(ll_new) + '"')

//	of_scrollButtons()

ELSE
	IF ib_scrollBottom THEN

		Long								ll_max
		ll_max							= Long(dw_palette.Describe('dataWindow.VerticalScrollMaximum'))
		
		ll_new							= Min(ll_pos + PixelsToUnits(#ScrollSpeed, yPixelsToUnits!), ll_max)

		ls_modify						= dw_palette.Modify('dataWindow.VerticalScrollPosition="' + String(ll_new) + '"')

//		of_scrollButtons()
		
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

