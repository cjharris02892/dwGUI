HA$PBExportHeader$w_dwgui.srw
forward
global type w_dwgui from window
end type
type cbx_check_displaytooltips from checkbox within w_dwgui
end type
type cbx_check_displaytext from checkbox within w_dwgui
end type
type r_1 from rectangle within w_dwgui
end type
type cbx_show_text_4 from checkbox within w_dwgui
end type
type cbx_show_text_3 from checkbox within w_dwgui
end type
type cbx_show_text_2 from checkbox within w_dwgui
end type
type cbx_show_text_1 from checkbox within w_dwgui
end type
type cbx_enable_paste from checkbox within w_dwgui
end type
type cbx_enabled_exit from checkbox within w_dwgui
end type
type cbx_check_text_2 from checkbox within w_dwgui
end type
type cbx_check_text_1 from checkbox within w_dwgui
end type
type cbx_show_text_only from checkbox within w_dwgui
end type
type cbx_show_exit from checkbox within w_dwgui
end type
type cbx_show_open from checkbox within w_dwgui
end type
type cbx_show_save from checkbox within w_dwgui
end type
type cbx_show_preview from checkbox within w_dwgui
end type
type cbx_show_print from checkbox within w_dwgui
end type
type uo_1 from u_cst_toolbar within w_dwgui
end type
type cbx_enable_text_1 from checkbox within w_dwgui
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
cbx_check_displaytooltips cbx_check_displaytooltips
cbx_check_displaytext cbx_check_displaytext
r_1 r_1
cbx_show_text_4 cbx_show_text_4
cbx_show_text_3 cbx_show_text_3
cbx_show_text_2 cbx_show_text_2
cbx_show_text_1 cbx_show_text_1
cbx_enable_paste cbx_enable_paste
cbx_enabled_exit cbx_enabled_exit
cbx_check_text_2 cbx_check_text_2
cbx_check_text_1 cbx_check_text_1
cbx_show_text_only cbx_show_text_only
cbx_show_exit cbx_show_exit
cbx_show_open cbx_show_open
cbx_show_save cbx_show_save
cbx_show_preview cbx_show_preview
cbx_show_print cbx_show_print
uo_1 uo_1
cbx_enable_text_1 cbx_enable_text_1
end type
global w_dwgui w_dwgui

type variables
Private:

	Long								il_oldWidth				= -1
	Long								il_oldHeight			= -1
end variables

on w_dwgui.create
this.cbx_check_displaytooltips=create cbx_check_displaytooltips
this.cbx_check_displaytext=create cbx_check_displaytext
this.r_1=create r_1
this.cbx_show_text_4=create cbx_show_text_4
this.cbx_show_text_3=create cbx_show_text_3
this.cbx_show_text_2=create cbx_show_text_2
this.cbx_show_text_1=create cbx_show_text_1
this.cbx_enable_paste=create cbx_enable_paste
this.cbx_enabled_exit=create cbx_enabled_exit
this.cbx_check_text_2=create cbx_check_text_2
this.cbx_check_text_1=create cbx_check_text_1
this.cbx_show_text_only=create cbx_show_text_only
this.cbx_show_exit=create cbx_show_exit
this.cbx_show_open=create cbx_show_open
this.cbx_show_save=create cbx_show_save
this.cbx_show_preview=create cbx_show_preview
this.cbx_show_print=create cbx_show_print
this.uo_1=create uo_1
this.cbx_enable_text_1=create cbx_enable_text_1
this.Control[]={this.cbx_check_displaytooltips,&
this.cbx_check_displaytext,&
this.r_1,&
this.cbx_show_text_4,&
this.cbx_show_text_3,&
this.cbx_show_text_2,&
this.cbx_show_text_1,&
this.cbx_enable_paste,&
this.cbx_enabled_exit,&
this.cbx_check_text_2,&
this.cbx_check_text_1,&
this.cbx_show_text_only,&
this.cbx_show_exit,&
this.cbx_show_open,&
this.cbx_show_save,&
this.cbx_show_preview,&
this.cbx_show_print,&
this.uo_1,&
this.cbx_enable_text_1}
end on

on w_dwgui.destroy
destroy(this.cbx_check_displaytooltips)
destroy(this.cbx_check_displaytext)
destroy(this.r_1)
destroy(this.cbx_show_text_4)
destroy(this.cbx_show_text_3)
destroy(this.cbx_show_text_2)
destroy(this.cbx_show_text_1)
destroy(this.cbx_enable_paste)
destroy(this.cbx_enabled_exit)
destroy(this.cbx_check_text_2)
destroy(this.cbx_check_text_1)
destroy(this.cbx_show_text_only)
destroy(this.cbx_show_exit)
destroy(this.cbx_show_open)
destroy(this.cbx_show_save)
destroy(this.cbx_show_preview)
destroy(this.cbx_show_print)
destroy(this.uo_1)
destroy(this.cbx_enable_text_1)
end on

event open;//	Left side items are added Left to Right

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

uo_1.of_addItem('Exit', 		'PowerOff.bmp',		uo_1.RIGHT)

uo_1.of_addSeparator(uo_1.RIGHT)

uo_1.of_addItem('Text Only',	'',						uo_1.RIGHT)

uo_1.of_addSeparator(uo_1.RIGHT)

uo_1.of_addItem('Text 4',	'', 'Text 4 ToolTip',	uo_1.RIGHT)
uo_1.of_addItem('Text 3',	'',							uo_1.RIGHT)
uo_1.of_addItem('Text 2',	'',							uo_1.RIGHT)
uo_1.of_addItem('Text 1',	'',							uo_1.RIGHT)

uo_1.of_addSeparator(uo_1.RIGHT)
end event

