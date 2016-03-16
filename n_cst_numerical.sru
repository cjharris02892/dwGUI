HA$PBExportHeader$n_cst_numerical.sru
$PBExportComments$Extension Numerical service
forward
global type n_cst_numerical from pfc_n_cst_numerical
end type
end forward

global type n_cst_numerical from pfc_n_cst_numerical
end type

forward prototypes
public function boolean of_getbit (unsignedlong vul_value, unsignedinteger vui_bit)
public function unsignedlong of_bitwiseand (unsignedlong vul_value1, unsignedlong vul_value2)
end prototypes

public function boolean of_getbit (unsignedlong vul_value, unsignedinteger vui_bit);Boolean lb_null

//Check parameters
If IsNull(vul_value) or IsNull(vui_bit) then
	SetNull(lb_null)
	Return lb_null
End If

//Assumption ai_bit is the nth bit counting right to left with
//the leftmost bit being bit one.
//al_decimal is a binary number as a base 10 long.
If Int(Mod(vul_value / (2 ^(vui_bit - 1)), 2)) > 0 Then
	Return True
End If

Return False

end function

public function unsignedlong of_bitwiseand (unsignedlong vul_value1, unsignedlong vul_value2);Integer					li_Cnt
UnsignedLong			lul_Result
Boolean					lb_Value1[32],	lb_Value2[32]

// Check for nulls
If IsNull(vul_value1) Or IsNull(vul_value2) Then
	SetNull(lul_Result)
	Return lul_Result
End If

// Get all bits for both values
For li_Cnt = 1 To 32
	lb_Value1[li_Cnt]	= of_GetBit(vul_value1, li_Cnt)
	lb_Value2[li_Cnt]	= of_GetBit(vul_value2, li_Cnt)
Next

// And them together
For li_Cnt = 1 To 32
	If lb_Value1[li_Cnt] And lb_Value2[li_Cnt] Then
		lul_Result		= lul_Result + (2 ^ (li_Cnt - 1))
	End If
Next

Return(lul_Result)

end function

on n_cst_numerical.create
call super::create
end on

on n_cst_numerical.destroy
call super::destroy
end on

