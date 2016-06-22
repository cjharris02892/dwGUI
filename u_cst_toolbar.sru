HA$PBExportHeader$u_cst_toolbar.sru
forward
global type u_cst_toolbar from userobject
end type
type st_toolbar from statictext within u_cst_toolbar
end type
type dw_palette from datawindow within u_cst_toolbar
end type
type r_border from rectangle within u_cst_toolbar
end type
type ds_toolbar from n_cst_toolbar_items within u_cst_toolbar
end type
end forward

shared variables
u_cst_toolBar								suo_toolBar[]
end variables

global type u_cst_toolbar from userobject
integer width = 562
integer height = 104
event type integer ue_itemclicking ( string vs_button )
event ue_itemclicked ( string vs_button )
event ue_context_size ( string vs_size )
event ue_context_showtext ( boolean vb_showtext )
event ue_context_showtooltips ( boolean vb_showtips )
event ue_resized ( long vl_oldheight,  long vl_newheight )
event ue_post_constructor ( )
st_toolbar st_toolbar
dw_palette dw_palette
r_border r_border
ds_toolbar ds_toolbar
end type
global u_cst_toolbar u_cst_toolbar

type prototypes

end prototypes

type variables
Private:

	n_cst_dwGUI								invo_dwGUI

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

	//	HighLight constants
	CONSTANT String						SELECTMODE						= 'select'
	CONSTANT String						HIGHLIGHT						= 'highlight'
	CONSTANT String						VISIBLEMODE						= 'visible'
	CONSTANT String						INVISIBLE						= 'invisible'

Private:

	Boolean									ib_displayText					= FALSE
	Boolean									ib_displayToolTips			= TRUE

Protected:

	Boolean									#DisplayBorder					= TRUE
	Boolean									#RaisedBorder					= FALSE
	Boolean									#SolidBackGround				= FALSE

	String									#FontFace						= 'Tahoma'
	Long										#FontSize						= 8

	Long										#BitMapSize						= 16
	
	String									#Band								= 'detail'

	Long										#ToolTipDelayInitial			= 1000
	Long										#ToolTipDelayVisible			= 32000
	Boolean									#ToolTipIsBubble				= TRUE
	
Public:

	CONSTANT	Long							ALLOW								= 1
	CONSTANT Long							PREVENT							= -1

	CONSTANT	Long							SUCCESS							= 1
	CONSTANT	Long							NO_ACTION						= 0
	CONSTANT Long							FAILURE							= -1

	CONSTANT Long							LEFT								= 1
	CONSTANT Long							RIGHT								= 2
	
	CONSTANT Long							HORIZONTAL						= 1
	CONSTANT Long							VERTICAL							= 2

	CONSTANT Long							SMALL								= 16
	CONSTANT Long							MEDIUM							= 24
	CONSTANT Long							LARGE								= 32
	CONSTANT Long							XLARGE							= 48

	//	Reserved object types, duplicated from n_cst_toolBar_items for ease
	//	of implementation for the programmer when calling of_addItems()
	CONSTANT String						SEPARATOR						= 'separator'

Protected:

	n_cst_string							invo_string

Private:

	Integer									il_dropSize						= 45
	
	//	The dropMenu item is displayed as a character 7 using the Merlett
	//	font.  Originally it was q using WingDings 3.
	String									is_dropMenuChar				= '7'
	String									is_dropMenuFont				= 'Marlett'
	
	//	For future use, to be used to support drop down toolBar items
	String									is_dropItemChar				= '6'
	String									is_dropItemFont				= 'Marlett'
	
	Boolean									ib_debug							= FALSE
	
	CONSTANT Long							NOTAB								= 0
	CONSTANT Long							TAB								= 1
	CONSTANT Long							BACKTAB							= 2
	
	n_cst_color								invo_color

	String									is_lbuttonDown
	Long										il_itemChecked					= -1
	
	Long										il_currentOrientation		= HORIZONTAL
	
	Boolean									ib_update						= TRUE
	Boolean									ib_trackMouseEvent			= FALSE
	
	Integer									ii_toolTipIsBubble			= 1
end variables

forward prototypes
public function boolean of_displaytext ()
public subroutine of_enabletooltips ()
public subroutine of_disabletooltips ()
public function integer of_setenabled (string vs_item, boolean vb_switch)
public function integer of_setvisible (string vs_item, boolean vb_switch)
public function boolean of_displaytooltips ()
public function string of_gettext (long vl_item)
public function boolean of_isvisible (long vl_item)
public function boolean of_isenabled (long vl_item)
public function boolean of_isvisible (string vs_item)
public function boolean of_isenabled (string vs_item)
public function integer of_settext (string vs_item, string vs_text)
public function integer of_settiptext (string vs_item, string vs_tooltip)
public function integer resize (integer w, integer h)
private subroutine of_initializeitemsize (long vl_item)
public function integer of_setimage (string vs_item, string vs_image)
private subroutine of_size (integer vi_size)
private function long of_createitem (long vl_item)
private function boolean of_updatepositions (boolean vb_dropdownmenu)
public subroutine of_disableupdate ()
public subroutine of_enableupdate ()
private subroutine of_size ()
public function integer of_update ()
protected function string of_getClickedButton ()
private subroutine of_broadcast_invisible (userobject vuo_broadcaster)
protected function integer of_highlight (string vs_mode)
private function long of_adddropmenu ()
public function long of_additem (string vs_text, string vs_image)
public function long of_additem (string vs_text, string vs_image, string vs_tooltip)
public function long of_additem (string vs_text, string vs_image, integer vi_position)
public function long of_additem (string vs_text, string vs_image, string vs_tooltip, integer vi_position)
public function long of_additems (string vs_text[], string vs_image[])
public function long of_additems (string vs_text[], string vs_image[], string vs_tooltip[])
public function long of_additems (string vs_text[], string vs_image[], string vs_tooltip[], integer vi_position[])
public function long of_addseparator ()
public function long of_addseparator (integer vi_position)
private function long of_size_text (string vs_text, string vs_fontface, integer vi_fontsize)
private function long of_size_line ()
private function integer of_size_text (string vs_text)
private function long of_size_imageheight ()
private function long of_size_imagewidth (string vs_image)
public function integer of_setchecked (string vs_item, boolean vb_switch)
public function boolean of_ischecked (long vl_item)
public function boolean of_ischecked (string vs_item)
private function integer of_drawenabled (long vl_item)
private function integer of_drawchecked (long vl_item)
public function integer of_setchecked (long vl_item, boolean vb_switch)
public function integer of_setenabled (long vl_item, boolean vb_switch)
public function integer of_setimage (long vl_item, string vs_image)
public function integer of_settext (long vl_item, string vs_text)
public function integer of_settiptext (long vl_item, string vs_tooltip)
public function integer of_setvisible (long vl_item, boolean vb_switch)
private function long of_createitem_separator (long vl_item)
protected function integer of_drawbutton (long vl_item)
private subroutine of_popmenu_dropdown ()
protected function integer of_keydown (keycode vkc_key, unsignedinteger vui_keyflags)
public function integer of_disabletext ()
public function integer of_enabletext ()
public function integer of_clickitem (string vs_button)
public function integer of_clickitem (long vl_item)
public function long of_clickbutton (string vs_button)
public function long of_clickbutton (long vl_item)
public function long of_additem (string vs_text)
public function long of_additem (string vs_text, integer vi_position)
public function string of_gettext (string vs_item)
public function long of_additems (string vs_text[])
public function long of_additems (string vs_text[], integer vi_position[])
public function long of_additems (string vs_text[], string vs_image[], integer vi_position[])
private subroutine of_correct_bitmapsize ()
private subroutine of_correct_fontsize ()
private subroutine of_correct_size ()
private function long of_fontheight ()
private function long of_fontheight (integer vi_fontsize)
public function long of_locateitem (string vs_text)
protected function long of_getcolor (string vs_color)
private subroutine of_broadcast_showtext (boolean vb_showtext)
private subroutine of_broadcast_showtooltips (boolean vb_showtips)
public function long of_addbutton (string vs_text)
public function long of_addbutton (string vs_text, integer vi_position)
public function long of_addbutton (string vs_text, string vs_image)
public function long of_addbutton (string vs_text, string vs_image, integer vi_position)
public function long of_addbutton (string vs_text, string vs_image, string vs_tooltip)
public function long of_addbutton (string vs_text, string vs_image, string vs_tooltip, integer vi_position)
public function long of_addbuttons (string vs_text[], string vs_image[], string vs_tooltip[], integer vi_position[])
public function long of_addbuttons (string vs_text[], string vs_image[], string vs_tooltip[])
public function long of_addbuttons (string vs_text[], string vs_image[], integer vi_position[])
public function long of_addbuttons (string vs_text[], string vs_image[])
public function long of_addbuttons (string vs_text[], integer vi_position[])
public function long of_addbuttons (string vs_text[])
private subroutine of_destroyitem (long vl_item)
private function long of_locateitem ()
end prototypes

event type integer ue_itemclicking(string vs_button);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(ALLOW)
end event

event ue_itemclicked(string vs_button);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

CHOOSE CASE Lower(vs_button)
	CASE is_dropMenuChar
		of_popMenu_dropDown()
END CHOOSE
end event

event ue_context_size(string vs_size);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item

CHOOSE CASE Lower(vs_size)
	CASE 'small'
		
		of_disableUpdate()
		of_size(SMALL)
		
		ds_toolBar.of_setItem_rectHeight(1, of_size_imageHeight() + 16)
		
		FOR ll_item = 2 TO ds_toolBar.RowCount()
			of_initializeItemSize(ll_item)
		NEXT

		of_enableUpdate()
		
	CASE 'medium'
		
		of_disableUpdate()
		of_size(MEDIUM)
				
		ds_toolBar.of_setItem_rectHeight(1, of_size_imageHeight() + 16)
		
		FOR ll_item = 2 TO ds_toolBar.RowCount()
			of_initializeItemSize(ll_item)
		NEXT

		of_enableUpdate()
		
	CASE 'large'
		
		of_disableUpdate()
		of_size(LARGE)	
		
		ds_toolBar.of_setItem_rectHeight(1, of_size_imageHeight() + 16)
		
		FOR ll_item = 2 TO ds_toolBar.RowCount()
			of_initializeItemSize(ll_item)
		NEXT

		of_enableUpdate()
		
	CASE 'xlarge'
		
		of_disableUpdate()
		of_size(XLARGE)
		
		ds_toolBar.of_setItem_rectHeight(1, of_size_imageHeight() + 16)

		FOR ll_item = 2 TO ds_toolBar.RowCount()
			of_initializeItemSize(ll_item)
		NEXT

		of_enableUpdate()
		
END CHOOSE
end event

event ue_context_showtext(boolean vb_showtext);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_broadCast_showText(vb_showText)

//GetApplication().ToolBarText	= vb_showText

RETURN
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

event ue_resized(long vl_oldheight, long vl_newheight);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
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

IF ds_toolBar.of_locateItem_objectName(ds_toolBar.POPMENU + '_' + String(1)) <> 1 THEN
	messageBox('Programmer Error', 'You have improperly initialized your toolBar.')
END IF

RETURN
end event

public function boolean of_displaytext ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(ib_displayText)
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

String									ls_describe
Long										ll_item

FOR ll_item = 1 TO ds_toolBar.RowCount()
	
	ls_describe							= Trim(dw_palette.Describe('p_' + ds_toolBar.of_getItem_objectName(ll_item) + '.X'))
	
	IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
		dw_palette.Modify('p_' + ds_toolBar.of_getItem_objectName(ll_item) + '.ToolTip.Enabled="1"')
	END IF

	ls_describe							= Trim(dw_palette.Describe('t_' + ds_toolBar.of_getItem_objectName(ll_item) + '.X'))
	
	IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
		dw_palette.Modify('t_' + ds_toolBar.of_getItem_objectName(ll_item) + '.ToolTip.Enabled="1"')
	END IF

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
Long										ll_item

FOR ll_item = 1 TO ds_toolBar.RowCount()
	
	ls_describe							= Trim(dw_palette.Describe('p_' + ds_toolBar.of_getItem_objectName(ll_item) + '.X'))
	
	IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
		dw_palette.Modify('p_' + ds_toolBar.of_getItem_objectName(ll_item) + '.ToolTip.Enabled="0"')
	END IF

	ls_describe							= Trim(dw_palette.Describe('t_' + ds_toolBar.of_getItem_objectName(ll_item) + '.X'))
	
	IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
		dw_palette.Modify('t_' + ds_toolBar.of_getItem_objectName(ll_item) + '.ToolTip.Enabled="0"')
	END IF

