HA$PBExportHeader$w_dwgui.srw
forward
global type w_dwgui from window
end type
type dw_1 from datawindow within w_dwgui
end type
type uo_1 from u_cst_toolbar within w_dwgui
end type
end forward

global type w_dwgui from window
integer width = 2775
integer height = 1648
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
uo_1 uo_1
end type
global w_dwgui w_dwgui

type variables
Private:

	Long								il_oldWidth				= -1
	Long								il_oldHeight			= -1
end variables

on w_dwgui.create
this.dw_1=create dw_1
this.uo_1=create uo_1
this.Control[]={this.dw_1,&
this.uo_1}
end on

on w_dwgui.destroy
destroy(this.dw_1)
destroy(this.uo_1)
end on

event open;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanys this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

////	Documentation example 1
//
//uo_1.of_addItem('Exit', 'powerOff.bmp', 'Close the window', uo_1.RIGHT)
//uo_1.of_addItem('', 'open.bmp', uo_1.LEFT)
//uo_1.of_addItem('Save', 'save.bmp', uo_1.LEFT)
//
//// Documentation example 2
//
//uo_1.of_addItem('Exit', 'powerOff.bmp', 'Close the window', uo_1.RIGHT)
//uo_1.of_addSeparator(uo_1.RIGHT)
//uo_1.of_addItem('Save', 'save.bmp', uo_1.RIGHT)
//uo_1.of_addItem('', 'open.bmp', uo_1.RIGHT)
//
//	Left side items are added Left to Right

uo_1.of_addItem('Open', 		'Open.bmp',			uo_1.LEFT)
uo_1.of_addItem('Save', 		'Save.bmp',			uo_1.LEFT)

uo_1.of_addSeparator()

uo_1.of_addItem('',				'Print.bmp')
uo_1.of_addItem('Preview',		'Preview.bmp')

uo_1.of_addSeparator()

uo_1.of_addItem('Copy', 		'Copy.png')
uo_1.of_addItem('Cut', 			'Cut.png')
uo_1.of_addItem('Paste', 		'Paste.bmp')
uo_1.of_addItem('Clear', 		'Clear.bmp')

uo_1.of_addSeparator()

//	Right side items are added from Right to Left

uo_1.of_addSeparator(uo_1.RIGHT)

uo_1.of_addItem('Exit', 		'powerOff.bmp',		uo_1.RIGHT)

uo_1.of_addSeparator(uo_1.RIGHT)

uo_1.of_addItem('Text Only',	'',						uo_1.RIGHT)

uo_1.of_addSeparator(uo_1.RIGHT)

uo_1.of_addItem('Text 4',	'', 'Text 4 ToolTip',	uo_1.RIGHT)
uo_1.of_addItem('Text 3',	uo_1.RIGHT)
uo_1.of_addItem('Text 2',	'',							uo_1.RIGHT)
uo_1.of_addItem('Text 1',	'',							uo_1.RIGHT)

uo_1.of_addSeparator(uo_1.RIGHT)
end event

event resize;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanys this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

IF il_oldWidth <> -1 AND il_oldHeight <> -1 THEN

	Long								ll_diffWidth,	ll_diffHeight
	
	ll_diffWidth					= newWidth - il_oldWidth
	ll_diffHeight					= newHeight - il_oldHeight
	
	uo_1.Resize(uo_1.Width + ll_diffWidth, uo_1.Height)
	dw_1.Resize(dw_1.Width + ll_diffWidth, dw_1.Height + ll_diffHeight)
	
END IF

il_oldWidth							= newWidth
il_oldHeight						= newHeight
end event

type dw_1 from datawindow within w_dwgui
integer x = 5
integer y = 104
integer width = 2729
integer height = 1436
integer taborder = 50
string title = "none"
string dataobject = "d_dwgui"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
end type

event itemchanged;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanys this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

CHOOSE CASE dwo.Name
	CASE 'show_open'
		uo_1.of_setVisible('Open',			data = 'Y')
	CASE 'show_save'
		uo_1.of_setVisible('Save',			data = 'Y')
	CASE 'show_print'
		uo_1.of_setVisible(5,				data = 'Y')
	CASE 'show_preview'
		uo_1.of_setVisible('Preview',		data = 'Y')
	CASE 'show_text_1'
		uo_1.of_setVisible('Text 1',		data = 'Y')
	CASE 'show_text_2'
		uo_1.of_setVisible('Text 2',		data = 'Y')
	CASE 'show_text_3'
		uo_1.of_setVisible('Text 3',		data = 'Y')
	CASE 'show_text_4'
		uo_1.of_setVisible('Text 4',		data = 'Y')
	CASE 'show_text_only'
		uo_1.of_setVisible('Text Only',	data = 'Y')
	CASE 'show_exit'
		uo_1.of_setVisible('Exit',			data = 'Y')
	CASE 'check_text_1'
		uo_1.of_setChecked('Text 1',		data = 'Y')
	CASE 'check_text_2'
		uo_1.of_setChecked('Text 2',		data = 'Y')
	CASE 'display_text'
		IF data = 'Y' THEN
			uo_1.of_EnableText()
		ELSE
			uo_1.of_DisableText()
		END IF
	CASE 'display_tooltips'
		IF data = 'Y' THEN
			uo_1.of_EnableToolTips()
		ELSE
			uo_1.of_DisableToolTips()
		END IF
	CASE 'enable_paste'
		uo_1.of_setEnabled('Paste',		data = 'Y')
	CASE 'enable_text_1'
		uo_1.of_setEnabled('Text 1',		data = 'Y')
	CASE 'enable_exit'
		uo_1.of_setEnabled('Exit',			data = 'Y')
END CHOOSE

POST ResetUpdate()
end event

event constructor;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanys this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

InsertRow(0)

ResetUpdate()
end event

type uo_1 from u_cst_toolbar within w_dwgui
integer x = 5
integer y = 4
integer width = 2729
integer taborder = 10
end type

on uo_1.destroy
call u_cst_toolbar::destroy
end on

event ue_itemclicked;call super::ue_itemclicked;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanys this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

CHOOSE CASE Lower(vs_button)
		
	CASE 'exit'
		
		POST Close(parent)
		
END CHOOSE
end event

event ue_resized;call super::ue_resized;Long								ll_height
ll_height						= dw_1.Height

dw_1.Move(uo_1.X, uo_1.Height)
dw_1.Resize(uo_1.Width, dw_1.Height - (vl_newHeight - vl_oldHeight))
end event

