HA$PBExportHeader$pfc_n_cst_string.sru
$PBExportComments$PFC String service
forward
global type pfc_n_cst_string from n_base
end type
end forward

global type pfc_n_cst_string from n_base autoinstantiate
end type

type variables
end variables

forward prototypes
public function long of_parsetoarray (string as_source, string as_delimiter, ref string as_array[])
public function string of_globalreplace (string as_source, string as_old, string as_new, boolean ab_ignorecase)
public function string of_globalreplace (string as_source, string as_old, string as_new)
end prototypes

public function long of_parsetoarray (string as_source, string as_delimiter, ref string as_array[]);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  of_ParseToArray
//
//	Access:  public
//
//	Arguments:
//	as_Source   The string to parse.
//	as_Delimiter   The delimeter string.
//	as_Array[]   The array to be filled with the parsed strings, passed by reference.
//
//	Returns:  long
//	The number of elements in the array.
//	If as_Source or as_Delimeter is NULL, function returns NULL.
//
//	Description:  Parse a string into array elements using a delimeter string.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	5.0   Initial version
//	5.0.02   Fixed problem when delimiter is last character of string.

//	   Ref array and return code gave incorrect results.
//
//////////////////////////////////////////////////////////////////////////////
//
/*
 * Open Source PowerBuilder Foundation Class Libraries
 *
 * Copyright (c) 2004-2005, All rights reserved.
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

//	CJH - 20120511	- Added
String		ls_Empty[]
as_array[]	= ls_empty[]
//	CJH - 20120511

long		ll_DelLen, ll_Pos, ll_Count, ll_Start, ll_Length
string 	ls_holder

//Check for NULL
IF IsNull(as_source) or IsNull(as_delimiter) Then
	long ll_null
	SetNull(ll_null)
	Return ll_null
End If

//Check for at leat one entry
If Trim (as_source) = '' Then
	Return 0
End If

//Get the length of the delimeter
ll_DelLen = Len(as_Delimiter)

ll_Pos =  Pos(Upper(as_source), Upper(as_Delimiter))

//Only one entry was found
if ll_Pos = 0 then
	as_Array[1] = as_source
	return 1
end if

//More than one entry was found - loop to get all of them
ll_Count = 0
ll_Start = 1
Do While ll_Pos > 0
	
	//Set current entry
	ll_Length = ll_Pos - ll_Start
	ls_holder = Mid (as_source, ll_start, ll_length)

	// Update array and counter
	ll_Count ++
	as_Array[ll_Count] = ls_holder
	
	//Set the new starting position
	ll_Start = ll_Pos + ll_DelLen

	ll_Pos =  Pos(Upper(as_source), Upper(as_Delimiter), ll_Start)
Loop

//Set last entry
ls_holder = Mid (as_source, ll_start, Len (as_source))

// Update array and counter if necessary
if Len (ls_holder) > 0 then
	ll_count++
	as_Array[ll_Count] = ls_holder
end if

//Return the number of entries found
Return ll_Count

end function

public function string of_globalreplace (string as_source, string as_old, string as_new, boolean ab_ignorecase);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  		of_GlobalReplace
//
//	Access:  		public
//
//	Arguments:
//	as_Source		The string being searched.
//	as_Old			The old string being replaced.
//	as_New			The new string.
// ab_IgnoreCase	A boolean stating to ignore case sensitivity.
//
//	Returns:  		string
//						as_Source with all occurrences of as_Old replaced with as_New.
//						If any argument's value is NULL, function returns NULL.
//
//	Description:  	Replace all occurrences of one string inside another with
//						a new string.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	5.0   Initial version
//
//////////////////////////////////////////////////////////////////////////////
//
/*
 * Open Source PowerBuilder Foundation Class Libraries
 *
 * Copyright (c) 2004-2005, All rights reserved.
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

Long	ll_Start
Long	ll_OldLen
Long	ll_NewLen
String ls_Source

//Check parameters
If IsNull(as_source) or IsNull(as_old) or IsNull(as_new) or IsNull(ab_ignorecase) Then
	string ls_null
	SetNull(ls_null)
	Return ls_null
End If

//Get the string lenghts
ll_OldLen = Len(as_Old)
ll_NewLen = Len(as_New)

//Should function respect case.
If ab_ignorecase Then
	as_old = Lower(as_old)
	ls_source = Lower(as_source)
Else
	ls_source = as_source
End If

//Search for the first occurrence of as_Old
ll_Start = Pos(ls_Source, as_Old)

Do While ll_Start > 0
	// replace as_Old with as_New
	as_Source = Replace(as_Source, ll_Start, ll_OldLen, as_New)
	
	//Should function respect case.
	If ab_ignorecase Then 
		ls_source = Lower(as_source)
	Else
		ls_source = as_source
	End If
	
	// find the next occurrence of as_Old
	ll_Start = Pos(ls_Source, as_Old, (ll_Start + ll_NewLen))
Loop

Return as_Source

end function

public function string of_globalreplace (string as_source, string as_old, string as_new);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  		of_GlobalReplace
//
//	Access:  		public
//
//	Arguments:
//	as_Source		The string being searched.
//	as_Old			The old string being replaced.
//	as_New			The new string.
// 
//Returns:  		string
//						as_Source with all occurrences of as_Old replaced with as_New.
//						If any argument's value is NULL, function returns NULL.
//
//	Description:  	Replace all occurrences of one string inside another with
//						a new string.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	5.0   Initial version
//
//////////////////////////////////////////////////////////////////////////////
//
/*
 * Open Source PowerBuilder Foundation Class Libraries
 *
 * Copyright (c) 2004-2005, All rights reserved.
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

//Check parameters

If IsNull(as_source) or IsNull(as_old) or IsNull(as_new) Then
	string ls_null
	SetNull(ls_null)
	Return ls_null
End If

//The default is to ignore Case
as_Source = of_GlobalReplace (as_source, as_old, as_new, True)

Return as_Source


end function

on pfc_n_cst_string.create
call super::create
end on

on pfc_n_cst_string.destroy
call super::destroy
end on