NEXT

RETURN
end subroutine

public function integer of_setenabled (string vs_item, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setEnabled(of_locateItem(vs_item), vb_switch))
end function

public function integer of_setvisible (string vs_item, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setVisible(of_locateItem(vs_item), vb_switch))
end function

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

IF vl_Item > 0 AND vl_Item <= ds_toolBar.RowCount() THEN
	ls_Text								= ds_toolBar.of_getItem_text(vl_item)
END IF

Return(ls_Text)
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

IF vl_Item > 0 AND vl_Item <= ds_toolBar.RowCount() THEN
	lb_Visible							= ds_toolBar.of_getItem_visible(vl_item)
END IF

Return(lb_Visible)
end function

public function boolean of_isenabled (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_Enabled = FALSE

IF vl_Item > 0 AND vl_Item <= ds_toolBar.RowCount() THEN
	lb_Enabled							= ds_toolBar.of_getItem_enabled(vl_item)
END IF

Return(lb_Enabled)
end function

public function boolean of_isvisible (string vs_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_Visible = FALSE

Long										ll_item
ll_item									= of_locateItem(vs_item)

IF NOT IsNull(ll_item) THEN
	lb_Visible							= ds_toolBar.of_getItem_visible(ll_item)
END IF

Return(lb_Visible)
end function

public function boolean of_isenabled (string vs_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_Enabled = FALSE

Long										ll_item
ll_item									= of_locateItem(vs_item)

IF NOT IsNull(ll_item) THEN
	lb_Enabled							= ds_toolBar.of_getItem_enabled(ll_item)
END IF

Return(lb_Enabled)
end function

public function integer of_settext (string vs_item, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setText(of_locateItem(vs_item), vs_text))
end function

public function integer of_settiptext (string vs_item, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setTipText(of_locateItem(vs_item), vs_toolTip))
end function

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
dw_palette.Resize(r_border.Width - PixelsToUnits(2, XPixelsToUnits!), r_border.Height - PixelsToUnits(2, YPixelsToUnits!))

Return(li_RC)
end function

private subroutine of_initializeitemsize (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

ds_toolBar.of_setItem_rectTop(vl_item, 0)
ds_toolBar.of_setItem_rectHeight(vl_item, 0)
ds_toolBar.of_setItem_rectLeft(vl_item, 0)
ds_toolBar.of_setItem_rectWidth(vl_item, 0)
ds_toolBar.of_setItem_textWidth(vl_item, 0)
ds_toolBar.of_setItem_imageWidth(vl_item, 0)

IF ds_toolBar.of_getItem_visible(vl_item) THEN

	ds_toolBar.of_setItem_rectTop(vl_item, 16)
	ds_toolBar.of_setItem_rectHeight(vl_item, of_size_imageHeight() + 16)
	
	ds_toolBar.of_setItem_imageWidth(vl_item, of_size_imageWidth(ds_toolBar.of_getItem_image(vl_item)))
		
	IF ds_toolBar.of_getItem_displayText(vl_item) THEN
		ds_toolBar.of_setItem_textWidth(vl_item, of_size_text(ds_toolBar.of_getItem_text(vl_item), ds_toolBar.of_getItem_fontFace(vl_item), #FontSize))
	END IF

	IF ds_toolBar.of_getItem_separator(vl_item) THEN
		ds_toolBar.of_setItem_rectWidth(vl_item, of_size_line())
	ELSE
		ds_toolBar.of_setItem_rectWidth(vl_item, ds_toolBar.of_getItem_imageWidth(vl_item) + ds_toolBar.of_getItem_textWidth(vl_item))
	END IF
	
END IF

RETURN
end subroutine

public function integer of_setimage (string vs_item, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setImage(of_locateItem(vs_item), vs_image))
end function

private subroutine of_size (integer vi_size);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

#BitMapSize								= vi_size

of_correct_bitMapSize()

Long										ll_oldHeight
ll_oldHeight							= Height

CHOOSE CASE #BitMapSize
		
	CASE SMALL
		
		#fontSize						= 8

		il_dropSize						= 45
		
		dw_palette.Modify('DataWindow.' + #band + '.Height="104"')
		dw_palette.Modify('r_button.Height="' + String(88 + 16) + '"')

		Resize(Width, 104)

	CASE MEDIUM
		
		#fontSize						= 10
		
		il_dropSize						= 55
		
		dw_palette.Modify('DataWindow.' + #band + '.Height="148"')
		dw_palette.Modify('r_button.Height="' + String(132 + 16) + '"')

		Resize(Width, 134)
		
	CASE LARGE
		
		#fontSize						= 12
		
		il_dropSize						= 65
		
		dw_palette.Modify('DataWindow.' + #band + '.Height="192"')
		dw_palette.Modify('r_button.Height="' + String(176 + 16) + '"')

		Resize(Width, 168)

	CASE XLARGE
		
		#fontSize						= 14
		
		il_dropSize						= 75
		
		dw_palette.Modify('DataWindow.' + #band + '.Height="236"')
		dw_palette.Modify('r_button.Height="' + String(220 + 16) + '"')

		Resize(Width, 230)
		
END CHOOSE

ds_toolBar.of_setItem_textWidth(1, il_dropSize)
ds_toolBar.of_setItem_rectWidth(1, ds_toolBar.of_getItem_textWidth(1))

Long										ll_newHeight
ll_newHeight							= Height

EVENT ue_resized(ll_oldHeight, ll_newHeight)

RETURN
end subroutine

private function long of_createitem (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Double									ldbl_fontHeight
ldbl_fontHeight						= of_fontHeight()

Long										ll_pos
ll_pos									= ds_toolBar.of_getItem_rectLeft(vl_item)

Long										li_textYOffset
li_textYOffset							= (of_size_imageHeight() - Int(ldbl_fontHeight)) / 2

Boolean									lb_createdImage	= FALSE,	lb_createdText	= FALSE
String									ls_modify			= ''

Long										li_displayToolTips

IF of_displayToolTips() THEN
	li_displayToolTips				= 1
ELSE
	li_displayToolTips				= 0
END IF
                                                                        &
//	The following determines what to display for toolTip text
String									ls_toolTip = ''
ls_toolTip								= ds_toolBar.of_getItem_toolTip(vl_item)

IF of_displayText() THEN
	
	//	If displayText is turned on and the name and toolTip are the same,
	//	then we don't need a toolTip
	IF ds_toolBar.of_getItem_text(vl_item) = ds_toolBar.of_getItem_toolTip(vl_item) THEN
		ls_toolTip						= ''
	END IF
	
ELSE
	
	//	If displayText is turned off and there is no image then we are going
	//	to override the displayText setting and therefore we will only want
	//	to set the toolTip if the name and toolTip are not the same
	IF ds_toolBar.of_getItem_image(vl_item) = '' THEN
		IF ds_toolBar.of_getItem_text(vl_item) = ds_toolBar.of_getItem_toolTip(vl_item) THEN
			ls_toolTip					= ''
		END IF
	END IF
	
END IF

//	BitMap logic
IF NOT (isNull(ds_toolBar.of_getItem_image(vl_item)) OR Trim(ds_toolBar.of_getItem_image(vl_item)) = '') THEN
	
	ls_modify							= 'CREATE bitmap(band=' + #band + ' filename='										&
											+ '"' + ds_toolBar.of_getItem_image(vl_item) + '" '								&
											+ 'x="' + String(ll_pos) + '" '															&
											+ 'y="16" '																						&
											+ 'height="'+ String(of_size_imageHeight()) + '" '									&
											+ 'width="' + String(ds_toolBar.of_getItem_imageWidth(vl_item)) + '" '		&
											+ 'border="0" '																				&
											+ 'name=p_' + ds_toolBar.of_getItem_objectName(vl_item) + ' '					&
											+ 'visible="1" '
//	IF ds_toolBar.of_PBVersion() >= 12.5 THEN
//		
//		IF ds_toolBar.of_getItem_enabled(vl_item) THEN
//			ls_modify					= ls_modify + 'enabled="1" '
//		ELSE
//			ls_modify					= ls_modify + 'enabled="0" '
//		END IF
//
//	END IF
	
	IF ds_toolBar.of_PBVersion() >= 11.5 THEN
		
		ls_modify						= ls_modify																						&
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
											+ 'transparentcolor="' + String(ds_toolBar.of_getItem_imageTransparency(vl_item)) + '" '
												
//		IF ds_toolBar.of_getItem_enabled(vl_item) THEN
//			ls_modify					= ls_modify + 'transparency="0" '
//		ELSE
//			ls_modify					= ls_modify + 'transparency="50" '
//		END IF
		
	ELSE
		//	Need to come up with a way to show enabled/disabled for version prior to 11.5
	END IF
	
	ls_modify							= ls_modify + ') '
	
	lb_createdImage					= TRUE
	
	ll_pos								= ll_pos + ds_toolBar.of_getItem_imageWidth(vl_item)
	
END IF

//	Text logic
IF NOT (isNull(ds_toolBar.of_getItem_text(vl_item)) OR Trim(ds_toolBar.of_getItem_text(vl_item)) = '') THEN
	IF ds_toolBar.of_getItem_displayText(vl_item) THEN
		
		ls_modify						= ls_modify																						&
											+ 'CREATE text(band=' + #band + ' ' +													&
											+ 'alignment="' + String(ds_toolBar.of_getItem_alignment(vl_item)) + '" '	&
											+ 'text="' + ds_toolBar.of_getItem_text(vl_item) + '" border="0" '			&
											+ 'x="' + String(ll_pos) + '" ' +														&
											+ 'y="' + String(li_textYOffset + 16) + '" '											&
											+ 'height="' + String(Int(ldbl_fontHeight)) + '" '									&
											+ 'width="' + String(ds_toolBar.of_getItem_textWidth(vl_item)) + '" '		&
											+ 'html.valueishtml="0" '																	&
											+ 'name=t_' + ds_toolBar.of_getItem_objectName(vl_item) + ' '					&
											+ 'visible="1" '																				&
											+ 'font.face="' + ds_toolBar.of_getItem_fontFace(vl_item) + '" '				&
											+ 'font.height="' + String(#FontSize * -1) + '" '									&
											+ 'font.weight="400" '																		&
											+ 'font.family="2" font.pitch="2" font.charset="0" '								&
											+ 'background.mode="1" '
												
//		IF ds_toolBar.of_PBVersion >= 12.5 THEN
//			
//			IF ds_toolBar.of_getItem_enabled(vl_item) THEN
//				ls_modify				= ls_modify + 'enabled="1" '
//			ELSE
//				ls_modify				= ls_modify + 'enabled="0" '
//			END IF
//
//		END IF

		IF ds_toolBar.of_PBVersion() >= 11.5 THEN

			ls_modify					= ls_modify + 'color="' + String(of_getColor(MENUTEXT)) + '" '

			ls_modify					= ls_Modify																						&
											+ 'background.transparency="100" '														&
											+ 'background.brushmode="0" background.gradient.repetition.mode="0" '		&
											+ 'background.gradient.repetition.count="0" '										&
											+ 'background.gradient.repetition.length="100" '									&
											+ 'background.gradient.focus="0" background.gradient.scale="100" '			&
											+ 'background.gradient.spread="100" '													&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +			&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +			&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '						&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" ' +									&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '						&
											+ 'tooltip.maxwidth="0" '																	&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '					&
											+ 'tooltip.transparency="0" '																&
											+ 'tooltip.tip="' + ls_toolTip + '" '
		END IF

//		IF ds_toolBar.of_getItem_enabled(vl_item) THEN
//			ls_modify					= ls_modify + 'color="' + String(of_getColor(MENUTEXT)) + '" '
//		ELSE
//			ls_modify					= ls_modify + 'color="' + String(of_getColor(DISABLEDTEXT)) + '" '
//		END IF
		
		ls_modify						= ls_modify + ') '

		IF #BitMapSize >= MEDIUM THEN

			//	This "box" is used to capture the mouseMove for an item when
			//	the size of the toolBar is greater than SMALL.  This allows
			//	us to move the text to appear vertically centered and still
			//	be able to properly capture the mouseMove as if the height
			//	of the text was greater than it actually is.
			
			ls_modify					= ls_modify																						&
											+ 'CREATE text(band=' + #band + ' '														&
											+ 'alignment="' + String(ds_toolBar.of_getItem_alignment(vl_item)) + '" '	&
											+ 'text="' + '' + '" border="0" '														&
											+ 'x="' + String(ll_pos) + '" ' +														&
											+ 'y="' + String(16) + '" '																&
											+ 'height="' + String(of_size_imageHeight()) + '" '								&
											+ 'width="' + String(ds_toolBar.of_getItem_textWidth(vl_item)) + '" '		&
											+ 'html.valueishtml="0" '																	&
											+ 'name=b_' + ds_toolBar.of_getItem_objectName(vl_item) + ' '					&
											+ 'visible="1" '																				&
											+ 'font.face="' + ds_toolBar.of_getItem_fontFace(vl_item) + '" '				&
											+ 'font.height="' + String(#FontSize * -1) + '" '									&
											+ 'font.weight="400" '																		&
											+ 'font.family="2" font.pitch="2" font.charset="0" '								&
											+ 'background.mode="1" '
												
//			IF ds_toolBar.of_PBVersion >= 12.5 THEN
//				
//				IF ds_toolBar.of_getItem_enabled(vl_item) THEN
//					ls_modify			= ls_modify + 'enabled="1" '
//				ELSE
//					ls_modify			= ls_modify + 'enabled="0" '
//				END IF
//	
//			END IF
	
			IF ds_toolBar.of_PBVersion() >= 11.5 THEN
	
				ls_modify				= ls_modify + 'color="' + String(of_getColor(MENUTEXT)) + '" '
	
				ls_modify				= ls_Modify																						&
											+ 'background.transparency="100" '														&
											+ 'background.brushmode="0" background.gradient.repetition.mode="0" '		&
											+ 'background.gradient.repetition.count="0" '										&
											+ 'background.gradient.repetition.length="100" '									&
											+ 'background.gradient.focus="0" background.gradient.scale="100" '			&
											+ 'background.gradient.spread="100" '													&
											+ 'tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +			&
											+ 'tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +			&
											+ 'tooltip.enabled="' + String(li_displayToolTips) + '" '						&
											+ 'tooltip.hasclosebutton="0" tooltip.icon="0" ' +									&
											+ 'tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" '						&
											+ 'tooltip.maxwidth="0" '																	&
											+ 'tooltip.textcolor="' + String(of_getColor(INFOTEXT)) + '" '					&
											+ 'tooltip.transparency="0" '																&
											+ 'tooltip.tip="' + ls_toolTip + '" '
			END IF

//			IF ds_toolBar.of_getItem_enabled(vl_item) THEN
//				ls_modify				= ls_modify + 'color="' + String(of_getColor(MENUTEXT)) + '" '
//			ELSE
//				ls_modify				= ls_modify + 'color="' + String(of_getColor(DISABLEDTEXT)) + '" '
//			END IF
		
			ls_modify					= ls_modify + ') '
		
		END IF
		
		lb_createdText					= TRUE
		
		ll_pos							= ll_pos + ds_toolBar.of_getItem_textWidth(vl_item)
		
	END IF
END IF

dw_palette.Modify(ls_modify)

of_DrawEnabled(vl_item)
of_DrawChecked(vl_item)

//	Originally, was going to use the focusRectangle during keyboard interface
IF ds_toolBar.of_PBVersion() >= 12.5 THEN
	
	IF NOT (isNull(ds_toolBar.of_getItem_text(vl_item)) OR Trim(ds_toolBar.of_getItem_text(vl_item)) = '') THEN
		IF ds_toolBar.of_getItem_displayText(vl_item) THEN
			dw_palette.Modify('t_' + ds_toolBar.of_getItem_objectName(vl_item) + '.FocusRectangle=no')
		ELSE
			IF NOT (isNull(ds_toolBar.of_getItem_image(vl_item)) OR Trim(ds_toolBar.of_getItem_image(vl_item)) = '') THEN
				dw_palette.Modify('p_' + ds_toolBar.of_getItem_objectName(vl_item) + '.FocusRectangle=no')
			END IF
		END IF
	ELSE
		IF NOT (isNull(ds_toolBar.of_getItem_image(vl_item)) OR Trim(ds_toolBar.of_getItem_image(vl_item)) = '') THEN
			dw_palette.Modify('p_' + ds_toolBar.of_getItem_objectName(vl_item) + '.FocusRectangle=no')
		END IF
	END IF

END IF

//	Set the position of the bitmap objects within the requested band
IF lb_createdImage THEN
	dw_palette.setPosition('p_' + ds_toolBar.of_getItem_objectName(vl_item), #band, TRUE)
END IF

//	Set the position of the text objects within the requested band
IF lb_createdText THEN

	IF #BitMapSize >= MEDIUM THEN
		dw_palette.setPosition('b_' + ds_toolBar.of_getItem_objectName(vl_item), #band, TRUE)
	END IF

	dw_palette.setPosition('t_' + ds_toolBar.of_getItem_objectName(vl_item), #band, TRUE)
	
END IF

//	Set tabSequence for keyboard interface
IF lb_createdImage OR lb_createdText THEN
	IF ds_toolBar.of_getItem_position(vl_item) = LEFT THEN 
		ds_toolBar.of_setItem_tabSequence(vl_item, vl_item * 10)
	ELSE
		ds_toolBar.of_setItem_tabSequence(vl_item, 1000 - (vl_item * 10))
	END IF
END IF
	
Return(ds_toolBar.of_getItem_rectWidth(vl_item))
end function

private function boolean of_updatepositions (boolean vb_dropdownmenu);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_width
ll_width									= dw_palette.Width

ds_toolBar.of_setItem_visible(1, vb_dropDownMenu)
ds_toolBar.of_setItem_displayInMenu(1, FALSE)

Long										ll_offSet			= 0

IF vb_dropDownMenu THEN
	ds_toolBar.of_setItem_tabSequence(1, 1000)													//	object only allows 99 toolBarItems
	ll_offSet							= ds_toolBar.of_getItem_rectWidth(1) + PixelsToUnits(13, XPixelsToUnits!)
END IF

Long										ll_item,	ll_index

FOR ll_item = 2 TO ds_toolBar.RowCount()
	
	ds_toolBar.of_setItem_displayInMenu(ll_item, TRUE)
	
	IF ds_toolBar.of_getItem_separator(ll_item) THEN
		ds_toolBar.of_setItem_visible(ll_item, TRUE)
	END IF
	
NEXT

//	No need to display any trailing separators
ds_toolBar.SetFilter('visible="Y" AND position=' + String(LEFT))
ds_toolBar.Filter()

FOR ll_index = ds_toolBar.RowCount() TO 1 STEP -1
	
	IF NOT ds_toolBar.of_getItem_separator(ll_index) THEN EXIT
	
	ds_toolBar.of_setItem_visible(ll_index, FALSE)
	
NEXT

ds_toolBar.SetFilter('')
ds_toolBar.Filter()

Boolean									lb_itemFound		= FALSE
Long										ll_separatorItem	= 0

Long										ll_posLeft
ll_posLeft								= PixelsToUnits(4, XPixelsToUnits!)

FOR ll_item = 1 TO ds_toolBar.RowCount()

	IF ds_toolBar.of_getItem_position(ll_item) <> LEFT THEN CONTINUE
	IF NOT ds_toolBar.of_getItem_visible(ll_item) THEN CONTINUE

	//	The first item should not be a separator
	IF NOT lb_itemFound THEN
		IF ds_toolBar.of_getItem_separator(ll_item) THEN
			ds_toolBar.of_setItem_visible(ll_item, FALSE)
			CONTINUE
		END IF
	END IF
	
	lb_itemFound						= TRUE
	
	IF (ll_posLeft + ds_toolBar.of_getItem_rectWidth(ll_item)) > (ll_width - ll_offSet) THEN EXIT
	
	ds_toolBar.of_setItem_displayInMenu(ll_item, FALSE)
	
	IF ds_toolBar.of_getItem_separator(ll_item) THEN
		
		ds_toolBar.of_setItem_rectLeft(ll_item, ll_posLeft - PixelsToUnits(3, XPixelsToUnits!))

		//	No need to display consecutive separators
		IF ll_separatorItem > 0 THEN
			ds_toolBar.of_setItem_visible(ll_item, FALSE)
			CONTINUE
		END IF
		
		ll_separatorItem				= ll_item
		
//		IF ll_item > 1 THEN
			ll_posLeft					= ll_posLeft - PixelsToUnits(5, XPixelsToUnits!)
//		END IF
			
		ll_posLeft						= ll_posLeft + ds_toolBar.of_getItem_rectWidth(ll_item)
		ll_posLeft						= ll_posLeft + PixelsToUnits(4, XPixelsToUnits!)
		
	ELSE
		
		ds_toolBar.of_setItem_rectLeft(ll_item, ll_posLeft)

		ll_separatorItem				= 0

		ll_posLeft						= ll_posLeft + ds_toolBar.of_getItem_rectWidth(ll_item)
		ll_posLeft						= ll_posLeft + PixelsToUnits(8, XPixelsToUnits!)

	END IF

NEXT

//	If last item was a separator then make it invisible
IF ll_separatorItem > 0 THEN
	ds_toolBar.of_setItem_visible(ll_separatorItem, FALSE)
END IF

IF vb_dropDownMenu THEN
	CHOOSE CASE #FontSize
		CASE 8
			ll_offSet					= ds_toolBar.of_getItem_rectWidth(1) - PixelsToUnits(10, XPixelsToUnits!)
		CASE 10
			ll_offSet					= ds_toolBar.of_getItem_rectWidth(1) - PixelsToUnits(12, XPixelsToUnits!)
		CASE 12
			ll_offSet					= ds_toolBar.of_getItem_rectWidth(1) - PixelsToUnits(14, XPixelsToUnits!)
		CASE 14
			ll_offSet					= ds_toolBar.of_getItem_rectWidth(1) - PixelsToUnits(17, XPixelsToUnits!)
	END CHOOSE
END IF

//	No need to display any trailing separators
ds_toolBar.SetFilter('visible="Y" AND position=' + String(RIGHT))
ds_toolBar.Filter()

FOR ll_index = ds_toolBar.RowCount() TO 1 STEP -1
	
	IF NOT ds_toolBar.of_getItem_separator(ll_index) THEN EXIT
	
	ds_toolBar.of_setItem_visible(ll_index, FALSE)
	
NEXT

IF vb_dropDownMenu THEN
	
	//	Get rid of any separators directly in front of the drop menu
	FOR ll_index = 2 TO ds_toolBar.RowCount()
	
		IF NOT ds_toolBar.of_getItem_separator(ll_index) THEN EXIT
		
		ds_toolBar.of_setItem_visible(ll_index, FALSE)
		
	NEXT

END IF

ds_toolBar.SetFilter('')
ds_toolBar.Filter()

lb_itemFound							= FALSE
ll_separatorItem						= 0

Long										ll_posRight
ll_posRight								= (ll_width + ll_offSet) - PixelsToUnits(5, XPixelsToUnits!)

IF ll_item > ds_toolBar.RowCount() THEN
	
	FOR ll_item = 1 TO ds_toolBar.RowCount()
		
		IF ds_toolBar.of_getItem_position(ll_item) <> RIGHT THEN CONTINUE
		IF NOT ds_toolBar.of_getItem_visible(ll_item) THEN CONTINUE

		//	The first item should not be a separator
		IF NOT lb_itemFound THEN
			IF ds_toolBar.of_getItem_separator(ll_item) THEN
				ds_toolBar.of_setItem_visible(ll_item, FALSE)
				CONTINUE
			END IF
		END IF
		
		lb_itemFound					= TRUE
	
		IF ll_posRight - ds_toolBar.of_getItem_rectWidth(ll_item) <= ll_posLeft THEN EXIT
			
		ds_toolBar.of_setItem_displayInMenu(ll_item, FALSE)
		
		IF ds_toolBar.of_getItem_separator(ll_item) THEN
		
			//	No need to display consecutive separators
			IF ll_separatorItem > 0 THEN
				ds_toolBar.of_setItem_visible(ll_item, FALSE)
				CONTINUE
			END IF
			
			ll_separatorItem			= ll_item

//			IF ll_item > 1 THEN
				ll_posRight				= ll_posRight + PixelsToUnits(5, XPixelsToUnits!)
//			END IF
					
			ds_toolBar.of_setItem_rectLeft(ll_item, ll_posRight)
		
			ll_posRight					= ll_posRight - ds_toolBar.of_getItem_rectWidth(ll_item)
			ll_posRight					= ll_posRight - PixelsToUnits(4, XPixelsToUnits!)
			
		ELSE
				
			ll_separatorItem			= 0

			ll_posRight					= ll_posRight - ds_toolBar.of_getItem_rectWidth(ll_item)
				
			ds_toolBar.of_setItem_rectLeft(ll_item, ll_posRight)
	
			ll_posRight					= ll_posRight - PixelsToUnits(8, XPixelsToUnits!)
		
		END IF
		
	NEXT

END IF

//	If last item was a separator then make it invisible
IF ll_separatorItem > 0 THEN
	ds_toolBar.of_setItem_visible(ll_separatorItem, FALSE)
END IF

IF ds_toolBar.of_getItem_visible(1) THEN
	ds_toolBar.of_setItem_rectLeft(1, ll_width - ds_toolBar.of_getItem_rectWidth(1) - PixelsToUnits(5, XPixelsToUnits!))
END IF

IF NOT vb_dropDownMenu THEN
	
	FOR ll_item = 1 TO ds_toolBar.RowCount()
	
		IF NOT ds_toolBar.of_getItem_visible(ll_item) THEN CONTINUE
		
		IF ds_toolBar.of_getItem_displayInMenu(ll_item) THEN Return(TRUE)
	
	NEXT
	
END IF

Return(FALSE)
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

private subroutine of_size ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
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

public function integer of_update ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF NOT ib_update THEN Return(SUCCESS)

dw_palette.SetRedraw(FALSE)

Long										ll_item

FOR ll_item = 1 TO ds_toolBar.RowCount()
	of_destroyItem(ll_item)
NEXT

IF of_updatePositions(FALSE) THEN
	of_updatePositions(TRUE)
END IF

FOR ll_item = 1 TO ds_toolBar.RowCount()

	IF NOT ds_toolBar.of_getItem_visible(ll_item) THEN CONTINUE
	IF ds_toolBar.of_getItem_displayInMenu(ll_item)	THEN CONTINUE
	
	IF ds_toolBar.of_getItem_separator(ll_item) THEN
		of_createItem_separator(ll_item)
	ELSE
		of_createItem(ll_item)
	END IF

NEXT

dw_palette.SetRedraw(TRUE)

Return(SUCCESS)
end function

protected function string of_getClickedButton ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(is_lButtonDown)
end function

private subroutine of_broadcast_invisible (userobject vuo_broadcaster);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

//	This routine notifies the other u_cst_toolBar objects that a "new"
//	u_cst_toolBar has the highLight box and to hide theirs.  This way only
//	one toolBar has a highLight box.

Long										ll_toolbar,	ll_toolBars
ll_toolBars								= upperBound(suo_toolBar[])

FOR ll_toolBar = 1 TO ll_toolBars
	
	IF NOT IsValid(suo_toolBar[ll_toolBar]) THEN CONTINUE

	IF suo_toolBar[ll_toolBar] = vuo_broadCaster THEN CONTINUE

	suo_toolBar[ll_toolBar].of_highLight(INVISIBLE)

	suo_toolBar[ll_toolBar].dw_palette.Modify('DataWindow.' + #band + '.Color="' + String(of_getColor(LOSEFOCUS)) + '" ')

NEXT

RETURN
end subroutine

protected function integer of_highlight (string vs_mode);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

CHOOSE CASE vs_mode
	CASE SELECTMODE
		
		dw_palette.Modify('r_button.brush.color="' + String(of_GetColor(SELECTED2)) + '" ' +			&
								'r_button.pen.color="' + String(of_GetColor(HIGHLIGHTBORDER)) + '" ' +		&
								'r_button.background.color="' + String(of_GetColor(SELECTED2)) + '" ')
								
		IF ds_toolBar.of_PBVersion() >= 11.5 THEN
			dw_palette.Modify('r_button.background.gradient.color="' + String(of_GetColor(SELECTED1)) + '"')
		END IF
		
	CASE HIGHLIGHT
		
		dw_palette.Modify('r_button.brush.color="' + String(of_GetColor(HIGHLIGHT2)) + '" ' +		&
								'r_button.pen.color="' + String(of_GetColor(HIGHLIGHTBORDER)) + '" ' +		&
								'r_button.background.color="' + String(of_GetColor(HIGHLIGHT2)) + '" ')
								
		IF ds_toolBar.of_PBVersion() >= 11.5 THEN
			dw_palette.Modify('r_button.background.gradient.color="' + String(of_GetColor(HIGHLIGHT1)) + '"')
		END IF
		
	CASE VISIBLEMODE
		dw_palette.Object.r_button.Visible	= 1
	CASE INVISIBLE
		
		//	If we are hiding the highlight and the item underneath is checked,
		//	then make sure the checked indicator is visible
		IF il_itemChecked <> -1 THEN
			
			dw_palette.Modify('r_' + ds_toolBar.of_getItem_objectName(il_itemChecked) + '.Visible="1"')
			
			il_itemChecked							= -1
			
		END IF
		
		//	Hide the highlight
		dw_palette.Object.r_button.Visible	= 0
		
	CASE ELSE

		//	If we are hiding the highlight and the item underneath is checked,
		//	then make sure the checked indicator is visible
		IF il_itemChecked <> -1 THEN
			
			dw_palette.Modify('r_' + ds_toolBar.of_getItem_objectName(il_itemChecked) + '.Visible="1"')
			
			il_itemChecked							= -1
			
		END IF
		
		//	Hide the highlight
		dw_palette.Object.r_button.Visible	= 0
		
END CHOOSE

Return(SUCCESS)
end function

private function long of_adddropmenu ();//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

//	The 1st item is always the DropDownMenu item that is displayed when
//	not all menu items can be displayed in the toolBar.  The display logic
//	will show/hide this item as necessary.  It is always the rightMost
//	item in the toolBar when displayed and will display a popMenu of the
//	items that are not shown to the user when clicked.

dw_palette.Reset()

Long										ll_item
ll_item									= ds_toolBar.of_addItem()

ds_toolBar.of_setItem_text(ll_item, is_dropMenuChar)
ds_toolBar.of_setItem_image(ll_item, '')
ds_toolBar.of_setItem_toolTip(ll_item, 'ToolBar Items Menu')
ds_toolBar.of_setItem_position(ll_item, RIGHT)
ds_toolBar.of_setItem_visible(ll_item, FALSE)
ds_toolBar.of_setItem_enabled(ll_item, TRUE)
ds_toolBar.of_setItem_objectName(ll_item, ds_toolBar.POPMENU + '_' + String(ll_item))
ds_toolBar.of_setItem_objectType(ll_item, ds_toolBar.POPMENU)
ds_toolBar.of_setItem_imageTransparency(ll_item, of_getColor(DEFAULTIMAGETRANSPARENCY))
ds_toolBar.of_setItem_displayText(ll_item, TRUE)
ds_toolBar.of_setItem_displayInMenu(ll_item, FALSE)
ds_toolBar.of_setItem_fontFace(ll_item, is_dropMenuFont)
ds_toolBar.of_setItem_tabSequence(ll_item, 1000)								//	object only allows 99 toolBarItems
ds_toolBar.of_setItem_alignment(ll_item, 0)

ds_toolBar.of_setItem_textWidth(ll_item, il_dropSize)

ds_toolBar.of_setItem_rectTop(ll_item, 16)
ds_toolBar.of_setItem_rectHeight(ll_item, of_size_imageHeight() + 16)
ds_toolBar.of_setItem_rectLeft(ll_item, 0)
ds_toolBar.of_setItem_rectWidth(ll_item, ds_toolBar.of_getItem_textWidth(ll_item))

Return(1)
end function

public function long of_additem (string vs_text, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItem(vs_text, vs_image, vs_text, LEFT))
end function

public function long of_additem (string vs_text, string vs_image, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItem(vs_text, vs_image, vs_toolTip, LEFT))
end function

public function long of_additem (string vs_text, string vs_image, integer vi_position);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItem(vs_text, vs_image, vs_text, vi_position))
end function

public function long of_additem (string vs_text, string vs_image, string vs_tooltip, integer vi_position);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF Trim(vs_text) = is_DropMenuChar THEN
	Return(MessageBox('AddItem Error', 'The character ' + is_DropMenuChar + ' is reserved and can not be used as an item name.'))
END IF

Long										ll_item
ll_item									= ds_toolBar.of_addItem()

IF isNull(vs_text)		THEN vs_text		= ''
IF isNull(vs_image)		THEN vs_image		= ''
IF isNull(vs_toolTip)	THEN vs_toolTip	= ''
IF isNull(vi_position)	THEN vi_position	= LEFT

vs_text									= Trim(vs_text)
vs_image									= Trim(vs_image)
vs_toolTip								= Trim(vs_toolTip)

ds_toolBar.of_setItem_text(ll_item, vs_text)
ds_toolBar.of_setItem_image(ll_item, invo_dwGUI.of_getImageName(vs_image))

IF isNull(vs_toolTip) OR Trim(vs_toolTip) = '' THEN
	ds_toolBar.of_setItem_toolTip(ll_item, vs_text)
ELSE
	ds_toolBar.of_setItem_toolTip(ll_item, vs_toolTip)
END IF

//	Make sure position is a valid value
IF vi_position <> LEFT AND vi_position <> RIGHT THEN
	vi_position							= LEFT
END IF

ds_toolBar.of_setItem_position(ll_item, vi_Position)
ds_toolBar.of_setItem_visible(ll_item, TRUE)
ds_toolBar.of_setItem_enabled(ll_item, TRUE)

IF vs_text = '' THEN
	ds_toolBar.of_setItem_objectName(ll_item, ds_toolBar.TOOLBARITEM + '_' + String(ll_item))
ELSE
	ds_toolBar.of_setItem_objectName(ll_item, invo_string.of_GlobalReplace(vs_text, ' ', '_') + '_' + String(ll_item))
END IF

ds_toolBar.of_setItem_objectType(ll_item, ds_toolBar.TOOLBARITEM)

IF isNull(vs_image) OR vs_image = '' THEN
	
	ds_toolBar.of_setItem_imageTransparency(ll_item, of_getColor(DEFAULTIMAGETRANSPARENCY))
	ds_toolBar.of_setItem_displayText(ll_item, TRUE)
	
ELSE
	
	ds_toolBar.of_setItem_imageTransparency(ll_item, of_getColor(DEFAULTIMAGETRANSPARENCY))
	ds_toolBar.of_setItem_displayText(ll_item, of_displayText())
	
END IF

ds_toolBar.of_setItem_DisplayInMenu(ll_item, FALSE)

ds_toolBar.of_setItem_fontFace(ll_item, #FontFace)

of_initializeItemSize(ll_item)
of_update()

Return(ll_item)
end function

public function long of_additems (string vs_text[], string vs_image[]);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item

Long										li_position[]
String									ls_toolTip[]

FOR ll_item = 1 TO UpperBound(vs_text[])
	li_position[ll_item]				= LEFT
	ls_toolTip[ll_item]				= ''
NEXT

Return(of_addItems(vs_text[], vs_image[], ls_toolTip[], li_position[]))
end function

public function long of_additems (string vs_text[], string vs_image[], string vs_tooltip[]);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
Long										li_position[]

FOR ll_item = 1 TO UpperBound(vs_text[])
	li_position[ll_item]				= LEFT
NEXT

Return(of_addItems(vs_text[], vs_image[], vs_toolTip[], li_position[]))
end function

public function long of_additems (string vs_text[], string vs_image[], string vs_tooltip[], integer vi_position[]);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_loop

Boolean									lb_update
lb_update								= ib_update

ib_update								= FALSE

FOR ll_loop = 1 TO UpperBound(vs_text[])
	IF vs_text[ll_loop] = ds_toolBar.SEPARATOR THEN
		of_addSeparator(vi_position[ll_loop])
	ELSE
		of_addItem(vs_text[ll_loop], vs_image[ll_loop], vs_toolTip[ll_loop], vi_Position[ll_loop])
	END IF
NEXT

ib_update								= lb_update

of_update()

Return(ds_toolBar.RowCount())
end function

public function long of_addseparator ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addSeparator(LEFT))
end function

public function long of_addseparator (integer vi_position);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
ll_item									= ds_toolBar.of_addItem()

IF isNull(vi_position) THEN vi_position = LEFT

ds_toolBar.of_setItem_text(ll_item, ds_toolBar.SEPARATOR + '_' + String(ll_item))
ds_toolBar.of_setItem_image(ll_item, '')
ds_toolBar.of_setItem_toolTip(ll_item, '')
ds_toolBar.of_setItem_position(ll_item, vi_Position)
ds_toolBar.of_setItem_visible(ll_item, TRUE)
ds_toolBar.of_setItem_enabled(ll_item, TRUE)
ds_toolBar.of_setItem_objectName(ll_item, ds_toolBar.SEPARATOR + '_' + String(ll_item))
ds_toolBar.of_setItem_objectType(ll_item, ds_toolBar.SEPARATOR)
ds_toolBar.of_setItem_imageTransparency(ll_item, of_getColor(DEFAULTIMAGETRANSPARENCY))
ds_toolBar.of_setItem_displayText(ll_item, FALSE)
ds_toolBar.of_setItem_displayInMenu(ll_item, FALSE)

ds_toolBar.of_setItem_rectTop(ll_item, 16)
ds_toolBar.of_setItem_rectHeight(ll_item, of_size_imageHeight() + 16)
ds_toolBar.of_setItem_rectLeft(ll_item, 0)
ds_toolBar.of_setItem_rectWidth(ll_item, of_size_line())
ds_toolBar.of_setItem_textWidth(ll_item, 0)
ds_toolBar.of_setItem_imageWidth(ll_item, 0)

of_update()

Return(ll_item)
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

st_toolBar.FaceName					= vs_fontFace
st_toolBar.TextSize					= vi_fontSize * -1
	
ll_width									= PixelsToUnits(invo_dwGUI.of_GetFontWidth(st_toolBar, vs_text) + 4, XPixelsToUnits!)
	
Return(ll_width)
end function

private function long of_size_line ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long											ll_width

IF il_currentOrientation = HORIZONTAL THEN
	ll_width									= PixelsToUnits(4, XPixelsToUnits!)
ELSE
	ll_width									= PixelsToUnits(4, YPixelsToUnits!)
END IF

Return(ll_width)

end function

private function integer of_size_text (string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_size_text(vs_text, #FontFace, #FontSize))
end function

private function long of_size_imageheight ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_height
ll_height								= PixelsToUnits(#BitMapSize, YPixelsToUnits!)

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
	ll_width								= PixelsToUnits(#BitMapSize, XPixelsToUnits!)
END IF

Return(ll_width)
end function

public function integer of_setchecked (string vs_item, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_setChecked(of_locateItem(vs_item), vb_switch))
end function

public function boolean of_ischecked (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_checked = FALSE

IF vl_Item > 0 AND vl_Item <= ds_toolBar.RowCount() THEN
	lb_checked							= ds_toolBar.of_getItem_checked(vl_item)
END IF

Return(lb_checked)
end function

public function boolean of_ischecked (string vs_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_checked = FALSE

Long										ll_item
ll_item									= of_locateItem(vs_item)

IF NOT IsNull(ll_item) THEN
	lb_checked							= ds_toolBar.of_getItem_checked(ll_item)
END IF

Return(lb_checked)
end function

private function integer of_drawenabled (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 0 OR vl_item > ds_toolBar.RowCount() THEN Return(FAILURE)

String									ls_object
ls_object								= 'p_' + ds_toolBar.of_getItem_objectName(vl_item)

String									ls_describe
ls_describe								= Trim(dw_palette.Describe(ls_object + '.X'))
	
IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
		
	IF ds_toolBar.of_PBVersion() >= 11.5 THEN
		IF ds_toolBar.of_getItem_enabled(vl_item) THEN
			dw_palette.Modify(ls_object + '.Transparency="0"')
		ELSE
			dw_palette.Modify(ls_object + '.Transparency="50"')
		END IF
	ELSE
		//	Need to come up with a way to show enabled/disabled for version prior to 11.5
	END IF
		
	IF ds_toolBar.of_PBVersion() >= 12.5 THEN
		IF ds_toolBar.of_getItem_enabled(vl_item) THEN
			dw_palette.Modify(ls_object + '.Enabled="1"')
		ELSE
			dw_palette.Modify(ls_object + '.Enabled="0"')
		END IF
	END IF
	
END IF

ls_object								= 't_' + ds_toolBar.of_getItem_objectName(vl_item)

ls_describe								= Trim(dw_palette.Describe('t_' + ds_toolBar.of_getItem_objectName(vl_item) + '.X'))
	
IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
	
	IF ds_toolBar.of_getItem_enabled(vl_item) THEN
		dw_palette.Modify(ls_object + '.Color="' + String(of_getColor(MENUTEXT)) + '"')
	ELSE
		dw_palette.Modify(ls_object + '.Color="' + String(of_getColor(DISABLEDTEXT)) + '"')
	END IF
		
	IF ds_toolBar.of_PBVersion() >= 12.5 THEN
		IF ds_toolBar.of_getItem_enabled(vl_item) THEN
			dw_palette.Modify(ls_object + '.Enabled="1"')
		ELSE
			dw_palette.Modify(ls_object + '.Enabled="0"')
		END IF
	END IF

END IF

Return(SUCCESS)
end function

private function integer of_drawchecked (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 0 OR vl_item > ds_toolBar.RowCount() THEN Return(FAILURE)

String									ls_object
ls_object								= 'r_' + ds_toolBar.of_getItem_objectName(vl_item)

String									ls_describe
ls_describe								= dw_palette.Describe(ls_object + '.X')

IF ds_toolBar.of_getItem_checked(vl_item) AND (NOT ds_toolBar.of_getItem_displayInMenu(vl_item)) AND ds_toolBar.of_getItem_visible(vl_item) THEN

	Long									ll_x,	ll_y,	ll_width,	ll_height
	
	ll_X									= ds_toolBar.of_getItem_rectLeft(vl_item)		- PixelsToUnits(3, XPixelsToUnits!)
	ll_Y									= ds_toolBar.of_getItem_rectTop(vl_item)		- PixelsToUnits(3, YPixelsToUnits!)
	ll_Width								= ds_toolBar.of_getItem_rectWidth(vl_item)	+ PixelsToUnits(7, XPixelsToUnits!)
	ll_height							= ds_toolBar.of_getItem_rectHeight(vl_item)	+ PixelsToUnits(2, YPixelsToUnits!)
											
	String								ls_modify
	
	IF ls_describe = '?' OR ls_describe = '!' OR ls_describe = '' THEN

		ls_modify						= 'CREATE rectangle(band=' + #band + ' ' +																	&
											  'x="' + String(ll_x) + '" ' +																					&
											  'y="' + String(ll_y) + '" ' +																					&
											  'height="' + String(ll_height) + '" ' +																		&
											  'width="' + String(ll_width) + '" name=' + ls_object + ' ' +											&
											  'visible="1" brush.color="' +  String(of_getColor(THREEDLIGHT)) + '" ' +							&
											  'pen.style="0" pen.width="5" pen.color="' +  String(of_getColor(HIGHLIGHTBORDER)) + '" ' +	&
											  'background.mode="2" background.color="' +  String(of_getColor(THREEDLIGHT)) + '") '

		ls_modify						= dw_palette.Modify(ls_modify)
		
		IF ds_toolBar.of_PBVersion() >= 11.5 THEN
		
			dw_palette.Modify(ls_object + '.brush.hatch="8"')
		
			dw_palette.Modify(ls_object + '.background.transparency="10" ' +																		&
									ls_object + '.background.gradient.color="' +  String(of_getColor(INFOBACKGROUND)) + '" ' +			&
									ls_object + '.background.gradient.transparency="10" ' +															&
									ls_object + '.background.gradient.angle="0" ' +																		&
									ls_object + '.background.brushmode="2" ' +																			&
									ls_object + '.background.gradient.repetition.mode="0" ' +														&
									ls_object + '.background.gradient.repetition.count="0" ' +														&
									ls_object + '.background.gradient.repetition.length="100" ' +													&
									ls_object + '.background.gradient.focus="0" ' +																		&
									ls_object + '.background.gradient.scale="100" ' +																	&
									ls_object + '.background.gradient.spread="100" ' +																	&
									ls_object + '.tooltip.backcolor="' +  String(of_getColor(INFOBACKGROUND)) + '" ' +						&
									ls_object + '.tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +							&
									ls_object + '.tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +							&
									ls_object + '.tooltip.enabled="1" ' +																					&
									ls_object + '.tooltip.hasclosebutton="0" ' +																			&
									ls_object + '.tooltip.icon="0" ' +																						&
									ls_object + '.tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" ' +										&
									ls_object + '.tooltip.maxwidth="0" ' +																					&
									ls_object + '.tooltip.textcolor="' +  String(of_getColor(INFOTEXT)) + '" ' +								&
									ls_object + '.tooltip.transparency="0"')
		ELSE
			dw_palette.Modify(ls_object + '.brush.hatch="7"')
		END IF
	
	ELSE
		dw_palette.Modify(ls_object + '.x="' + String(ll_x) + '" ' +																				&
								ls_object + '.y="' + String(ll_y) + '" ' +																				&
								ls_object + '.height="' + String(ll_height) + '" ' +																	&
								ls_object + '.width="' + String(ll_width) + '"')
	END IF

	dw_palette.SetPosition(ls_object, #band, FALSE)
	
ELSE
	dw_palette.Modify('DESTROY ' + ls_object)
END IF

Return(SUCCESS)
end function

public function integer of_setchecked (long vl_item, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 0 OR vl_item > ds_toolBar.RowCount() THEN Return(FAILURE)

IF isnull(vb_switch) THEN vb_switch = FALSE

String									ls_describe

IF ds_toolBar.of_getItem_checked(vl_item) = (NOT vb_switch) THEN
	
	ds_toolBar.of_setItem_checked(vl_item, vb_switch)

	of_drawChecked(vl_item)

END IF

Return(SUCCESS)
end function

public function integer of_setenabled (long vl_item, boolean vb_switch);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 0 OR vl_item > ds_toolBar.RowCount() THEN Return(FAILURE)

IF isnull(vb_switch) THEN vb_switch = FALSE

String									ls_describe

IF ds_toolBar.of_getItem_enabled(vl_item) = (NOT vb_switch) THEN
	
	ds_toolBar.of_setItem_enabled(vl_item, vb_switch)

	of_drawEnabled(vl_item)

END IF

Return(SUCCESS)
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

IF vl_item <= 1 OR vl_item > ds_toolBar.RowCount() THEN Return(FAILURE)

IF isNull(vs_image) THEN vs_image = ''

ds_toolBar.of_setItem_image(vl_item, invo_dwGUI.of_getImageName(vs_image))

IF isNull(vs_image) OR Trim(vs_image) = '' THEN
	
	ds_toolBar.of_setItem_imageTransparency(vl_item, of_getColor(DEFAULTIMAGETRANSPARENCY))
	ds_toolBar.of_setItem_displayText(vl_item, TRUE)
	
ELSE
	
	ds_toolBar.of_setItem_imageTransparency(vl_item, of_getColor(DEFAULTIMAGETRANSPARENCY))
	ds_toolBar.of_setItem_displayText(vl_item, of_displayText())
	
END IF

of_initializeItemSize(vl_item)
of_update()

Return(SUCCESS)
end function

public function integer of_settext (long vl_item, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(FAILURE)

IF vl_item <= 1 OR vl_item > ds_toolBar.RowCount() THEN Return(FAILURE)

IF isNull(vs_text) THEN vs_text = ''

Long										ll_itemCurrent
ll_itemCurrent							= of_locateItem()

ds_toolBar.of_setItem_text(vl_item, vs_text)

of_initializeItemSize(vl_item)
of_update()
of_drawButton(ll_itemCurrent)

Return(SUCCESS)
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

IF vl_item <= 0 OR vl_item > ds_toolBar.RowCount() THEN Return(FAILURE)

IF isNull(vs_toolTip) THEN vs_toolTip = ''

String									ls_describe

ds_toolBar.of_setItem_toolTip(vl_item, vs_toolTip)

ls_describe								= Trim(dw_palette.Describe('p_' + ds_toolBar.of_getItem_objectName(vl_item) + '.X'))

IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
	dw_palette.Modify('p_' + ds_toolBar.of_getItem_objectName(vl_item) + '.ToolTip.Tip="' + vs_toolTip + '"')
END IF

ls_describe								= Trim(dw_palette.Describe('t_' + ds_toolBar.of_getItem_objectName(vl_item) + '.X'))

IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
	dw_palette.Modify('t_' + ds_toolBar.of_getItem_objectName(vl_item) + '.ToolTip.Tip="' + vs_toolTip + '"')
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

IF vl_item <= 0 OR vl_item > ds_toolBar.RowCount() THEN Return(FAILURE)

IF isnull(vb_switch) THEN vb_switch = FALSE

IF ds_toolBar.of_getItem_visible(vl_item) = (NOT vb_switch) THEN
	
	ds_toolBar.of_setItem_visible(vl_item, vb_switch)

	of_initializeItemSize(vl_item)
	of_update()
	
END IF

Return(SUCCESS)
end function

private function long of_createitem_separator (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_pos
ll_pos									= ds_toolBar.of_getItem_rectLeft(vl_item)

Integer									li_offset[]

IF ds_toolBar.of_getItem_position(vl_item) = RIGHT THEN
	li_offset[]							= { -3, -2 }
ELSE
	li_offset[]							= { 0, 1 }
END IF

String									ls_modify

IF il_currentOrientation = HORIZONTAL THEN

	ls_modify							= 'CREATE line(band=' + #band + ' '																&
											+ 'x1="' + String(ll_pos + PixelsToUnits(li_offset[1], XPixelsToUnits!)) + '" '	&
											+ 'y1="16" '																							&
											+ 'x2="' + String(ll_pos + PixelsToUnits(li_offset[1], XPixelsToUnits!)) + '" '	&
											+ 'y2="' + String(of_size_imageHeight() + 16) + '" '										&
											+ 'name=l_' + ds_toolBar.of_getItem_objectName(vl_item) + '_a visible="1" '		&
											+ 'pen.style="0" '																					&
											+ 'pen.width="' + String(PixelsToUnits(1, XPixelsToUnits!)) + '" '					&
											+ 'pen.color="' + String(of_getColor(THREEDDKSHADOW)) + '" '							&
											+ 'background.mode="2") '																			&
											+ 'CREATE line(band=' + #band + ' '																&
											+ 'x1="' + String(ll_pos + PixelsToUnits(li_offset[2], XPixelsToUnits!)) + '" '	&
											+ 'y1="16" '																							&
											+ 'x2="' + String(ll_pos + PixelsToUnits(li_offset[2], XPixelsToUnits!)) + '" '	&
											+ 'y2="' + String(of_size_imageHeight() + 16) + '" '										&
											+ 'name=l_' + ds_toolBar.of_getItem_objectName(vl_item) + '_b visible="1" '		&
											+ 'pen.style="0" '																					&
											+ 'pen.width="' + String(PixelsToUnits(1, XPixelsToUnits!)) + '" '					&
											+ 'pen.color="' + String(of_getColor(THREEDLIGHT)) + '" '								&
											+ 'background.mode="2")'
	dw_palette.Modify(ls_modify)

	Long									ll_x1aPixels,	ll_x1bPixels

	ll_x1aPixels						= UnitsToPixels(Long(dw_palette.Describe('l_' + ds_toolBar.of_getItem_objectName(vl_item) + '_a' + '.x1')), XUnitsToPixels!)
	ll_x1bPixels						= UnitsToPixels(Long(dw_palette.Describe('l_' + ds_toolBar.of_getItem_objectName(vl_item) + '_b' + '.x1')), XUnitsToPixels!)

	//	The lines should be right next to each other, some how PB makes a
	//	mistake once in while and the lines have an extra pixel between
	//	them.  Need to make an adjustment if this happens.  POSSIBLY NEED
	//	TO REWORK ALL THE LOGIC IN THE OBJECT TO DEAL WITH PIXELS INSTEAD
	//	OF UNITS.

	IF (ll_x1bPixels - ll_x1aPixels) = 2 THEN
		
		Long								ll_x1bUnits
		ll_x1bUnits						= PixelsToUnits(ll_x1aPixels + 1, XPixelsToUnits!)
		
		ls_modify						= 'l_' + ds_toolBar.of_getItem_objectName(vl_item) + '_b.x1="'							&
											+ String(ll_x1bUnits) + '" '																		&
											+ 'l_' + ds_toolBar.of_getItem_objectName(vl_item) + '_b.x2="'							&
											+ String(ll_x1bUnits) + '" '
											
		dw_palette.Modify(ls_modify)
		
	END IF
	
ELSE
END IF

ds_toolBar.of_setItem_tabSequence(vl_item, 0)

Return(ds_toolBar.of_getItem_rectWidth(vl_item))

end function

protected function integer of_drawbutton (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_describe
ls_describe								= dw_palette.Describe('r_button.X')

IF ls_describe = '?' OR ls_describe = '!' OR ls_describe = '' THEN Return(FAILURE)

IF isNull(vl_item) THEN Return(of_highLight(INVISIBLE))

IF vl_item <= 0 OR vl_item > ds_toolBar.RowCount() THEN Return(of_highLight(INVISIBLE))

IF NOT ds_toolBar.of_getItem_visible(vl_item) THEN Return(of_highLight(INVISIBLE))
IF NOT ds_toolBar.of_getItem_enabled(vl_item) THEN Return(of_highLight(INVISIBLE))

IF ds_toolBar.of_getItem_tabSequence(vl_item) = 0 THEN Return(of_highLight(INVISIBLE))

of_broadCast_invisible(this)

//	If the highlight has moved off of a checked item, then make sure
//	checked indicator is visible
IF il_itemChecked <> -1 THEN
	IF vl_item <> il_itemChecked THEN

		dw_palette.Modify('r_' + ds_toolBar.of_getItem_objectName(il_itemChecked) + '.Visible="1"')
			
		il_itemChecked					= -1
	
	END IF
END IF

dw_palette.Object.r_button.X		= ds_toolBar.of_getItem_rectLeft(vl_item)		- PixelsToUnits(3, XPixelsToUnits!)
dw_palette.Object.r_button.Y		= ds_toolBar.of_getItem_rectTop(vl_item)		- PixelsToUnits(3, YPixelsToUnits!)
dw_palette.Object.r_button.Width	= ds_toolBar.of_getItem_rectWidth(vl_item)	+ PixelsToUnits(7, XPixelsToUnits!)
dw_palette.Object.r_button.Height													&
											= ds_toolBar.of_getItem_rectHeight(vl_item)	+ PixelsToUnits(2, YPixelsToUnits!)
											
//	If we are showing the highlight over a checked item, then make sure
//	the checked indicator is hidden
IF of_isChecked(vl_item) THEN
			
	dw_palette.Modify('r_' + ds_toolBar.of_getItem_objectName(il_itemChecked) + '.Visible="0"')
			
	il_itemChecked						= vl_item
			
END IF

Return(of_highLight(VISIBLEMODE))
end function

private subroutine of_popmenu_dropdown ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Boolean									lb_showMenu			= FALSE

m_toolBar_popMenu						lm_dropDown
lm_dropDown								= CREATE m_toolBar_popMenu
		
Long										ll_item, ll_itemMenu = 0
		
FOR ll_item = 1 TO ds_toolBar.RowCount()
		
	IF NOT ds_toolBar.of_getItem_visible(ll_item) THEN CONTINUE

	IF ds_toolBar.of_getItem_displayInMenu(ll_item) THEN
				
		IF NOT ds_toolBar.of_getItem_position(ll_item) = LEFT THEN CONTINUE
				
		ll_itemMenu ++
				
		lm_dropDown.Item[ll_itemMenu]						= CREATE m_toolBar_popMenu
				
		IF ds_toolBar.of_getItem_separator(ll_item) THEN
			lm_dropDown.Item[ll_itemMenu].Text			= '-'
		ELSE
					
			lm_dropDown.Item[ll_itemMenu].DYNAMIC FUNCTION mf_setParent(this)
					
			lm_dropDown.Item[ll_itemMenu].Text			= ds_toolBar.of_getItem_text(ll_item)
			lm_dropDown.Item[ll_itemMenu].Enabled		= ds_toolBar.of_getItem_enabled(ll_item)
			lm_dropDown.Item[ll_itemMenu].MenuImage	= ds_toolBar.of_getItem_image(ll_item)
			lm_dropDown.Item[ll_itemMenu].Checked		= ds_toolBar.of_getItem_checked(ll_item)
			
			lb_showMenu											= TRUE
			
		END IF
				
	END IF
			
NEXT
		
Boolean									lb_firstItem		= TRUE
		
FOR ll_item = ds_toolBar.RowCount() TO 1 STEP -1 
		
	IF NOT ds_toolBar.of_getItem_visible(ll_item) THEN CONTINUE
			
	IF ds_toolBar.of_getItem_displayInMenu(ll_item) THEN
				
		IF NOT ds_toolBar.of_getItem_position(ll_item) = RIGHT THEN CONTINUE
		
		IF lb_firstItem THEN

			ll_itemMenu ++
				
			lm_dropDown.Item[ll_itemMenu]					= CREATE m_toolBar_popMenu
			lm_dropDown.Item[ll_itemMenu].Text			= '-'

			lb_firstitem										= FALSE
					
		END IF
				
		ll_itemMenu ++
				
		lm_dropDown.Item[ll_itemMenu]						= CREATE m_toolBar_popMenu
				
		IF ds_toolBar.of_getItem_separator(ll_item) THEN
			lm_dropDown.Item[ll_itemMenu].Text			= '-'
		ELSE
					
			lm_dropDown.Item[ll_itemMenu].DYNAMIC FUNCTION mf_setParent(this)
					
			lm_dropDown.Item[ll_itemMenu].Text			= ds_toolBar.of_getItem_text(ll_item)
			lm_dropDown.Item[ll_itemMenu].Enabled		= ds_toolBar.of_getItem_enabled(ll_item)
			lm_dropDown.Item[ll_itemMenu].MenuImage	= ds_toolBar.of_getItem_image(ll_item)
			lm_dropDown.Item[ll_itemMenu].Checked		= ds_toolBar.of_getItem_checked(ll_item)
			
			lb_showMenu											= TRUE

		END IF
				
	END IF
			
NEXT

IF lb_showMenu THEN
	
	Long									ll_itemMenus
	ll_itemMenus						= UpperBound(lm_DropDown.Item[])
	
	//	Get rid of leading separators
	FOR ll_itemMenu = 1 TO ll_itemMenus
		IF lm_dropDown.Item[ll_itemMenu].Text = '-' THEN
			lm_dropDown.Item[ll_itemMenu].Visible		= FALSE
		ELSE
			EXIT
		END IF
	NEXT
	
	//	Get rid of trailing separators
	FOR ll_itemMenu = ll_itemMenus TO 1 STEP -1
		IF lm_dropDown.Item[ll_itemMenu].Text = '-' THEN
			lm_dropDown.Item[ll_itemMenu].Visible		= FALSE
		ELSE
			EXIT
		END IF
	NEXT
	
	Boolean								lb_isSeparated		= FALSE
	
	//	Get rid of consecutive separators
	FOR ll_itemMenu = 1 TO ll_itemMenus
		IF lm_dropDown.Item[ll_itemMenu].Text = '-' THEN
			
			IF lb_isSeparated THEN
				lm_dropDown.Item[ll_itemMenu].Visible	= FALSE
			END IF
			
			lb_isSeparated				= TRUE
			
		ELSE
			lb_isSeparated				= FALSE
		END IF
	NEXT

	Long									ll_ptrX,	ll_ptrY
	
	ll_ptrX								= dw_palette.PointerX()
	ll_ptrY								= dw_palette.PointerY()
	
	Long									ll_xOffSet
	ll_xOffSet							= ll_ptrX - ds_toolBar.of_getItem_RectLeft(1) + PixelsToUnits(2, XPixelsToUnits!)

	Long									ll_yOffSet
	ll_yOffSet							= (ds_toolBar.of_getItem_rectTop(1) + ds_toolBar.of_getItem_RectHeight(1)) - ll_ptrY

	lm_dropDown.mf_popMenu(this, ll_xOffSet * -1, ll_yOffSet)
		
END IF
	
DESTROY lm_dropDown

RETURN
end subroutine

protected function integer of_keydown (keycode vkc_key, unsignedinteger vui_keyflags);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

//invo_dwGUI.of_locateToolTips(invo_dwGUI.of_getDesktopWindow())
//
//IF ds_toolBar.of_PBVersion() >= 11.5 THEN
//	
//	Boolean								lb_enabled
//	lb_enabled							= Long(dw_palette.Describe('p_save_2.ToolTip.Enabled')) = 1
//
//	IF lb_enabled THEN
//		dw_palette.Modify('p_save_2.ToolTip.Enabled="0"')
//		dw_palette.Modify('p_save_2.ToolTip.Enabled="1"')
//	END IF
//
//END IF

Long										ll_startX,		ll_endX
Long										ll_cursorX,		ll_pointerX,	ll_offSetX
Long										ll_cursorY
Long										ll_itemMove

Long										ll_item
ll_item									= of_locateItem()
	
IF vkc_key = keySpaceBar! THEN
	IF NOT IsNull(ll_item) THEN of_clickButton(ll_item)
ELSEIF vkc_key = keyLeftArrow! THEN
	IF NOT isNull(ll_item) THEN
		
		ll_itemMove						= ds_toolBar.of_locateItem_previous(ll_item)
		
		IF NOT isNull(ll_itemMove) THEN
			
			IF ib_trackMouseEvent THEN
				
				ll_pointerX				= dw_palette.PointerX()
				ll_startX				= Long(dw_palette.Describe('r_button.X'))

				invo_dwGUI.of_getCursorPos(ll_cursorX, ll_cursorY)
				
			END IF

			of_drawButton(ll_itemMove)

			IF ib_trackMouseEvent THEN
				
				ll_endX					= Long(dw_palette.Describe('r_button.X'))
				ll_offSetX				= (ll_pointerX - ll_startX) + (ll_startX - ll_endX) - PixelsToUnits(4, XPixelsToUnits!)
				
				invo_dwGUI.of_setCursorPos(ll_cursorX - UnitsToPixels(ll_offSetX, XUnitsToPixels!), ll_cursorY)
	
			END IF
			
		END IF
		
	END IF
ELSEIF vkc_key = keyRightArrow! THEN
	IF NOT isNull(ll_item) THEN
		
		ll_itemMove						= ds_toolBar.of_locateItem_next(ll_item)
		
		IF NOT isNull(ll_itemMove) THEN
			
			IF ib_trackMouseEvent THEN
				
				ll_pointerX				= dw_palette.PointerX()
				ll_startX				= Long(dw_palette.Describe('r_button.X'))

				invo_dwGUI.of_getCursorPos(ll_cursorX, ll_cursorY)
				
			END IF

			of_drawButton(ll_itemMove)

			IF ib_trackMouseEvent THEN
				
				ll_endX					= Long(dw_palette.Describe('r_button.X'))
				ll_offSetX				= (ll_startX - ll_pointerX) + (ll_endX - ll_startX) + PixelsToUnits(4, XPixelsToUnits!)
				
				invo_dwGUI.of_setCursorPos(ll_cursorX + UnitsToPixels(ll_offSetX, XUnitsToPixels!), ll_cursorY)
	
			END IF
			
		END IF
		
	END IF
ELSEIF vkc_key = keyTab! THEN
	IF vui_keyFlags = 1 THEN
	ELSE
	END IF
END IF

Return(SUCCESS)
end function

public function integer of_disabletext ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_itemCurrent
ll_itemCurrent							= of_locateItem()

Long										ll_item

FOR ll_item = 2 TO ds_toolBar.RowCount()
	
	IF isNull(ds_toolBar.of_getItem_image(ll_item)) OR Trim(ds_toolBar.of_getItem_image(ll_item)) = '' THEN
		ds_toolBar.of_setItem_displayText(ll_item, TRUE)
	ELSE
		ds_toolBar.of_setItem_displayText(ll_item, FALSE)
	END IF
	
	of_initializeItemSize(ll_item)
	
NEXT

ib_displayText							= FALSE

of_update()
of_drawButton(ll_itemCurrent)

Return(SUCCESS)
end function

public function integer of_enabletext ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_itemCurrent
ll_itemCurrent							= of_locateItem()

Long										ll_item

FOR ll_item = 2 TO ds_toolBar.RowCount()
	
	ds_toolBar.of_setItem_displayText(ll_item, TRUE)
	
	of_initializeItemSize(ll_item)
	
NEXT

ib_displayText							= TRUE

of_update()
of_drawButton(ll_itemCurrent)

Return(SUCCESS)
end function

public function integer of_clickitem (string vs_button);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_Return	= PREVENT

IF of_isVisible(vs_button) AND of_isEnabled(vs_button) THEN
	
	ll_Return							= TRIGGER EVENT ue_itemClicking(vs_Button)
		
	IF IsNull(ll_Return) THEN ll_Return = ALLOW
			
	IF ll_Return = ALLOW THEN 
		EVENT ue_itemClicked(vs_Button)
	END IF

ELSE
	MessageBox('ToolBar Error', 'ToolBar option (' + vs_button + ') is not currently available.')
END IF

Return(ll_Return)
end function

public function integer of_clickitem (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF isNull(vl_item) THEN Return(PREVENT)

IF vl_item <= 0 OR vl_item > ds_toolBar.RowCount() THEN Return(PREVENT)

Return(of_clickItem(ds_toolBar.of_getItem_text(vl_item)))
end function

public function long of_clickbutton (string vs_button);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_clickItem(vs_button))
end function

public function long of_clickbutton (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_clickItem(vl_item))
end function

public function long of_additem (string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItem(vs_text, '', vs_text, LEFT))
end function

public function long of_additem (string vs_text, integer vi_position);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItem(vs_text, '', vs_text, vi_position))
end function

public function string of_gettext (string vs_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_getText(of_locateItem(vs_item)))
end function

public function long of_additems (string vs_text[]);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item

Long										li_position[]
String									ls_image[],		ls_toolTip[]

FOR ll_item = 1 TO UpperBound(vs_text[])
	li_position[ll_item]				= LEFT
	ls_image[ll_item]					= ''
	ls_toolTip[ll_item]				= ''
NEXT

Return(of_addItems(vs_text[], ls_image[], ls_toolTip[], li_position[]))
end function

public function long of_additems (string vs_text[], integer vi_position[]);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item

String									ls_image[],		ls_toolTip[]

FOR ll_item = 1 TO UpperBound(vs_text[])
	ls_image[ll_item]					= ''
	ls_toolTip[ll_item]				= ''
NEXT

Return(of_addItems(vs_text[], ls_image[], ls_toolTip[], vi_position[]))
end function

public function long of_additems (string vs_text[], string vs_image[], integer vi_position[]);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
String									ls_toolTip[]

FOR ll_item = 1 TO UpperBound(vs_text[])
	ls_toolTip[ll_item]				= ''
NEXT

Return(of_addItems(vs_text[], vs_image[], ls_toolTip[], vi_position[]))
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

Return(Long(Round(Double(vi_fontsize) * Double(6.4) + Double(0.5), 0)))
end function

public function long of_locateitem (string vs_text);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(ds_toolBar.of_locateItem_text(vs_text))
end function

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
			IF ds_toolBar.of_PBVersion() >= 11.5 THEN
				ll_color					= invo_color.of_activeCaption()
			ELSE
				ll_color					= invo_color.of_menuBar()
			END IF
		END IF
	CASE LOSEFOCUS
		IF #SolidBackGround THEN
			ll_color						= invo_color.of_menuBar()
		ELSE
			IF ds_toolBar.of_PBVersion() >= 11.5 THEN
				ll_color					= invo_color.of_inactiveCaption()
			ELSE
				ll_color					= invo_color.of_menuBar()
			END IF
		END IF
	CASE TOOLBAR
		IF #SolidBackGround THEN
			ll_color						= invo_color.of_menuBar()
		ELSE
			IF ds_toolBar.of_PBVersion() >= 11.5 THEN
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

private subroutine of_broadcast_showtext (boolean vb_showtext);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

//	This routine notifies all u_cst_toolBar objects to turn on/off their text

Long										ll_toolbar,	ll_toolBars
ll_toolBars								= upperBound(suo_toolBar[])

FOR ll_toolBar = 1 TO ll_toolBars
	
	IF NOT IsValid(suo_toolBar[ll_toolBar]) THEN CONTINUE

	IF vb_showText THEN
		suo_toolBar[ll_toolBar].of_enableText()
	ELSE
		suo_toolBar[ll_toolBar].of_disableText()
	END IF
	
NEXT

RETURN
end subroutine

private subroutine of_broadcast_showtooltips (boolean vb_showtips);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

//	This routine notifies all u_cst_toolBar objects to turn on/off their toolTips

Long										ll_toolbar,	ll_toolBars
ll_toolBars								= upperBound(suo_toolBar[])

FOR ll_toolBar = 1 TO ll_toolBars
	
	IF NOT IsValid(suo_toolBar[ll_toolBar]) THEN CONTINUE

	IF vb_showTips THEN
		suo_toolBar[ll_toolBar].of_enableToolTips()
	ELSE
		suo_toolBar[ll_toolBar].of_disableToolTips()
	END IF
	
NEXT

RETURN
end subroutine

public function long of_addbutton (string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItem(vs_text))
end function

public function long of_addbutton (string vs_text, integer vi_position);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItem(vs_text, vi_position))
end function

public function long of_addbutton (string vs_text, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItem(vs_text, vs_image))
end function

public function long of_addbutton (string vs_text, string vs_image, integer vi_position);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItem(vs_text, vs_image, vi_position))
end function

public function long of_addbutton (string vs_text, string vs_image, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItem(vs_text, vs_image, vs_toolTip))
end function

public function long of_addbutton (string vs_text, string vs_image, string vs_tooltip, integer vi_position);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItem(vs_text, vs_image, vs_toolTip, vi_position))
end function

public function long of_addbuttons (string vs_text[], string vs_image[], string vs_tooltip[], integer vi_position[]);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItems(vs_text[], vs_image[], vs_toolTip[], vi_position[]))
end function

public function long of_addbuttons (string vs_text[], string vs_image[], string vs_tooltip[]);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItems(vs_text[], vs_image[], vs_toolTip[]))
end function

public function long of_addbuttons (string vs_text[], string vs_image[], integer vi_position[]);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItems(vs_text[], vs_image[], vi_position[]))
end function

public function long of_addbuttons (string vs_text[], string vs_image[]);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItems(vs_text[], vs_image[]))
end function

public function long of_addbuttons (string vs_text[], integer vi_position[]);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItems(vs_text[], vi_position[]))
end function

public function long of_addbuttons (string vs_text[]);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_addItems(vs_text[]))
end function

private subroutine of_destroyitem (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_describe

ds_toolBar.of_setItem_displayInMenu(vl_item, TRUE)
	
IF ds_toolBar.of_getItem_separator(vl_item) THEN
		
	ls_describe							= Trim(dw_palette.Describe('l_' + ds_toolBar.of_getItem_objectName(vl_item) + '_a.X1'))

	IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
			
		dw_palette.Modify('DESTROY l_' + ds_toolBar.of_getItem_objectName(vl_item) + '_a')
		dw_palette.Modify('DESTROY l_' + ds_toolBar.of_getItem_objectName(vl_item) + '_b')
			
	END IF
		
ELSE
	
	ls_describe							= Trim(dw_palette.Describe('p_' + ds_toolBar.of_getItem_objectName(vl_item) + '.X'))
		
	IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
		dw_palette.Modify('DESTROY p_' + ds_toolBar.of_getItem_objectName(vl_item))
	END IF
	
	ls_describe							= Trim(dw_palette.Describe('t_' + ds_toolBar.of_getItem_objectName(vl_item) + '.X'))
		
	IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
		dw_palette.Modify('DESTROY t_' + ds_toolBar.of_getItem_objectName(vl_item))
	END IF

	ls_describe							= Trim(dw_palette.Describe('b_' + ds_toolBar.of_getItem_objectName(vl_item) + '.X'))
		
	IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
		dw_palette.Modify('DESTROY b_' + ds_toolBar.of_getItem_objectName(vl_item))
	END IF

	ls_describe							= Trim(dw_palette.Describe('r_' + ds_toolBar.of_getItem_objectName(vl_item) + '.X'))

	IF ls_describe <> '!' AND ls_describe <> '?' AND ls_describe <> '' THEN
		dw_palette.Modify('DESTROY r_' + ds_toolBar.of_getItem_objectName(vl_item))
	END IF

END IF

ds_toolBar.of_setItem_tabSequence(vl_item, 0)

RETURN
end subroutine

private function long of_locateitem ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item
setNull(ll_item)

String									ls_describe
ls_describe								= dw_palette.Describe('r_button.X')

IF ls_describe = '?' OR ls_describe = '!' OR ls_describe = '' THEN Return(ll_item)

IF Long(dw_palette.Object.r_button.Visible) = 0 THEN Return(ll_item)

Long										ll_buttonRight
ll_buttonRight							= Long(dw_palette.Object.r_button.X) + Long(dw_palette.Object.r_button.Width)

String									ls_find
ls_find									= 'visible="Y" AND '																					&
											+ 'rectLeft>=' + String(dw_palette.Object.r_button.X) + ' AND '						&
											+ '(rectLeft + rectWidth)<=' + String(ll_buttonRight)

ll_item									= ds_toolBar.Find(ls_find, 1, ds_toolBar.rowCount())

CHOOSE CASE ll_item
	CASE 0
		setNull(ll_item)
	CASE -1
		setNull(ll_item)
		MessageBox('Programmer Error', 'Syntax error in find clause: ' + ls_find + '.')
END CHOOSE

Return(ll_item)
end function

on u_cst_toolbar.create
this.st_toolbar=create st_toolbar
this.dw_palette=create dw_palette
this.r_border=create r_border
this.ds_toolbar=create ds_toolbar
this.Control[]={this.st_toolbar,&
this.dw_palette,&
this.r_border}
end on

on u_cst_toolbar.destroy
destroy(this.st_toolbar)
destroy(this.dw_palette)
destroy(this.r_border)
destroy(this.ds_toolbar)
end on

event constructor;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_correct_size()

IF GetApplication().ToolBarText THEN
	of_enableText()
ELSE
	of_disableText()
END IF

//of_DisplayTextUnderImage(GetApplication().ToolbarText AND textUnderImage)

IF GetApplication().ToolBarTips THEN
	of_EnableToolTips()
ELSE
	of_DisableToolTips()
END IF

IF #toolTipIsBubble THEN
	ii_toolTipIsBubble				= 1
ELSE
	ii_toolTipIsBubble				= 0
END IF

setNull(is_lButtonDown)

r_border.Move(0, 0)
r_border.Resize(Width, Height)

dw_palette.Move(PixelsToUnits(1, XPixelsToUnits!), PixelsToUnits(1, YPixelsToUnits!))
dw_palette.Resize(Width - PixelsToUnits(2, XPixelsToUnits!), Height - PixelsToUnits(2, YPixelsToUnits!))

r_border.LineColor					= of_getColor(THREEDDKSHADOW)
r_border.Visible						= #DisplayBorder

IF #SolidBackGround THEN
	
	dw_palette.Modify('DataWindow.' + #band + '.Color="' + String(of_getColor(TOOLBAR)) + '" ')
							
	IF ds_toolBar.of_PBVersion() >= 11.5 THEN
		
		dw_palette.Modify('DataWindow.' + #band + '.BrushMode="0" ' +																		&
								'DataWindow.' + #band + '.Gradient.Color="' + String(of_getColor(TOOLBAR)) + '" ' +					&
								'DataWindow.' + #band + '.gradient.transparency="0" ' +														&
								'DataWindow.' + #band + '.gradient.angle="0" ' +																&
								'DataWindow.' + #band + '.gradient.repetition.mode="0" ' +													&
								'DataWindow.' + #band + '.gradient.repetition.count="0" ' +													&
								'DataWindow.' + #band + '.gradient.repetition.length="100" ' +												&
								'DataWindow.' + #band + '.gradient.focus="0" ' +																&
								'DataWindow.' + #band + '.gradient.scale="100" ' +																&
								'DataWindow.' + #band + '.gradient.spread="100" ')
	END IF
							
ELSE
	
	IF ds_toolBar.of_PBVersion() >= 11.5 THEN
		
		dw_palette.Modify('DataWindow.' + #band + '.Color="' + String(of_getColor(TOOLBAR)) + '" ')
	
		dw_palette.Modify('DataWindow.' + #band + '.BrushMode="2" ' +																		&
								'DataWindow.' + #band + '.Gradient.Color="' + String(of_getColor(GRADIENT)) + '" ' +				&
								'DataWindow.' + #band + '.gradient.transparency="0" ' +														&
								'DataWindow.' + #band + '.gradient.angle="0" ' +																&
								'DataWindow.' + #band + '.gradient.repetition.mode="0" ' +													&
								'DataWindow.' + #band + '.gradient.repetition.count="0" ' +													&
								'DataWindow.' + #band + '.gradient.repetition.length="100" ' +												&
								'DataWindow.' + #band + '.gradient.focus="0" ' +																&
								'DataWindow.' + #band + '.gradient.scale="100" ' +																&
								'DataWindow.' + #band + '.gradient.spread="100" ')
	ELSE
		dw_palette.Modify('DataWindow.' + #band + '.Color="' + String(of_getColor(TOOLBAR)) + '" ')
	END IF
							
END IF

dw_palette.Modify('DataWindow.' + #band + '.Height="104"')

dw_palette.Modify('CREATE rectangle(band=' + #band + ' ' +																					&
						'x="5" y="4" height="88" width="224" name=r_button ' +																&
						'visible="0" brush.color="' +  String(of_getColor(INFOBACKGROUND)) + '" ' +									&
						'pen.style="0" pen.width="5" pen.color="' +  String(of_getColor(WINDOWTEXT)) + '" ' +						&
						'background.mode="2" background.color="' +  String(of_getColor(INFOBACKGROUND)) + '") ')

IF ds_toolBar.of_PBVersion() >= 11.5 THEN

	dw_palette.Modify('r_button.brush.hatch="8"')

	dw_palette.Modify('r_button.background.transparency="10" ' +																			&
							'r_button.background.gradient.color="' +  String(of_getColor(INFOBACKGROUND)) + '" ' +					&
							'r_button.background.gradient.transparency="10" ' +																&
							'r_button.background.gradient.angle="0" ' +																			&
							'r_button.background.brushmode="2" ' +																					&
							'r_button.background.gradient.repetition.mode="0" ' +																&
							'r_button.background.gradient.repetition.count="0" ' +															&
							'r_button.background.gradient.repetition.length="100" ' +														&
							'r_button.background.gradient.focus="0" ' +																			&
							'r_button.background.gradient.scale="100" ' +																		&
							'r_button.background.gradient.spread="100" ' +																		&
							'r_button.tooltip.backcolor="' +  String(of_getColor(INFOBACKGROUND)) + '" ' +							&
							'r_button.tooltip.delay.initial="' + String(#ToolTipDelayInitial) + '" ' +									&
							'r_button.tooltip.delay.visible="' + String(#ToolTipDelayVisible) + '" ' +									&
							'r_button.tooltip.enabled="1" ' +																						&
							'r_button.tooltip.hasclosebutton="0" ' +																				&
							'r_button.tooltip.icon="0" ' +																							&
							'r_button.tooltip.isbubble="' + String(ii_toolTipIsBubble) + '" ' +											&
							'r_button.tooltip.maxwidth="0" ' +																						&
							'r_button.tooltip.textcolor="' +  String(of_getColor(INFOTEXT)) + '" ' +									&
							'r_button.tooltip.transparency="0"')
ELSE
	dw_palette.Modify('r_button.brush.hatch="7"')
END IF

dw_palette.SetPosition('r_button', #band, FALSE)

of_highLight(HIGHLIGHT)
of_highLight(INVISIBLE)

st_toolBar.FaceName					= #FontFace
st_toolBar.TextSize					= #FontSize * -1

of_size()
of_addDropMenu()

Long										ll_index

Long										ll_last
ll_last									= UpperBound(suo_toolBar[])

FOR ll_index = 1 TO ll_last

	IF isValid(suo_toolBar[ll_index]) THEN CONTINUE
	
	EXIT
	
NEXT

suo_toolBar[ll_index]				= this

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
ll_last									= UpperBound(suo_toolBar[])

FOR ll_index = 1 TO ll_last

	IF isValid(suo_toolBar[ll_index]) THEN CONTINUE
	
	IF suo_toolBar[ll_index] = this THEN
		
		setNull(suo_toolBar[ll_index])
		
		EXIT
		
	END IF
	
NEXT
end event

type st_toolbar from statictext within u_cst_toolbar
integer width = 10002
integer height = 10000
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 134217742
long backcolor = 134217741
string text = "ToolBar"
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

type dw_palette from datawindow within u_cst_toolbar
event ue_dwnlbuttonup pbm_dwnlbuttonup
event ue_dwnmousemove pbm_dwnmousemove
event ue_post_getfocus ( long vl_tabbed )
event ue_dwnbacktabout pbm_dwnbacktabout
event ue_dwnkey pbm_dwnkey
event ue_syscommand pbm_syscommand
integer x = 5
integer y = 4
integer taborder = 10
string dataobject = "d_toolbar_palette"
boolean border = false
end type

event ue_dwnlbuttonup;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_highLight(HIGHLIGHT)

IF dwo.Name = is_lButtonDown THEN

	Long									ll_item
	ll_item								= ds_toolBar.of_locateItem_objectName(Mid(dwo.Name, 3))
		
	IF NOT isnull(ll_item) THEN
		IF of_isVisible(ll_item) AND of_isEnabled(ll_item) THEN
			
			String						ls_text
			ls_text						= ds_toolBar.of_getItem_text(ll_item)
			
			String						ls_name
			
			IF isNull(ls_text) OR Trim(ls_text) = '' THEN
				ls_name					= Mid(dwo.Name, 3)
			ELSE
				ls_name					= ls_text
			END IF
			
			Long							ll_return
			ll_return					= parent.EVENT ue_itemClicking(ls_name)
				
			IF isNull(ll_return) THEN ll_return = ALLOW
				
			IF ll_return = ALLOW THEN
				parent.EVENT ue_itemClicked(ls_name)
			END IF
			
		END IF
	END IF
		
END IF
	
setNull(is_lButtonDown)
end event

event ue_dwnmousemove;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_item

IF isNull(is_lButtonDown) THEN
	CHOOSE CASE String(dwo.Type)
			
		CASE 'text',	'bitmap'
			
			ll_item						= ds_toolBar.of_locateItem_objectName(Mid(dwo.Name, 3))
			
			IF isNull(ll_item) THEN
				of_highLight(INVISIBLE)
			ELSE
				IF NOT of_isEnabled(ll_item) THEN
					of_highLight(INVISIBLE)
				ELSE
					of_drawButton(ll_item)
				END IF
			END IF
		
		CASE ELSE
			of_highLight(INVISIBLE)
	END CHOOSE
ELSE
	IF dwo.Name = is_lButtonDown THEN
		of_highLight(SELECTMODE)
	ELSE
		of_highLight(HIGHLIGHT)
	END IF
END IF

IF NOT ib_trackMouseEvent THEN
	
	ib_trackMouseEvent				= invo_dwGUI.of_trackMouseEvent(handle(this), invo_dwGUI.TME_LEAVE)

	Modify('DataWindow.' + #band + '.Color="' + String(of_getColor(TOOLBAR)) + '" ')

	of_broadCast_invisible(parent)
	
END IF
end event

event ue_post_getfocus(long vl_tabbed);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF ib_trackMouseEvent THEN
ELSE
	CHOOSE CASE vl_tabbed
		CASE TAB, 0
			
			of_drawButton(ds_toolBar.of_locateItem_first())

		CASE BACKTAB
			
			of_drawButton(ds_toolBar.of_locateItem_last())
			
		CASE ELSE
	END CHOOSE
END IF
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

event constructor;call super::constructor;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
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

BringToTop								= TRUE
end event

event clicked;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

CHOOSE CASE dwo.Type
		
	CASE 'line'

	CASE 'datawindow'
	
	CASE 'text',	'bitmap'
	
		of_highLight(SELECTMODE)
		
		IF NOT isNull(ds_toolBar.of_locateItem_objectName(Mid(dwo.Name, 3))) THEN
			is_lButtonDown						= dwo.Name
		ELSE
			setNull(is_lButtonDown)
		END IF
		
END CHOOSE
end event

event losefocus;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

of_highLight(INVISIBLE)

Modify('DataWindow.' + #band + '.Color="' + String(of_getColor(LOSEFOCUS)) + '" ')

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
	CASE invo_dwGUI.WM_MOUSELEAVE
		
		ib_trackMouseEvent			= NOT (of_highLight(INVISIBLE) = SUCCESS)
		
		Modify('DataWindow.' + #band + '.Color="' + String(of_getColor(LOSEFOCUS)) + '" ')

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

Modify('DataWindow.' + #band + '.Color="' + String(of_getColor(GETFOCUS)) + '" ')

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

m_toolBar_context						lm_context
lm_context								= CREATE m_toolbar_context

lm_context.mf_setParent(parent)

CHOOSE CASE #BitMapSize
	CASE 16
		lm_context.m_size.m_small.Checked											&
											= TRUE
	CASE 24
		lm_context.m_size.m_medium.Checked											&
											= TRUE
	CASE 32
		lm_context.m_size.m_large.Checked											&
											= TRUE
	CASE 48
		lm_context.m_size.m_xLarge.Checked											&
											= TRUE
	CASE ELSE
		MessageBox('ToolBar Error', 'Invalid BitMapSize (' + String(#BitMapSize) + ') defined.')
END CHOOSE

lm_context.m_showText.Checked				= of_displayText()
lm_context.m_showToolTips.Checked		= of_displayToolTips()

lm_context.mf_popMenu(this)
end event

event resize;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_itemCurrent
ll_itemCurrent							= of_locateItem()

of_update()
of_drawButton(ll_itemCurrent)
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

event scrollvertical;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Object.DataWindow.VerticalScrollPosition		= 0
end event

type r_border from rectangle within u_cst_toolbar
long linecolor = 134217738
integer linethickness = 4
long fillcolor = 134217752
integer width = 2651
integer height = 104
end type

type ds_toolbar from n_cst_toolbar_items within u_cst_toolbar descriptor "pb_nvo" = "true" 
end type

on ds_toolbar.create
call super::create
end on

on ds_toolbar.destroy
call super::destroy
end on

