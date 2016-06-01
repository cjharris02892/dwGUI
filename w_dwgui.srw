HA$PBExportHeader$w_dwgui.srw
forward
global type w_dwgui from window
end type
type dw_options from datawindow within w_dwgui
end type
type uo_toolbar from u_cst_toolbar within w_dwgui
end type
end forward

global type w_dwgui from window
integer width = 2775
integer height = 1648
boolean titlebar = true
string title = "DWGUI ToolBar Test"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
string icon = "AppIcon!"
boolean center = true
dw_options dw_options
uo_toolbar uo_toolbar
end type
global w_dwgui w_dwgui

type variables
Private:

	n_cst_toolBar					invo_toolBar
	
	Long								il_oldWidth				= -1
	Long								il_oldHeight			= -1
	
	Long								il_print					= -1
	
	n_cst_resize					invo_resize
end variables

on w_dwgui.create
this.dw_options=create dw_options
this.uo_toolbar=create uo_toolbar
this.Control[]={this.dw_options,&
this.uo_toolbar}
end on

on w_dwgui.destroy
destroy(this.dw_options)
destroy(this.uo_toolbar)
end on

event open;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

uo_toolbar.Resize(workSpaceWidth() - PixelsToUnits(2, XPixelsToUnits!), uo_toolbar.Height)
dw_options.Resize(workSpaceWidth() - PixelsToUnits(2, XPixelsToUnits!), workSpaceHeight() - PixelsToUnits(1, YPixelsToUnits!) - uo_toolbar.Height)

invo_resize							= CREATE n_cst_resize

invo_resize.of_setOrigSize(this.WorkSpaceWidth(), this.WorkSpaceHeight())

invo_resize.of_register(uo_toolbar, invo_resize.SCALERIGHT)
invo_resize.of_register(dw_options, invo_resize.SCALERIGHTBOTTOM)

////	Documentation example 1
//
//uo_toolbar.of_addItem('Exit', 'powerOff.bmp', 'Close the window', uo_toolbar.RIGHT)
//uo_toolbar.of_addItem('', 'open.bmp', uo_toolbar.LEFT)
//uo_toolbar.of_addItem('Save', 'save.bmp', uo_toolbar.LEFT)
//
//// Documentation example 2
//
//uo_toolbar.of_addItem('Exit', 'powerOff.bmp', 'Close the window', uo_toolbar.RIGHT)
//uo_toolbar.of_addSeparator(uo_toolbar.RIGHT)
//uo_toolbar.of_addItem('Save', 'save.bmp', uo_toolbar.RIGHT)
//uo_toolbar.of_addItem('', 'open.bmp', uo_toolbar.RIGHT)
//
//// Documentation example 3
//
//uo_toolbar.of_addItem('Open', 'open.bmp')
//uo_toolbar.of_addItem('Save', 'save.bmp')
//uo_toolbar.of_addSeparator()
//uo_toolbar.of_addItem('Print', 'print.bmp')
//uo_toolbar.of_addItem('Preview', 'preview.bmp')
//uo_toolbar.of_addItem('Exit', 'powerOff.bmp', 'Close the window', uo_toolbar.RIGHT)

uo_toolbar.of_disableUpdate()

uo_toolbar.of_addItems({ 'Open',							'Save',					&
								 uo_toolBar.SEPARATOR,		'Exit' },				&
							  { 'Open!',						'Save.bmp',				&
							    '',								'powerOff.bmp' },		&
							  { uo_toolbar.LEFT,				uo_toolBar.LEFT,		&
							    uo_toolBar.LEFT,				uo_toolbar.RIGHT })

il_print								= uo_toolbar.of_addItem('',				'Print.bmp')

uo_toolbar.of_addItem('Preview',		'Preview.bmp')

uo_toolbar.of_addSeparator()

uo_toolbar.of_addItem('Copy', 		'Copy.png')
uo_toolbar.of_addItem('Cut', 			'Cut.png')
uo_toolbar.of_addItem('Paste', 		'Paste.bmp')
uo_toolbar.of_addItem('Clear', 		'Clear.bmp')

uo_toolbar.of_addSeparator(uo_toolbar.RIGHT)

uo_toolbar.of_addItem('Text Only',	'',						uo_toolbar.RIGHT)

uo_toolbar.of_addSeparator(uo_toolbar.RIGHT)

