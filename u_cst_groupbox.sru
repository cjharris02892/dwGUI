HA$PBExportHeader$u_cst_groupbox.sru
forward
global type u_cst_groupbox from userobject
end type
type dw_palette from datawindow within u_cst_groupbox
end type
type st_groupbox from statictext within u_cst_groupbox
end type
type nvo_groupbox from n_cst_groupbox within u_cst_groupbox
end type
end forward

global type u_cst_groupbox from userobject
integer width = 1307
integer height = 548
long backcolor = 553648127
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
dw_palette dw_palette
st_groupbox st_groupbox
nvo_groupbox nvo_groupbox
end type
global u_cst_groupbox u_cst_groupbox

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
	
Protected:

	String								#Text								= ''
	
	Boolean								#CenterText						= FALSE

	Boolean								#RoundGroupBox					= TRUE

	Boolean								#TitleBar						= TRUE
	Boolean								#TitleBarAsTab					= FALSE
	Boolean								#RoundTitleBar					= TRUE

	String								#FontFace						= 'Tahoma'
	Long									#FontSize						= 8

	Boolean								#Bold								= FALSE
	Boolean								#Italic							= FALSE
	Boolean								#Underline						= FALSE
	Boolean								#StrikeOut						= FALSE
	
	String								#PictureName					= ''

	Long									#BitMapSize						= 16
	
	Long									#ToolTipDelayInitial			= 1000
	Long									#ToolTipDelayVisible			= 32000
	Boolean								#ToolTipIsBubble				= TRUE
	
Private:

	CONSTANT Long						NOTAB								= 0
	CONSTANT Long						TAB								= 1
	CONSTANT Long						BACKTAB							= 2

	n_cst_dwGUI							invo_dwGUI
	n_cst_color							invo_color
	
	window								iw_parent
	userObject							iuo_parent
end variables

forward prototypes
public function integer resize (integer w, integer h)
public function integer of_update ()
public subroutine of_settext (string vs_text)
public subroutine of_setimage (string vs_image)
public subroutine of_disableupdate ()
public subroutine of_enableupdate ()
public subroutine of_settextcolor (long vl_color)
public subroutine of_settextcolor (long vl_red, integer vi_green, integer vi_blue)
public subroutine of_setbackcolor (long vl_color)
public subroutine of_setbackcolor (long vl_red, integer vi_green, integer vi_blue)
protected function long of_getcolor (string vs_color)
public subroutine of_settextbold (boolean vb_bold)
public subroutine of_settextstrikeout (boolean vb_strikeout)
public subroutine of_settextitalic (boolean vb_italic)
public subroutine of_settextalignment (integer vi_alignment)
public subroutine of_settextunderline (boolean vb_underline)
public subroutine of_setvisible (boolean vb_visible)
public function boolean of_isvisible ()
public function boolean of_isenabled ()
public subroutine of_setenabled (boolean vb_enabled)
public subroutine of_setfont (string vs_fontface, long vl_fontsize)
public subroutine of_settitlebar (boolean vb_titlebar)
public subroutine of_setroundgroupbox (boolean vb_roundgroupbox)
public subroutine of_settitlebarastab (boolean vb_titlebarastab)
public subroutine of_setroundtitlebar (boolean vb_roundtitlebar)
end prototypes

public function integer resize (integer w, integer h);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
//	This code and accompanying materials are made available under the GPLv3
//	license which accompanies this distribution and can be found at:
//
//	http://www.gnu.org/licenses/gpl-3.0.html.
//
//	Original Author:  Christopher Harris

IF isValid(iw_parent) THEN
	iw_parent.setRedraw(FALSE)
ELSE
	IF isValid(iuo_parent) THEN
		iuo_parent.setRedraw(FALSE)
	ELSE
		this.setRedraw(FALSE)
	END IF
END IF

Long										li_RC
li_RC										= Super::Resize(W, H)

dw_palette.Resize(W, H)

this.BringToTop						= FALSE

IF isValid(iw_parent) THEN
	iw_parent.setRedraw(TRUE)
ELSE
	IF isValid(iuo_parent) THEN
		iuo_parent.setRedraw(TRUE)
	ELSE
		this.setRedraw(TRUE)
	END IF
END IF

Return(li_RC)
end function

public function integer of_update ();//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
//	This code and accompanying materials are made available under the GPLv3
//	license which accompanies this distribution and can be found at:
//
//	http://www.gnu.org/licenses/gpl-3.0.html.
//
//	Original Author:  Christopher Harris

IF nvo_groupBox.of_update() = SUCCESS THEN
	this.Visible						= of_isVisible()
END IF

Return(SUCCESS)
end function

