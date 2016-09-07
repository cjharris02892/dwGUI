HA$PBExportHeader$w_dwgui.srw
forward
global type w_dwgui from window
end type
type st_splitbar from u_st_splitbar within w_dwgui
end type
type uo_xplistbar from u_cst_xplistbar within w_dwgui
end type
type uo_toolbar from u_cst_toolbar within w_dwgui
end type
type dw_options from datawindow within w_dwgui
end type
type uo_groupbox from u_cst_groupbox within w_dwgui
end type
end forward

global type w_dwgui from window
integer width = 3675
integer height = 1648
boolean titlebar = true
string title = "DWGUI ToolBar Test"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
string icon = "AppIcon!"
boolean center = true
st_splitbar st_splitbar
uo_xplistbar uo_xplistbar
uo_toolbar uo_toolbar
dw_options dw_options
uo_groupbox uo_groupbox
end type
global w_dwgui w_dwgui

type variables
Private:

	Long								il_oldWidth				= -1
	Long								il_oldHeight			= -1
	
	Long								il_print					= -1
	
	n_cst_resize					invo_resize
	
	n_cst_groupBox					invo_groupBox
end variables

on w_dwgui.create
this.st_splitbar=create st_splitbar
this.uo_xplistbar=create uo_xplistbar
this.uo_toolbar=create uo_toolbar
this.dw_options=create dw_options
this.uo_groupbox=create uo_groupbox
this.Control[]={this.st_splitbar,&
this.uo_xplistbar,&
this.uo_toolbar,&
this.dw_options,&
this.uo_groupbox}
end on

on w_dwgui.destroy
destroy(this.st_splitbar)
destroy(this.uo_xplistbar)
destroy(this.uo_toolbar)
destroy(this.dw_options)
destroy(this.uo_groupbox)
end on

event open;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

invo_groupBox							= CREATE n_cst_groupBox

invo_groupBox.of_register(dw_options)

invo_groupBox.of_disableUpdate()

invo_groupBox.of_addGroupBox('Show', PixelsToUnits(7, xPixelsToUnits!), 0, 500, 916)
invo_groupBox.of_addGroupBox('Enable', 1463 - PixelsToUnits(7, xPixelsToUnits!), 0, 500, 350)
invo_groupBox.of_addGroupBox('Display', 763 - PixelsToUnits(7, xPixelsToUnits!), 782 - PixelsToUnits(27, yPixelsToUnits!), 500, 240)
invo_groupBox.of_addGroupBox('Change', 1463 - PixelsToUnits(7, xPixelsToUnits!), 782 - PixelsToUnits(27, yPixelsToUnits!), 500, 240)

invo_groupBox.of_replaceGroupBox('gb_check')

invo_groupBox.of_setTitleBarAsTab('Check', TRUE)
invo_groupBox.of_setRoundGroupBox('Enable', FALSE)
invo_groupBox.of_setRoundTitleBar('Enable', FALSE)
invo_groupBox.of_setTitleBar('Display', FALSE)
invo_groupBox.of_setRoundGroupBox('Display', FALSE)
invo_groupBox.of_setTitleBar('Change', FALSE)

invo_groupBox.of_enableUpdate()

uo_toolbar.Resize(workSpaceWidth() - PixelsToUnits(2, XPixelsToUnits!) - uo_XPListBar.Width - st_splitBar.Width, uo_toolbar.Height)
uo_XPListBar.Resize(uo_XPListBar.Width, workSpaceHeight() - PixelsToUnits(2, YPixelsToUnits!))
st_splitBar.Resize(st_splitBar.Width, workSpaceHeight() - PixelsToUnits(2, YPixelsToUnits!))
uo_groupBox.Resize(workSpaceWidth() - PixelsToUnits(2, XPixelsToUnits!) - uo_XPListBar.Width - st_splitBar.Width, workSpaceHeight() - PixelsToUnits(1, YPixelsToUnits!) - uo_toolbar.Height)

dw_options.Move(uo_groupBox.X + PixelsToUnits(1, xPixelsToUnits!), uo_groupBox.Y + PixelsToUnits(18, xPixelsToUnits!))
dw_options.Resize(uo_groupBox.Width - PixelsToUnits(2, xPixelsToUnits!), uo_groupBox.Height - PixelsToUnits(19, xPixelsToUnits!))

invo_resize								= CREATE n_cst_resize

