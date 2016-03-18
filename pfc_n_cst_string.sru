HA$PBExportHeader$pfc_n_cst_string.sru
$PBExportComments$PFC String service
forward
global type pfc_n_cst_string from n_base
end type
end forward

global type pfc_n_cst_string from n_base autoinstantiate
end type

type variables
Public:
// Email Address Checking Rule constants
constant integer	CST_HOTMAIL_RULE = 1
constant integer	CST_RFC_5321 = 2

// of_GlobalReplace method selection constants
constant integer  CST_GLOBALREPLACE_LEGACY = 1
constant integer  CST_GLOBALREPLACE_NEW    = 2

string	CST_NULL

Protected:
// of_GlobalReplace method (use the new, more efficient method by default)
privatewrite integer ii_globalreplacemethod = CST_GLOBALREPLACE_NEW
end variables

forward prototypes
public function long of_parsetoarray (string as_source, string as_delimiter, ref string as_array[])
public function string of_globalreplace (string as_source, string as_old, string as_new, boolean ab_ignorecase)
public function string of_globalreplace (string as_source, string as_old, string as_new)
public function string of_globalreplacelegacy (string as_source, string as_old, string as_new, boolean ab_ignorecase)
public function string of_globalreplacenew (string as_source, string as_old, string as_new, boolean ab_ignorecase)
public function integer of_getglobalreplacemethod ()
public function integer of_setglobalreplacemethod (integer ai_method)
end prototypes

public function long of_parsetoarray (string as_source, string as_delimiter, ref string as_array[]);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  of_ParseToArray
//
//	Access:  public
//
//	Arguments:
//	as_Source   The string to parse.
//	as_Delimiter   The delimiter string.
//	as_Array[]   The array to be filled with the parsed strings, passed by reference.
//
//	Returns:  long
//	The number of elements in the array.
//	If as_Source or as_Delimiter is NULL, function returns NULL.
//
//	Description:  Parse a string into array elements using a delimiter string.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	5.0   Initial version
//	5.0.02   Fixed problem when delimiter is last character of string.
//	   		Ref array and return code gave incorrect results.
//	12.5		Optimized
//				Changed behavior: #11020
//					reset return array at start
//					return additional empty item when delimiter is last character of string
//					return also one item when string is empty
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

long		ll_DelLen, ll_Pos, ll_Count, ll_Start, ll_Length
string 	ls_upper_source, ls_empty[]

//Reset array
as_Array = ls_empty

//Check for NULL
IF IsNull(as_source) or IsNull(as_delimiter) Then
	SetNull(ll_Count)
	Return ll_Count
End If

//ignore case
as_Delimiter = Upper(as_Delimiter)
ls_upper_source = Upper(as_source)

//Get the length of the delimiter
ll_DelLen = Len(as_Delimiter)

ll_Pos = Pos(ls_upper_source, as_Delimiter)

//Only one entry was found
if ll_Pos = 0 then
	as_Array[1] = as_source
	return 1
end if

//More than one entry was found - loop to get all of them
ll_Count = 0
ll_Start = 1
Do While ll_Pos > 0
	
	//Add current entry to array
	ll_Length = ll_Pos - ll_Start
	ll_Count ++
	as_Array[ll_Count] = Mid (as_source, ll_start, ll_length)
	
	//Set the new starting position
	ll_Start = ll_Pos + ll_DelLen

	ll_Pos = Pos(ls_upper_source, as_Delimiter, ll_Start)
Loop

//Add last entry to array (also if empty #11020)
ll_count++
as_Array[ll_Count] = Mid (as_source, ll_start, Len (as_source))

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
// 12.5  Implement new, more efficient algorithm; Also provide access to the
//       original (legacy) algorithm.
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

string ls_result

// Which algorithm/method is to be used?
Choose Case ii_globalreplacemethod
	Case CST_GLOBALREPLACE_NEW
		ls_result = this.of_GlobalReplaceNew( as_source, as_old, as_new, ab_ignorecase)
	Case CST_GLOBALREPLACE_LEGACY
		ls_result = this.of_GlobalReplaceLegacy( as_source, as_old, as_new, ab_ignorecase)
	Case Else
		SetNull(ls_result)
End Choose

Return ls_result
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

public function string of_globalreplacelegacy (string as_source, string as_old, string as_new, boolean ab_ignorecase);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  		of_GlobalReplaceLegacy
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
// 12.5  Copy of the original of_GlobalReplace method; Maintains availability
//       of this method while it is replace with a newer, more efficient one.
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

