HA$PBExportHeader$w_dwgui.srw
forward
global type w_dwgui from window
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
type r_1 from rectangle within w_dwgui
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
cbx_check_text_2 cbx_check_text_2
cbx_check_text_1 cbx_check_text_1
cbx_show_text_only cbx_show_text_only
cbx_show_exit cbx_show_exit
cbx_show_open cbx_show_open
cbx_show_save cbx_show_save
cbx_show_preview cbx_show_preview
cbx_show_print cbx_show_print
uo_1 uo_1
r_1 r_1
end type
global w_dwgui w_dwgui

type variables
Private:

	n_cst_resize					invo_resize
end variables

on w_dwgui.create
this.cbx_check_text_2=create cbx_check_text_2
this.cbx_check_text_1=create cbx_check_text_1
this.cbx_show_text_only=create cbx_show_text_only
this.cbx_show_exit=create cbx_show_exit
this.cbx_show_open=create cbx_show_open
this.cbx_show_save=create cbx_show_save
this.cbx_show_preview=create cbx_show_preview
this.cbx_show_print=create cbx_show_print
this.uo_1=create uo_1
this.r_1=create r_1
this.Control[]={this.cbx_check_text_2,&
this.cbx_check_text_1,&
this.cbx_show_text_only,&
this.cbx_show_exit,&
this.cbx_show_open,&
this.cbx_show_save,&
this.cbx_show_preview,&
this.cbx_show_print,&
this.uo_1,&
this.r_1}
end on

on w_dwgui.destroy
destroy(this.cbx_check_text_2)
destroy(this.cbx_check_text_1)
destroy(this.cbx_show_text_only)
destroy(this.cbx_show_exit)
destroy(this.cbx_show_open)
destroy(this.cbx_show_save)
destroy(this.cbx_show_preview)
destroy(this.cbx_show_print)
destroy(this.uo_1)
destroy(this.r_1)
end on

event open;invo_resize							= CREATE n_cst_resize

n_cst_api_user32					lnvo_user32

Long									ll_left,		ll_top
Long									ll_right,	ll_bottom

lnvo_user32.of_API_getClientRect(Handle(this), ll_left, ll_top, ll_right, ll_bottom)

Long									ll_width,	ll_height

ll_width								= PixelsToUnits(ll_right - ll_left, XPixelsToUnits!)
ll_height							= PixelsToUnits(ll_bottom - ll_top, YPixelsToUnits!)

invo_resize.of_setOrigSize(ll_width, ll_height)

invo_resize.of_register(uo_1, invo_resize.SCALERIGHT)
invo_resize.of_register(r_1, invo_resize.SCALERIGHTBOTTOM)

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

uo_1.of_addItem('Exit', 		'PowerOff.bmp',	uo_1.RIGHT)

uo_1.of_addSeparator(uo_1.RIGHT)

uo_1.of_addItem('Text Only',	'',					uo_1.RIGHT)

uo_1.of_addSeparator(uo_1.RIGHT)

uo_1.of_addItem('Text 4',	'',						uo_1.RIGHT)
uo_1.of_addItem('Text 3',	'',						uo_1.RIGHT)
uo_1.of_addItem('Text 2',	'',						uo_1.RIGHT)
uo_1.of_addItem('Text 1',	'',						uo_1.RIGHT)

uo_1.of_addSeparator(uo_1.RIGHT)
end event

event close;IF isValid(invo_resize) THEN DESTROY invo_resize
end event

event resize;invo_resize.EVENT pfc_resize(sizeType, newWidth, newHeight)
end event

type cbx_check_text_2 from checkbox within w_dwgui
integer x = 731
integer y = 212
integer width = 402
integer height = 80
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
integer y = 380
integer width = 416
integer height = 80
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
integer y = 296
integer width = 402
integer height = 80
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
integer y = 548
integer width = 402
integer height = 80
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
integer y = 464
integer width = 402
integer height = 80
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
integer y = 212
integer width = 402
integer height = 80
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
integer y = 128
integer width = 402
integer height = 80
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

event clicked;uo_1.of_setVisible(uo_1.of_locateObject('ToolBarItem_5'),	Checked)
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

event ue_itemclicked;call super::ue_itemclicked;CHOOSE CASE Lower(as_button)
		
	CASE 'exit'
		
		POST Close(parent)
		
END CHOOSE
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

