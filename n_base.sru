HA$PBExportHeader$n_base.sru
$PBExportComments$Extension NonVisual Base class
forward
global type n_base from pfc_n_base
end type
end forward

global type n_base from pfc_n_base
event ue_post_constructor ( )
end type
global n_base n_base

on n_base.create
call super::create
end on

on n_base.destroy
call super::destroy
end on

event constructor;call super::constructor;POST EVENT ue_POST_Constructor()
end event

