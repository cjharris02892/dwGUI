HA$PBExportHeader$w_dwgui_popup.srw
forward
global type w_dwgui_popup from w_dwgui
end type
end forward

global type w_dwgui_popup from w_dwgui
integer width = 2747
integer height = 1624
boolean maxbox = false
boolean resizable = false
windowtype windowtype = popup!
end type
global w_dwgui_popup w_dwgui_popup

on w_dwgui_popup.create
int iCurrent
call super::create
end on

on w_dwgui_popup.destroy
call super::destroy
end on

type uo_1 from w_dwgui`uo_1 within w_dwgui_popup
end type

type dw_options from w_dwgui`dw_options within w_dwgui_popup
end type

type uo_toolbar from w_dwgui`uo_toolbar within w_dwgui_popup
end type