invo_resize.of_setOrigSize(this.WorkSpaceWidth(), this.WorkSpaceHeight())

invo_resize.of_register(uo_toolbar, invo_resize.SCALERIGHT)
invo_resize.of_register(dw_options, invo_resize.SCALERIGHTBOTTOM)
invo_resize.of_register(uo_XPListBar, invo_resize.SCALEBOTTOM)
invo_resize.of_register(st_splitBar, invo_resize.SCALEBOTTOM)
invo_resize.of_register(uo_groupBox, invo_resize.SCALERIGHTBOTTOM)

st_splitBar.of_register(uo_XPListBar, st_splitBar.LEFT)
st_splitBar.of_register(uo_toolbar, st_splitBar.RIGHT)
st_splitBar.of_register(dw_options, st_splitBar.RIGHT)
st_splitBar.of_register(uo_groupBox, st_splitBar.RIGHT)

////	Documentation example 1
//
//uo_toolbar.of_addButton('Exit', 'powerOff.bmp', 'Close the window', uo_toolbar.RIGHT)
//uo_toolbar.of_addButton('', 'open.bmp', uo_toolbar.LEFT)
//uo_toolbar.of_addButton('Save', 'save.bmp', uo_toolbar.LEFT)
//
//// Documentation example 2
//
//uo_toolbar.of_addButton('Exit', 'powerOff.bmp', 'Close the window', uo_toolbar.RIGHT)
//uo_toolbar.of_addSeparator(uo_toolbar.RIGHT)
//uo_toolbar.of_addButton('Save', 'save.bmp', uo_toolbar.RIGHT)
//uo_toolbar.of_addButton('', 'open.bmp', uo_toolbar.RIGHT)
//
//// Documentation example 3
//
//uo_toolbar.of_addButton('Open', 'open.bmp')
//uo_toolbar.of_addButton('Save', 'save.bmp')
//uo_toolbar.of_addSeparator()
//uo_toolbar.of_addButton('Print', 'print.bmp')
//uo_toolbar.of_addButton('Preview', 'preview.bmp')
//uo_toolbar.of_addButton('Exit', 'powerOff.bmp', 'Close the window', uo_toolbar.RIGHT)

uo_toolbar.of_disableUpdate()

uo_toolbar.of_addButtons({ 'Open',						'Save',					&
									uo_toolBar.SEPARATOR,	'Exit' },				&
								 { 'Open!',						'Save.bmp',				&
								 '',								'powerOff.bmp' },		&
								 { uo_toolbar.LEFT,			uo_toolBar.LEFT,		&
								   uo_toolBar.LEFT,			uo_toolbar.RIGHT })

il_print									= uo_toolbar.of_addButton('',				'Print.bmp')

uo_toolbar.of_addButton('Preview',		'Preview.bmp')

uo_toolbar.of_addSeparator()

uo_toolbar.of_addButton('Copy', 			'Copy.png')
uo_toolbar.of_addButton('Cut', 			'Cut.png')
uo_toolbar.of_addButton('Paste', 		'Paste.bmp')
uo_toolbar.of_addButton('Clear', 		'Clear.bmp')

uo_toolbar.of_addSeparator(uo_toolbar.RIGHT)

uo_toolbar.of_addButton('Text Only',	'',						uo_toolbar.RIGHT)

uo_toolbar.of_addSeparator(uo_toolbar.RIGHT)

uo_toolbar.of_addButton('Text 4',	'', 'Text 4 ToolTip',	uo_toolbar.RIGHT)
uo_toolbar.of_addButton('Text 3',									uo_toolbar.RIGHT)
uo_toolbar.of_addButton('Text 2',	'',							uo_toolbar.RIGHT)
uo_toolbar.of_addButton('Text 1',	'',							uo_toolbar.RIGHT)

uo_toolbar.of_enableUpdate()

Long										ll_group
ll_group									= uo_XPListBar.of_addGroup('Quotes', '', '')

uo_XPListBar.of_addLink(ll_group, 'Now is the time for all good men to come to the aid of their party', '', '')
uo_XPListBar.of_addLink(ll_group, 'Four score and seven years ago', '', '')
uo_XPListBar.of_addLink('Quotes', 'To be, or not to be, that is the question', '', '')

ll_group									= uo_XPListBar.of_addGroup('Show', '', '')