public function string of_globalreplacenew (string as_source, string as_old, string as_new, boolean ab_ignorecase);//////////////////////////////////////////////////////////////////////////////
//
// Function:      of_GlobalReplaceNew
//
// Access:        public
//
// Arguments:
// as_Source      The string being searched.
// as_Old         The old string being replaced.
// as_New         The new string.
// ab_IgnoreCase  A boolean stating to ignore case sensitivity.
//
// Returns:       string
//                as_Source with all occurrences of as_Old replaced with as_New.
//                If any argument's value is NULL, function returns NULL.
//
// Description:   Replace all occurrences of one string inside another with
//                a new string.
//
// Usage Notes:   This method implements an alternative algoithm that is
//                designed to be more efficient (hence, faster) than the
//                original method. The gain in performance is due to avoidance
//                of the "Replace" PowerScript string function.
//
//                The original method has been renamed to of_GlobalReplaceLegacy.
//                It can be invoked explicitly, or by first invoking:
//
//                   of_SetGlobalReplaceMethod( lnv_string.CST_GLOBALREPLACE_LEGACY)
//
//                and then using of_GlobalReplace.
//
//                The new method appears to be approx. 50-60% faster than the
//                original method.
//
//                Disclaimer: The above statements are not to be construed as
//                a guarantee of improved performance. Your mileage may vary.
//
//////////////////////////////////////////////////////////////////////////////
//
// Revision History
//
// Version
// 12.5  Initial version
// 		Implemented proposed fix included in Issue #11034 - 07/28/2014
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

long   ll_previousendpos, ll_start, ll_oldlen, ll_newlen, ll_sourcelen
string ls_copyofsource, ls_result

// Check for null parameters.
If IsNull(as_source) Or IsNull(as_old) Or IsNull(as_new) Or IsNull(ab_ignorecase) Then
	SetNull(ls_result)
	Return ls_result
End If

// How should differences in upper/lowercase be handled?
If ab_ignorecase Then
	// Ignore differences - Make sure everything used in comparisons is in lowercase.
	as_old = Lower(as_old)
	ls_copyofsource = Lower(as_source)
Else
	// Respect differences - Leave the source string as is.
	ls_copyofsource = as_source
End If

ll_sourcelen = Len(as_source)
ll_oldlen    = Len(as_old)
ll_newlen    = Len(as_new)

// Check for trivial case where the string to be found is longer than the string to be searched.
If ll_oldlen > ll_sourcelen Then Return as_source

// Perform the initial search. If no occurrences found, return the original, unchanged string.
ll_start = Pos(ls_copyofsource, as_old, 1)
If ll_start = 0 Then Return as_source

ls_result = ''
ll_previousendpos = 1

Do While ll_start > 0
	// Append everything between the end of last occurrence and the start of this occurrence?
	If ll_start > ll_previousendpos Then
		ls_result += Mid(as_source, ll_previousendpos, (ll_start - ll_previousendpos))
	End If

	// Append the replacement string and update the start offset to where next search must begin.
	If ll_newlen > 0 Then ls_result += as_new
	ll_previousendpos = ll_start + ll_oldlen
	
	// Look for the next occurrence of the string that is to be replaced.
	If ll_previousendpos > (ll_sourcelen - ll_oldlen + 1) Then Exit	//	Issue #11034 - 7/28/2014 (Changed)
	ll_start = Pos(ls_copyofsource, as_old, ll_previousendpos)
Loop

// Is there anything left that needs to be included?
If ll_previousendpos <= ll_sourcelen Then										//	Issue #11034 - 7/28/2014 (Changed)
	ls_result += Mid(as_source, ll_previousendpos)
End If

Return ls_result
end function

public function integer of_getglobalreplacemethod ();//////////////////////////////////////////////////////////////////////////////
//
// Function:      of_GetGlobalReplaceMethod
//
// Access:        public
//
// Arguments:     (none)
//
// Returns:       integer     CST_GLOBALREPLACE_NEW (= 2)
//                              The new, more efficient method will be used.
//                            CST_GLOBALREPLACE_LEGACY (= 1)
//                              The original method will be used.
//
//	Description:  	Obtains an integer value that represents which of_GlobalReplace
//                method/technique will be used when of_GlobalReplace is used.
//
//////////////////////////////////////////////////////////////////////////////
//
// Revision History
//
//	Version
//	12.5  Initial version
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

Return this.ii_globalreplacemethod
end function

public function integer of_setglobalreplacemethod (integer ai_method);//////////////////////////////////////////////////////////////////////////////
//
// Function:      of_SetGlobalReplaceMethod
//
// Access:        public
//
// Arguments:
// ai_Method      integer     CST_GLOBALREPLACE_NEW (= 2)
//                              The new, more efficient method is to be used.
//                            CST_GLOBALREPLACE_LEGACY (= 1)
//                              The original method is to be used.
//
// Returns:       integer     SUCCESS (1)  - The requested method will be used.
//                            FAILURE (-1) - ai_Method is null or not valid.
//
//	Description:  	Specifies which of_GlobalReplace method/technique is to be
//                used when the of_GlobalReplace fn is used.
//
//////////////////////////////////////////////////////////////////////////////
//
// Revision History
//
//	Version
//	12.5  Initial version
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

If IsNull(ai_method) Then Return FAILURE

Choose Case ai_method
	Case CST_GLOBALREPLACE_NEW
		this.ii_globalreplacemethod = CST_GLOBALREPLACE_NEW
	Case CST_GLOBALREPLACE_LEGACY
		this.ii_globalreplacemethod = CST_GLOBALREPLACE_LEGACY
	Case Else
		Return FAILURE
End Choose

Return SUCCESS
end function

on pfc_n_cst_string.create
call super::create
end on

on pfc_n_cst_string.destroy
call super::destroy
end on

event constructor;call super::constructor;SetNull( cst_null )

end event

