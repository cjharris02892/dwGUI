HA$PBExportHeader$w_dwgui_frame.srw
forward
global type w_dwgui_frame from window
end type
type mdi_1 from mdiclient within w_dwgui_frame
end type
end forward

global type w_dwgui_frame from window
integer width = 5042
integer height = 2784
boolean titlebar = true
string title = "DWGUI Test frame"
string menuname = "m_dwgui"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowtype windowtype = mdihelp!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
mdi_1 mdi_1
end type
global w_dwgui_frame w_dwgui_frame

on w_dwgui_frame.create
if this.MenuName = "m_dwgui" then this.MenuID = create m_dwgui
this.mdi_1=create mdi_1
this.Control[]={this.mdi_1}
end on

on w_dwgui_frame.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.mdi_1)
end on

type mdi_1 from mdiclient within w_dwgui_frame
long BackColor=268435456
end type