uo_XPListBar.of_addLabel(ll_group, 'Open', '', '')
uo_XPListBar.of_addLabel(ll_group, 'Save', '', '')
uo_XPlistBar.of_addSeparator(ll_group)
uo_XPListBar.of_addLabel(ll_group, 'Print', '', '')
uo_XPListBar.of_addLabel(ll_group, 'Preview', '', '')
uo_XPlistBar.of_addSeparator('Show')
uo_XPListBar.of_addLabel('Show', 'Text 1', '', '')
uo_XPListBar.of_addLabel('Show', 'Text 2', '', '')
uo_XPListBar.of_addLabel('Show', 'Text 3', '', '')
uo_XPListBar.of_addLabel('Show', 'Text 4', '', 'Text 4 ToolTip')
uo_XPlistBar.of_addSeparator(ll_group)
uo_XPListBar.of_addLabel(ll_group, 'Text Only', '', '')
uo_XPlistBar.of_addSeparator(ll_group)
uo_XPListBar.of_addLabel(ll_group, 'Exit', '', '')

ll_group									= uo_XPListBar.of_addGroup('Check', '', '')

uo_XPListBar.of_addLabel(ll_group, 'Text 1', '', '')
uo_XPListBar.of_addLabel(ll_group, 'Text 2', '', '')

ll_group									= uo_XPListBar.of_addGroup('Display', '', '')

uo_XPListBar.of_addLabel(ll_group, 'Text', '', '')
uo_XPListBar.of_addLabel(ll_group, 'ToolTips', '', '')

uo_XPListBar.of_addGroup('Enable', '', '')

uo_XPListBar.of_addLabel('Enable', 'Paste', '', '')
uo_XPListBar.of_addLabel('Enable', 'Text 1', '', '')
uo_XPListBar.of_addLabel('Enable', 'Exit', '', '')

ll_group									= uo_XPListBar.of_addGroup('Change', '', '')

uo_XPListBar.of_addLabel(ll_group, 'Open Image', '', '')
uo_XPListBar.of_addLabel(ll_group, 'Open Text', '', '')

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

IF isValid(invo_groupBox) THEN DESTROY invo_groupBox
end event

type st_splitbar from u_st_splitbar within w_dwgui
integer x = 882
integer y = 4
integer width = 23
integer height = 1536
end type

type uo_xplistbar from u_cst_xplistbar within w_dwgui
integer x = 5
integer y = 4
integer height = 1536
integer taborder = 60
end type

on uo_xplistbar.destroy
call u_cst_xplistbar::destroy
end on

event ue_itemclicked;call super::ue_itemclicked;String								ls_value