public subroutine of_settext (string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setText(1, vs_text)

RETURN
end subroutine

public subroutine of_setimage (string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setImage(1, vs_image)

RETURN
end subroutine

public subroutine of_disableupdate ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_disableUpdate()

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

nvo_groupBox.of_enableUpdate()

RETURN
end subroutine

public subroutine of_settextcolor (long vl_color);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setTextColor(1, vl_color)

RETURN
end subroutine

public subroutine of_settextcolor (long vl_red, integer vi_green, integer vi_blue);//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_red > 255 THEN
	of_setTextColor(vl_red)
ELSE
	of_setTextColor(RGB(vl_red, vi_green, vi_blue))
END IF

RETURN
end subroutine

public subroutine of_setbackcolor (long vl_color);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setBackColor(1, vl_color)

BackColor								= vl_color

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

protected function long of_getcolor (string vs_color);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(nvo_groupBox.of_getColor(vs_color))
end function

public subroutine of_settextbold (boolean vb_bold);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setTextBold(1, vb_bold)

RETURN
end subroutine

public subroutine of_settextstrikeout (boolean vb_strikeout);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setTextStrikeOut(1, vb_strikeOut)

RETURN
end subroutine

public subroutine of_settextitalic (boolean vb_italic);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setTextItalic(1, vb_italic)

RETURN
end subroutine

public subroutine of_settextalignment (integer vi_alignment);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setTextAlignment(1, vi_alignment)

RETURN
end subroutine

public subroutine of_settextunderline (boolean vb_underline);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setTextUnderline(1, vb_underline)

RETURN
end subroutine

public subroutine of_setvisible (boolean vb_visible);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setVisible(1, vb_visible)

RETURN
end subroutine

public function boolean of_isvisible ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(nvo_groupBox.of_isVisible(1))
end function

public function boolean of_isenabled ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(nvo_groupBox.of_isEnabled(1))
end function

public subroutine of_setenabled (boolean vb_enabled);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setEnabled(1, vb_enabled)

RETURN
end subroutine

public subroutine of_setfont (string vs_fontface, long vl_fontsize);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setFont(1, vs_fontFace, vl_fontSize)

RETURN
end subroutine

public subroutine of_settitlebar (boolean vb_titlebar);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setTitleBar(1, vb_titleBar)

RETURN
end subroutine

public subroutine of_setroundgroupbox (boolean vb_roundgroupbox);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setRoundGroupBox(1, vb_roundGroupBox)

RETURN
end subroutine

public subroutine of_settitlebarastab (boolean vb_titlebarastab);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setTitleBarAsTab(1, vb_titleBarAsTab)

RETURN
end subroutine

public subroutine of_setroundtitlebar (boolean vb_roundtitlebar);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

nvo_groupBox.of_setRoundTitleBar(1, vb_roundTitleBar)

RETURN
end subroutine

on u_cst_groupbox.create
this.dw_palette=create dw_palette
this.st_groupbox=create st_groupbox
this.nvo_groupbox=create nvo_groupbox
this.Control[]={this.dw_palette,&
this.st_groupbox}
end on

on u_cst_groupbox.destroy
destroy(this.dw_palette)
destroy(this.st_groupbox)
destroy(this.nvo_groupbox)
end on

event constructor;//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
//	This code and accompanying materials are made available under the GPLv3
//	license which accompanies this distribution and can be found at:
//
//	http://www.gnu.org/licenses/gpl-3.0.html.
//
//	Original Author:  Christopher Harris

//	Make sure the datawindow is top/left
dw_palette.Move(0, 0)

nvo_groupBox.of_register(dw_palette)

TabOrder									= 0

IF isValid(parent) THEN
	
	PowerObject							lpo_parent
	lpo_parent							= parent

	CHOOSE CASE TypeOf(lpo_parent)
		CASE window!
			
			iw_parent					= lpo_parent
			
//			of_setBackColor(iw_parent.BackColor)
			
		CASE userObject!
			
			iuo_parent					= lpo_parent
			
//			of_setBackColor(lw_parent.BackColor)
			
	END CHOOSE
	
END IF

of_disableUpdate()

Long										ll_item
ll_item									= nvo_groupBox.of_addGroupBox(#Text, #PictureName, '')

of_setRoundGroupBox(#RoundGroupBox)
of_setTitleBar(#TitleBar)
of_setTitleBarAsTab(#TitleBarAsTab)
of_setRoundTitleBar(#RoundTitleBar)
of_setFont(#FontFace, #FontSize)
of_setTextBold(#Bold)
of_setTextItalic(#Italic)
of_setTextUnderline(#Underline)
of_setTextStrikeOut(#StrikeOut)

IF #CenterText THEN
	of_setTextAlignment(CENTER)
ELSE
	of_setTextAlignment(LEFT)
END IF

nvo_groupBox.of_move(1, dw_palette.X, dw_palette.Y)

dw_palette.Resize(Width, Height)

of_enableUpdate()

BringToTop								= FALSE
end event

type dw_palette from datawindow within u_cst_groupbox
event ue_dwnmousemove pbm_dwnmousemove
integer width = 1298
integer height = 548
integer taborder = 10
string title = "none"
string dataobject = "d_groupBox_palette"
boolean border = false
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event resize;//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
//	This code and accompanying materials are made available under the GPLv3
//	license which accompanies this distribution and can be found at:
//
//	http://www.gnu.org/licenses/gpl-3.0.html.
//
//	Original Author:  Christopher Harris

nvo_groupBox.of_resize(1, PixelsToUnits(newWidth, xPixelsToUnits!), PixelsToUnits(newHeight, yPixelsToUnits!))

of_update()
end event

event constructor;//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
//	This code and accompanying materials are made available under the GPLv3
//	license which accompanies this distribution and can be found at:
//
//	http://www.gnu.org/licenses/gpl-3.0.html.
//
//	Original Author:  Christopher Harris

//	Make the dataWindow visible
InsertRow(0)
ResetUpdate()
end event

type st_groupbox from statictext within u_cst_groupbox
integer width = 10002
integer height = 10000
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 134217742
long backcolor = 134217741
string text = "GroupBox"
boolean focusrectangle = false
end type

event constructor;//	CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
//	This code and accompanying materials are made available under the GPLv3
//	license which accompanies this distribution and can be found at:
//
//	http://www.gnu.org/licenses/gpl-3.0.html.
//
//	Original Author:  Christopher Harris

Hide()
end event

type nvo_groupbox from n_cst_groupbox within u_cst_groupbox descriptor "pb_nvo" = "true" 
event create ( )
event destroy ( )
end type

on nvo_groupbox.create
call super::create
end on

on nvo_groupbox.destroy
call super::destroy
end on