event resize;IF il_oldWidth <> -1 AND il_oldHeight <> -1 THEN

	Long								ll_diffWidth,	ll_diffHeight
	
	ll_diffWidth					= newWidth - il_oldWidth
	ll_diffHeight					= newHeight - il_oldHeight
	
	uo_1.Resize(uo_1.Width + ll_diffWidth, uo_1.Height)
	r_1.Resize(r_1.Width + ll_diffWidth, r_1.Height + ll_diffHeight)
	
END IF

il_oldWidth							= newWidth
il_oldHeight						= newHeight
end event

type cbx_check_displaytooltips from checkbox within w_dwgui
integer x = 731
integer y = 884
integer width = 416
integer height = 80
integer taborder = 130
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Display ToolTips"
boolean checked = true
end type

event clicked;IF Checked THEN
	uo_1.of_EnableToolTips()
ELSE
	uo_1.of_DisableToolTips()
END IF
end event

type cbx_check_displaytext from checkbox within w_dwgui
integer x = 731
integer y = 800
integer width = 402
integer height = 80
integer taborder = 130
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Display Text"
end type

event clicked;IF Checked THEN
	uo_1.of_EnableText()
ELSE
	uo_1.of_DisableText()
END IF
end event

type r_1 from rectangle within w_dwgui
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 1073741824
integer x = 5
integer y = 4
integer width = 2729
integer height = 1536
end type

type cbx_show_text_4 from checkbox within w_dwgui
integer x = 32
integer y = 716
integer width = 402
integer height = 80
integer taborder = 90
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Show Text 4"
boolean checked = true
end type

event clicked;uo_1.of_setVisible('Text 4',	Checked)
end event

type cbx_show_text_3 from checkbox within w_dwgui
integer x = 32
integer y = 632
integer width = 402
integer height = 80
integer taborder = 80
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Show Text 3"
boolean checked = true
end type

event clicked;uo_1.of_setVisible('Text 3',	Checked)
end event

type cbx_show_text_2 from checkbox within w_dwgui
integer x = 32
integer y = 548
integer width = 402
integer height = 80
integer taborder = 70
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Show Text 2"
boolean checked = true
end type

event clicked;uo_1.of_setVisible('Text 2',	Checked)
end event

type cbx_show_text_1 from checkbox within w_dwgui
integer x = 32
integer y = 464
integer width = 402
integer height = 80
integer taborder = 60
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Show Text 1"
boolean checked = true
end type

event clicked;uo_1.of_setVisible('Text 1',	Checked)
end event

type cbx_enable_paste from checkbox within w_dwgui
integer x = 1431
integer y = 128
integer width = 402
integer height = 80
integer taborder = 140
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Enable Paste"
boolean checked = true
end type

event clicked;uo_1.of_setEnabled('Paste',	Checked)
end event

type cbx_enabled_exit from checkbox within w_dwgui
integer x = 1431
integer y = 212
integer width = 402
integer height = 80
integer taborder = 150
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Enable Exit"
boolean checked = true
end type

event clicked;uo_1.of_setEnabled('Exit',	Checked)
end event

type cbx_check_text_2 from checkbox within w_dwgui
integer x = 731
integer y = 212
integer width = 402
integer height = 80
integer taborder = 130
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Check Text 2"
end type

event clicked;uo_1.of_setChecked('Text 2',	Checked)
end event

type cbx_check_text_1 from checkbox within w_dwgui
integer x = 731
integer y = 128
integer width = 402
integer height = 80
integer taborder = 120
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Check Text 1"
end type

event clicked;uo_1.of_setChecked('Text 1',	Checked)
end event

type cbx_show_text_only from checkbox within w_dwgui
integer x = 32
integer y = 800
integer width = 416
integer height = 80
integer taborder = 100
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Show Text Only"
boolean checked = true
end type

event clicked;uo_1.of_setVisible('Text Only',	Checked)
end event

type cbx_show_exit from checkbox within w_dwgui
integer x = 32
integer y = 884
integer width = 402
integer height = 80
integer taborder = 110
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Show Exit"
boolean checked = true
end type

event clicked;uo_1.of_setVisible('Exit',	Checked)
end event

type cbx_show_open from checkbox within w_dwgui
integer x = 32
integer y = 128
integer width = 402
integer height = 80
integer taborder = 20
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Show Open"
boolean checked = true
end type

event clicked;uo_1.of_setVisible('Open',	Checked)
end event

type cbx_show_save from checkbox within w_dwgui
integer x = 32
integer y = 212
integer width = 402
integer height = 80
integer taborder = 30
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Show Save"
boolean checked = true
end type

event clicked;uo_1.of_setVisible('Save',	Checked)
end event

type cbx_show_preview from checkbox within w_dwgui
integer x = 32
integer y = 380
integer width = 402
integer height = 80
integer taborder = 50
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Show Preview"
boolean checked = true
end type

event clicked;uo_1.of_setVisible('Preview',	Checked)
end event

type cbx_show_print from checkbox within w_dwgui
integer x = 32
integer y = 296
integer width = 402
integer height = 80
integer taborder = 40
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Show Print"
boolean checked = true
end type

event clicked;uo_1.of_setVisible(uo_1.dw_toolBar.of_locateItem_objectName('ToolBarItem_5'),	Checked)
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

event ue_itemclicked;call super::ue_itemclicked;CHOOSE CASE Lower(vs_button)
		
	CASE 'exit'
		
		POST Close(parent)
		
END CHOOSE
end event

type cbx_enable_text_1 from checkbox within w_dwgui
integer x = 1431
integer y = 296
integer width = 402
integer height = 80
integer taborder = 160
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Enable Text 1"
boolean checked = true
end type

event clicked;uo_1.of_setEnabled('Text 1',	Checked)
end event