CHOOSE CASE Lower(vs_group)
		
	CASE 'quotes'
	
		CHOOSE CASE Left(Lower(vs_item), 10)
			CASE 'now is the'
				MessageBox(vs_group, 'Charles E. Weller')
			CASE 'to be, or '
				MessageBox(vs_group, "Shakespeare's Prince Hamlet")
			CASE 'four score'
				MessageBox(vs_group, 'Abraham Lincoln')
		END CHOOSE
				
	CASE 'show'
		
		CHOOSE CASE Lower(vs_item)
				
			CASE ''
				
				of_clickItem(vs_group, 'open')
				of_clickItem(vs_group, 'save')
				of_clickItem(vs_group, 'print')
				of_clickItem(vs_group, 'preview')
				of_clickItem(vs_group, 'text 1')
				of_clickItem(vs_group, 'text 2')
				of_clickItem(vs_group, 'text 3')
				of_clickItem(vs_group, 'text 4')
				of_clickItem(vs_group, 'text only')
				of_clickItem(vs_group, 'exit')
				
			CASE 'open'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'show_open')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'show_open', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.show_open, ls_value)

			CASE 'save'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'show_save')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'show_save', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.show_save, ls_value)

			CASE 'print'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'show_print')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'show_print', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.show_print, ls_value)

			CASE 'preview'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'show_preview')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'show_preview', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.show_preview, ls_value)

			CASE 'text 1'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'show_text_1')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'show_text_1', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.show_text_1, ls_value)

			CASE 'text 2'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'show_text_2')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'show_text_2', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.show_text_2, ls_value)

			CASE 'text 3'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'show_text_3')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'show_text_3', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.show_text_3, ls_value)

			CASE 'text 4'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'show_text_4')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'show_text_4', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.show_text_4, ls_value)

			CASE 'text only'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'show_text_only')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'show_text_only', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.show_text_only, ls_value)

			CASE 'exit'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'show_exit')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'show_exit', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.show_exit, ls_value)

		END CHOOSE
	
	CASE 'check'
	
		CHOOSE CASE Lower(vs_item)
				
			CASE ''
				
				of_clickItem('check', 'text 1')
				of_clickItem('check', 'text 2')
				
			CASE 'text 1'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'check_text_1')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'check_text_1', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.check_text_1, ls_value)
				
			CASE 'text 2'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'check_text_2')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'check_text_2', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.check_text_2, ls_value)

		END CHOOSE

	CASE 'display'
	
		CHOOSE CASE Lower(vs_item)
				
			CASE ''
				
				of_clickItem(vs_group, 'text')
				of_clickItem(vs_group, 'tooltips')
				
			CASE 'text'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'display_text')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'display_text', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.display_text, ls_value)
				
			CASE 'tooltips'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'display_tooltips')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'display_tooltips', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.display_tooltips, ls_value)

		END CHOOSE
		
	CASE 'enable'
		
		CHOOSE CASE Lower(vs_item)
				
			CASE ''
				
				of_clickItem(vs_group, 'Paste')
				of_clickItem(vs_group, 'Text 1')
				of_clickItem(vs_group, 'Exit')
				
			CASE 'paste'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'enable_paste')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'enable_paste', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.enable_paste, ls_value)

			CASE 'text 1'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'enable_text_1')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'enable_text_1', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.enable_text_1, ls_value)

			CASE 'exit'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'enable_exit')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'enable_exit', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.enable_exit, ls_value)

		END CHOOSE

	CASE 'change'

		CHOOSE CASE Lower(vs_item)
				
			CASE ''
				
				of_clickItem(vs_group, 'open image')
				of_clickItem(vs_group, 'open text')
				
			CASE 'open image'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'change_image')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'change_image', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.change_image, ls_value)
				
			CASE 'open text'
				
				ls_value				= dw_options.GetItemString(dw_options.GetRow(), 'change_text')
				
				IF ls_value = 'Y' THEN
					ls_value			= 'N'
				ELSE
					ls_value			= 'Y'
				END IF
				
				dw_options.SetItem(dw_options.GetRow(), 'change_text', ls_value)

				dw_options.EVENT itemchanged(dw_options.GetRow(), dw_options.Object.change_text, ls_value)

		END CHOOSE
		
END CHOOSE
end event

type uo_toolbar from u_cst_toolbar within w_dwgui
integer x = 905
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

uo_groupBox.Move(uo_toolbar.X, uo_toolbar.Height)
uo_groupBox.Resize(uo_toolbar.Width, uo_groupBox.Height - (vl_newHeight - vl_oldHeight))

//dw_options.Move(uo_toolbar.X, uo_toolbar.Height)
//dw_options.Resize(uo_toolbar.Width, dw_options.Height - (vl_newHeight - vl_oldHeight))
end event