uo_toolbar.of_addItem('Text 4',	'', 'Text 4 ToolTip',	uo_toolbar.RIGHT)
uo_toolbar.of_addItem('Text 3',									uo_toolbar.RIGHT)
uo_toolbar.of_addItem('Text 2',	'',							uo_toolbar.RIGHT)
uo_toolbar.of_addItem('Text 1',	'',							uo_toolbar.RIGHT)

uo_toolbar.of_enableUpdate()
end event

event resize;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF IsValid(invo_resize) AND windowState <> Minimized! THEN
	invo_resize.EVENT pfc_Resize (sizetype, this.WorkSpaceWidth(), this.WorkSpaceHeight())
END IF

end event

event close;IF isValid(invo_resize) THEN DESTROY invo_resize
end event

type dw_options from datawindow within w_dwgui
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
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

CHOOSE CASE dwo.Name
	CASE 'change_text'
		IF isNull(uo_toolbar.of_locateItem('Open File')) THEN
			uo_toolbar.of_setText('Open', 'Open File')
		ELSE
			uo_toolbar.of_setText('Open File', 'Open')
		END IF
	CASE 'change_image'

		Long										ll_item
		ll_item									= uo_toolBar.of_locateItem('Open')
		
		IF isNull(ll_item) THEN
			ll_item								= uo_toolBar.of_locateItem('Open File')
		END IF
		
		IF NOT isNull(ll_item) THEN
			IF data = 'N' THEN
				uo_toolBar.of_setImage(ll_item, 'Open!')
			ELSE
				uo_toolBar.of_setImage(ll_item, 'Copy.png')
			END IF
		END IF
		
	CASE 'show_open'
		uo_toolbar.of_setVisible('Open',			data = 'Y')
	CASE 'show_save'
		uo_toolbar.of_setVisible('Save',			data = 'Y')
	CASE 'show_print'
		uo_toolbar.of_setVisible(il_print,		data = 'Y')
	CASE 'show_preview'
		uo_toolbar.of_setVisible('Preview',		data = 'Y')
	CASE 'show_text_1'
		uo_toolbar.of_setVisible('Text 1',		data = 'Y')
	CASE 'show_text_2'
		uo_toolbar.of_setVisible('Text 2',		data = 'Y')
	CASE 'show_text_3'
		uo_toolbar.of_setVisible('Text 3',		data = 'Y')
	CASE 'show_text_4'
		uo_toolbar.of_setVisible('Text 4',		data = 'Y')
	CASE 'show_text_only'
		uo_toolbar.of_setVisible('Text Only',	data = 'Y')
	CASE 'show_exit'
		uo_toolbar.of_setVisible('Exit',			data = 'Y')
	CASE 'check_text_1'
		uo_toolbar.of_setChecked('Text 1',		data = 'Y')
	CASE 'check_text_2'
		uo_toolbar.of_setChecked('Text 2',		data = 'Y')
	CASE 'display_text'
		IF data = 'Y' THEN
			uo_toolbar.of_EnableText()
		ELSE
			uo_toolbar.of_DisableText()
		END IF
	CASE 'display_tooltips'
		IF data = 'Y' THEN
			uo_toolbar.of_EnableToolTips()
		ELSE
			uo_toolbar.of_DisableToolTips()
		END IF
	CASE 'enable_paste'
		uo_toolbar.of_setEnabled('Paste',		data = 'Y')
	CASE 'enable_text_1'
		uo_toolbar.of_setEnabled('Text 1',		data = 'Y')
	CASE 'enable_exit'
		uo_toolbar.of_setEnabled('Exit',			data = 'Y')
END CHOOSE

POST ResetUpdate()
end event

event constructor;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

InsertRow(0)

ResetUpdate()
end event

type uo_toolbar from u_cst_toolbar within w_dwgui
integer x = 5
integer y = 4
integer width = 2729
integer taborder = 10
end type

on uo_toolbar.destroy
call u_cst_toolbar::destroy
end on

event ue_itemclicked;call super::ue_itemclicked;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

CHOOSE CASE Lower(vs_button)
		
	CASE 'exit', 'open', 'open file'
		
		POST Close(parent)
		
//	CASE 'save'
//		
//		uo_toolBar.dw_toolBar.SaveAs('c:\temp\dw_toolBar.csv', csv!, TRUE)
		
END CHOOSE
end event

event ue_resized;call super::ue_resized;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

dw_options.Move(uo_toolbar.X, uo_toolbar.Height)
dw_options.Resize(uo_toolbar.Width, dw_options.Height - (vl_newHeight - vl_oldHeight))
end event

