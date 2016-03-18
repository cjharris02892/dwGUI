HA$PBExportHeader$pfc_n_cst_numerical.sru
$PBExportComments$PFC Base Numerical service
forward
global type pfc_n_cst_numerical from n_base
end type
end forward

global type pfc_n_cst_numerical from n_base autoinstantiate
end type

type prototypes
Subroutine CopyInt2UInt( ref UInt dest, ref Integer source, Long copylength) Library "kernel32.dll" Alias For "RtlMoveMemory"

Subroutine CopyUInt2Int( ref Integer dest, ref UInt source, Long copylength) Library "kernel32.dll" Alias For "RtlMoveMemory"

Subroutine CopyLong2ULong( ref ULong dest, ref Long source, Long copylength) Library "kernel32.dll" Alias For "RtlMoveMemory"

Subroutine CopyULong2Long( ref Long dest, ref ULong source, Long copylength) Library "kernel32.dll" Alias For "RtlMoveMemory"

Subroutine CopyBlob2ULong( ref ULong dest, ref Blob source, Long copylength) Library "kernel32.dll" Alias For "RtlMoveMemory"

Subroutine CopyULong2Blob( ref Blob dest, ref ULong source, Long copylength) Library "kernel32.dll" Alias For "RtlMoveMemory"

Subroutine CopyLongLong2Blob( ref Blob dest, ref LongLong source, Long copylength) Library "kernel32.dll" Alias For "RtlMoveMemory"

Subroutine CopyBlob2LongLong( ref LongLong dest, ref Blob source, Long copylength) Library "kernel32.dll" Alias For "RtlMoveMemory"

end prototypes

forward prototypes
public function unsignedlong of_bitwiseand (unsignedlong aul_value1, unsignedlong aul_value2)
end prototypes

public function unsignedlong of_bitwiseand (unsignedlong aul_value1, unsignedlong aul_value2);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  		of_BitwiseAnd [Overloaded]
//
//	Access: 			public
//
//	Arguments:
//	aul_Value1     UnsignedLong: The first value to be used in the operation. (e.g. 55)
//	aul_Value2     UnsignedLong: The second value to be used in the operation. (e.g. 44)
//
//	Returns: 		UnsignedLong
//						The result of the AND operation (e.g. 36)
//						If either argument's value is null, the function returns null.
//
//	Description:   Performs a bitwise AND operation (aul_Value1 && aul_Value2),
//						which ANDs each bit of the values.
//						(55 && 44) = 36
//
//                55 (decimal) = 0000 0000 0000 0000 0000 0000 0011 0111
//                44 (decimal) = 0000 0000 0000 0000 0000 0000 0010 1100
//                               ---------------------------------------
//                Bitwise AND    0000 0000 0000 0000 0000 0000 0010 0100 = 36 (decimal)
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
// 12.5  Initial version
//
//////////////////////////////////////////////////////////////////////////////
//
/*
 * Open Source PowerBuilder Foundation Class Libraries
 *
 * Copyright (c) 2004-2013, All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted in accordance with the GNU Lesser General
 * Public License Version 2.1, February 1999
 *
 * http://www.gnu.org/copyleft/lesser.html
 *
 * ====================================================================
 *
 * This software consists of voluntary contributions made by many
 * individuals and was originally based on software copyright (c) 
 * 1996-2004 Sybase, Inc. http://www.sybase.com.  For more
 * information on the Open Source PowerBuilder Foundation Class
 * Libraries see http://pfc.codexchange.sybase.com
*/
//
//////////////////////////////////////////////////////////////////////////////

Integer li_i
ULong   lul_result, lul_factor

// Return null if any argument is null.
SetNull(lul_result)
If IsNull(aul_value1) Or IsNull(aul_value2) Then Return lul_result

lul_result = 0
For li_i = 1 To 32
	If aul_value1 = 0 Or aul_value2 = 0 Then Exit
	
	If li_i = 1 Then
		lul_factor = 1
	Else
		lul_factor *= 2
	End If
	
	If Mod(aul_value1, 2) = 1 And Mod(aul_value2, 2) = 1 Then
		lul_result += lul_factor
	End If
	
	aul_value1 /= 2
	aul_value2 /= 2
Next

Return lul_result
end function

on pfc_n_cst_numerical.create
call super::create
end on

on pfc_n_cst_numerical.destroy
call super::destroy
end on