type dw_options from datawindow within w_dwgui
event ue_dwnmousemove pbm_dwnmousemove
integer x = 1070
integer y = 252
integer width = 2222
integer height = 1216
integer taborder = 50
string title = "none"
string dataobject = "d_dwgui"
boolean hscrollbar = true
boolean vscrollbar = true
boolean border = false
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
			uo_toolbar.of_setVisible('Open File', TRUE)
			
			uo_XPListBar.of_setText('Open', 'Open File')
			uo_XPListBar.of_setVisible('Open File', TRUE)
			
		ELSE
			
			uo_toolbar.of_setText('Open File', 'Open')
			uo_toolbar.of_setVisible('Open', GetItemString(row, 'show_open') = 'Y')

			uo_XPListBar.of_setText('Open File', 'Open')
			uo_XPListBar.of_setVisible('Open', GetItemString(row, 'show_open') = 'Y')
			
		END IF
		
	CASE 'change_image'

		Long										ll_item
		ll_item									= uo_toolBar.of_locateItem('Open')
		
		IF isNull(ll_item) THEN
			ll_item								= uo_toolBar.of_locateItem('Open File')
		END IF
		
		IF NOT isNull(ll_item) THEN
			IF data = 'N' THEN
				uo_toolBar.of_setImage(ll_item, 	'Open!')
			ELSE
				uo_toolBar.of_setImage(ll_item,	'Copy.png')
			END IF
		END IF
		
		ll_item									= uo_XPListBar.of_locateItem('Open')
		
		IF isNull(ll_item) THEN
			ll_item								= uo_XPListBar.of_locateItem('Open File')
		END IF
		
		IF NOT isNull(ll_item) THEN
			IF data = 'N' THEN
				uo_XPListBar.of_setImage(ll_item, 	'Open!')
			ELSE
				uo_XPListBar.of_setImage(ll_item,	'Copy.png')
			END IF
		END IF
		
	CASE 'show_open'
		uo_toolbar.of_setVisible('Open',				data = 'Y')
		uo_XPListBar.of_setVisible('Open',			data = 'Y')
	CASE 'show_save'
		uo_toolbar.of_setVisible('Save',				data = 'Y')
		uo_XPListBar.of_setVisible('Save',			data = 'Y')
	CASE 'show_print'
		uo_toolbar.of_setVisible(il_print,			data = 'Y')
		uo_XPListBar.of_setVisible('Print',			data = 'Y')
	CASE 'show_preview'
		uo_toolbar.of_setVisible('Preview',			data = 'Y')
		uo_XPListBar.of_setVisible('Preview',		data = 'Y')
	CASE 'show_text_1'
		uo_toolbar.of_setVisible('Text 1',			data = 'Y')
		uo_XPListBar.of_setVisible('Text 1',		data = 'Y')
	CASE 'show_text_2'
		uo_toolbar.of_setVisible('Text 2',			data = 'Y')
		uo_XPListBar.of_setVisible('Text 2',		data = 'Y')
	CASE 'show_text_3'
		uo_toolbar.of_setVisible('Text 3',			data = 'Y')
		uo_XPListBar.of_setVisible('Text 3',		data = 'Y')
	CASE 'show_text_4'
		uo_toolbar.of_setVisible('Text 4',			data = 'Y')
		uo_XPListBar.of_setVisible('Text 4',		data = 'Y')
	CASE 'show_text_only'
		uo_toolbar.of_setVisible('Text Only',		data = 'Y')
		uo_XPListBar.of_setVisible('Text Only',	data = 'Y')
	CASE 'show_exit'
		uo_toolbar.of_setVisible('Exit',				data = 'Y')
		uo_XPListBar.of_setVisible('Exit',			data = 'Y')
	CASE 'check_text_1'
		uo_toolbar.of_setChecked('Text 1',			data = 'Y')
	CASE 'check_text_2'
		uo_toolbar.of_setChecked('Text 2',			data = 'Y')
	CASE 'display_text'
		IF data = 'Y' THEN
			uo_toolbar.of_EnableText()
		ELSE
			uo_toolbar.of_DisableText()
		END IF
	CASE 'display_tooltips'
		IF data = 'Y' THEN
			uo_toolbar.of_EnableToolTips()
			uo_XPListBar.of_enableToolTips()
		ELSE
			uo_toolbar.of_DisableToolTips()
			uo_XPListBar.of_disableToolTips()
		END IF
	CASE 'enable_paste'
		uo_toolbar.of_setEnabled('Paste',			data = 'Y')
		uo_XPListBar.of_setEnabled('Enable',		'Paste',		data = 'Y')
	CASE 'enable_text_1'
		uo_toolbar.of_setEnabled('Text 1',			data = 'Y')
		uo_XPListBar.of_setEnabled('Enable',		'Text 1',	data = 'Y')
		uo_XPListBar.of_setEnabled('Show',			'Text 1',	data = 'Y')
		uo_XPListBar.of_setEnabled('Check',			'Text 1',	data = 'Y')
	CASE 'enable_exit'
		uo_toolbar.of_setEnabled('Exit',				data = 'Y')
		uo_XPListBar.of_setEnabled('Enable',		'Exit',		data = 'Y')
		uo_XPListBar.of_setEnabled('Show',			'Exit',		data = 'Y')
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

event doubleclicked;uo_groupBox.of_setEnabled(NOT uo_groupBox.of_isEnabled())
end event

type uo_groupbox from u_cst_groupbox within w_dwgui
integer x = 905
integer y = 104
integer width = 2729
integer height = 1436
integer taborder = 60
string #text = "Test Settings"
boolean #centertext = true
boolean #roundgroupbox = false
boolean #roundtitlebar = false
string #picturename = "GroupBox!"
end type

on uo_groupbox.destroy
call u_cst_groupbox::destroy
end on

