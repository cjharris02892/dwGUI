HA$PBExportHeader$a_dwgui.sra
$PBExportComments$Generated Application Object
forward
global type a_dwgui from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type a_dwgui from application
string appname = "a_dwgui"
end type
global a_dwgui a_dwgui

on a_dwgui.create
appname="a_dwgui"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on a_dwgui.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;Open(w_DWGUI_frame)
end event

