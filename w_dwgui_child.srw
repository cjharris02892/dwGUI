HA$PBExportHeader$w_dwgui_child.srw
forward
global type w_dwgui_child from w_dwgui
end type
end forward

global type w_dwgui_child from w_dwgui
integer width = 2747
integer height = 1552
boolean titlebar = false
string title = ""
boolean controlmenu = false
boolean minbox = false
boolean maxbox = false
boolean resizable = false
windowtype windowtype = child!
end type
global w_dwgui_child w_dwgui_child

on w_dwgui_child.create
int iCurrent
call super::create
end on

on w_dwgui_child.destroy
call super::destroy
end on

type dw_options from w_dwgui`dw_options within w_dwgui_child
end type

type uo_toolbar from w_dwgui`uo_toolbar within w_dwgui_child
end type

