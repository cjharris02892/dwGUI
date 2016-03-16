HA$PBExportHeader$pfc_n_cst_numerical.sru
$PBExportComments$PFC Base Numerical service
forward
global type pfc_n_cst_numerical from n_base
end type
end forward

global type pfc_n_cst_numerical from n_base autoinstantiate
end type

on pfc_n_cst_numerical.create
call super::create
end on

on pfc_n_cst_numerical.destroy
call super::destroy
end on

