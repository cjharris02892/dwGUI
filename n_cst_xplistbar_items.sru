HA$PBExportHeader$n_cst_xplistbar_items.sru
forward
global type n_cst_xplistbar_items from datastore
end type
end forward

global type n_cst_xplistbar_items from datastore
string dataobject = "d_xplistbar_items"
end type
global n_cst_xplistbar_items n_cst_xplistbar_items

type variables
Public:

	//	Reserved object types
	CONSTANT String						SEPARATOR						= 'separator'
	CONSTANT String						LABEL								= 'label'
	CONSTANT String						LINK								= 'link'
	CONSTANT String						GROUP								= 'group'

Private:

	Double									idbl_PBVersion					= 0.0
end variables

forward prototypes
public function double of_pbversion ()
public function long of_additem ()
public function long of_getitem_order (long vl_item)
public subroutine of_setitem_order (long vl_item)
public function string of_getitem_objecttype (long vl_item)
public subroutine of_setitem_objecttype (long vl_item, string vs_objecttype)
public function long of_getitem_parent (long vl_item)
public subroutine of_setitem_parent (long vl_item, long vl_parent)
public function string of_getitem_fontface (long vl_item)
public subroutine of_setitem_fontface (long vl_item, string vs_fontface)
public function long of_getitem_fontsize (long vl_item)
public subroutine of_setitem_fontsize (long vl_item, long vl_fontsize)
public function string of_getitem_text (long vl_item)
public subroutine of_setitem_text (long vl_item, string vs_text)
public function string of_getitem_objectname (long vl_item)
public subroutine of_setitem_objectname (long vl_item, string vs_objectname)
public function string of_getitem_tooltip (long vl_item)
public subroutine of_setitem_tooltip (long vl_item, string vs_tooltip)
public function long of_getitem_rectleft (long vl_item)
public subroutine of_setitem_rectleft (long vl_item, long vl_rectleft)
public function long of_getitem_rectwidth (long vl_item)
public subroutine of_setitem_rectwidth (long vl_item, long vl_rectwidth)
public function long of_getitem_recttop (long vl_item)
public subroutine of_setitem_recttop (long vl_item, long vl_recttop)
public function long of_getitem_rectheight (long vl_item)
public subroutine of_setitem_rectheight (long vl_item, long vl_rectheight)
public function boolean of_getitem_enabled (long vl_item)
public subroutine of_setitem_enabled (long vl_item, boolean vb_enabled)
public function boolean of_getitem_visible (long vl_item)
public subroutine of_setitem_visible (long vl_item, boolean vb_visible)
public function long of_locateitem_text (string vs_text)
public function boolean of_getitem_collapsed (long vl_item)
public subroutine of_setitem_collapsed (long vl_item, boolean vb_collapsed)
public function long of_locateitem_objectname (string vs_objectname)
public function long of_locateitem_text (string vs_text_group, string vs_text_item)
public function string of_getitem_image (long vl_item)
public subroutine of_setitem_image (long vl_item, string vs_image)
public function long of_getitem_imagetransparency (long vl_item)
public subroutine of_setitem_imagetransparency (long vl_item, long vl_imagetransparency)
public subroutine of_setitem_imagewidth (long vl_item, long vl_imagewidth)
end prototypes

public function double of_pbversion ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(idbl_PBVersion)
end function

public function long of_additem ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long									ll_item
ll_item								= InsertRow(0)

of_setItem_order(ll_item)

ResetUpdate()

Return(ll_item)
end function

public function long of_getitem_order (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'order'))
end function

public subroutine of_setitem_order (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'order', vl_item)
ResetUpdate()

RETURN
end subroutine

public function string of_getitem_objecttype (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return('')

Return(GetItemString(vl_item, 'objectType'))
end function

public subroutine of_setitem_objecttype (long vl_item, string vs_objecttype);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'objectType', vs_objectType)
ResetUpdate()

RETURN
end subroutine

public function long of_getitem_parent (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'parent'))
end function

public subroutine of_setitem_parent (long vl_item, long vl_parent);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'parent', vl_parent)
ResetUpdate()

RETURN
end subroutine

public function string of_getitem_fontface (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return('')

Return(GetItemString(vl_item, 'fontFace'))
end function

public subroutine of_setitem_fontface (long vl_item, string vs_fontface);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'fontFace', vs_fontFace)
ResetUpdate()

RETURN
end subroutine

public function long of_getitem_fontsize (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'fontSize'))
end function

public subroutine of_setitem_fontsize (long vl_item, long vl_fontsize);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'fontSize', vl_fontSize)
ResetUpdate()

RETURN
end subroutine

public function string of_getitem_text (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return('')

Return(GetItemString(vl_item, 'text'))
end function

public subroutine of_setitem_text (long vl_item, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'text', vs_text)
ResetUpdate()

RETURN
end subroutine

public function string of_getitem_objectname (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return('')

Return(GetItemString(vl_item, 'objectName'))
end function

public subroutine of_setitem_objectname (long vl_item, string vs_objectname);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'objectName', vs_objectName)
ResetUpdate()

RETURN
end subroutine

public function string of_getitem_tooltip (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return('')

Return(GetItemString(vl_item, 'toolTip'))
end function

public subroutine of_setitem_tooltip (long vl_item, string vs_tooltip);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'toolTip', vs_toolTip)
ResetUpdate()

RETURN
end subroutine

public function long of_getitem_rectleft (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'rectLeft'))
end function

public subroutine of_setitem_rectleft (long vl_item, long vl_rectleft);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'rectleft', vl_rectLeft)
ResetUpdate()

RETURN
end subroutine

public function long of_getitem_rectwidth (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'rectWidth'))
end function

public subroutine of_setitem_rectwidth (long vl_item, long vl_rectwidth);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'rectWidth', vl_rectWidth)
ResetUpdate()

RETURN
end subroutine

public function long of_getitem_recttop (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'rectTop'))
end function

public subroutine of_setitem_recttop (long vl_item, long vl_recttop);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'rectTop', vl_rectTop)
ResetUpdate()

RETURN
end subroutine

public function long of_getitem_rectheight (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'rectHeight'))
end function

public subroutine of_setitem_rectheight (long vl_item, long vl_rectheight);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'rectHeight', vl_rectHeight)
ResetUpdate()

RETURN
end subroutine

public function boolean of_getitem_enabled (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'enabled') = 'Y')
end function

public subroutine of_setitem_enabled (long vl_item, boolean vb_enabled);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_enabled THEN
	SetItem(vl_item, 'enabled', 'Y')
ELSE
	SetItem(vl_item, 'enabled', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public function boolean of_getitem_visible (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'visible') = 'Y')
end function

public subroutine of_setitem_visible (long vl_item, boolean vb_visible);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_visible THEN
	SetItem(vl_item, 'visible', 'Y')
ELSE
	SetItem(vl_item, 'visible', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public function long of_locateitem_text (string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_find
ls_find									= 'Lower(text)=Lower("' + vs_text + '")'

Long										ll_item
ll_item									= Find(ls_find, 1, rowCount())

CHOOSE CASE ll_item
	CASE 0
		setNull(ll_item)
	CASE -1
		setNull(ll_item)
		MessageBox('Programmer Error', 'Syntax error in XPListBar find clause: ' + ls_find + '.')
END CHOOSE

Return(ll_item)
end function

public function boolean of_getitem_collapsed (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'collapsed') = 'Y')
end function

public subroutine of_setitem_collapsed (long vl_item, boolean vb_collapsed);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_collapsed THEN
	SetItem(vl_item, 'collapsed', 'Y')
ELSE
	SetItem(vl_item, 'collapsed', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public function long of_locateitem_objectname (string vs_objectname);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_find
ls_find									= 'Lower(objectName)=Lower("' + vs_objectName + '")'

Long										ll_item
ll_item									= Find(ls_find, 1, rowCount())

CHOOSE CASE ll_item
	CASE 0
		
		Long								ll_pos
		ll_pos							= Pos(Lower(vs_objectName), 'group_')
		
		IF ll_pos > 0 THEN
		
			String						ls_item
			ls_item						= Mid(vs_objectName, ll_pos + Len('group_'))
			
			IF isNumber(ls_item) THEN Return(Long(ls_item))

			ll_pos						= Pos(ls_item, '_')
			
			ls_item						= Left(ls_item, ll_pos - 1)
			
			IF isNumber(ls_item) THEN Return(Long(ls_item))
			
		END IF
		
		setNull(ll_item)

	CASE -1
		
		setNull(ll_item)
		
		MessageBox('Programmer Error', 'Syntax error in XPListBar find clause: ' + ls_find + '.')
		
END CHOOSE

Return(ll_item)
end function

public function long of_locateitem_text (string vs_text_group, string vs_text_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_find
ls_find									= 'Lower(text)=Lower("' + vs_text_group + '") AND parent=0'

Long										ll_item
ll_item									= Find(ls_find, 1, rowCount())

CHOOSE CASE ll_item
	CASE 0
		setNull(ll_item)
	CASE -1
		setNull(ll_item)
		MessageBox('Programmer Error', 'Syntax error in XPListBar find clause: ' + ls_find + '.')
END CHOOSE

IF isNull(ll_item) THEN Return(ll_item)

IF isNull(vs_text_item) OR Trim(vs_text_item) = '' THEN Return(ll_item)

Long										ll_parent
ll_parent								= of_getItem_order(ll_item)

ls_find									= 'Lower(text)=Lower("' + vs_text_item + '") AND parent=' + String(ll_parent)

ll_item									= Find(ls_find, 1, rowCount())

CHOOSE CASE ll_item
	CASE 0
		setNull(ll_item)
	CASE -1
		setNull(ll_item)
		MessageBox('Programmer Error', 'Syntax error in XPListBar find clause: ' + ls_find + '.')
END CHOOSE

Return(ll_item)
end function

public function string of_getitem_image (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return('')

Return(GetItemString(vl_item, 'image'))
end function

public subroutine of_setitem_image (long vl_item, string vs_image);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'image', vs_image)
ResetUpdate()

RETURN
end subroutine

public function long of_getitem_imagetransparency (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'imageTransparency'))
end function

public subroutine of_setitem_imagetransparency (long vl_item, long vl_imagetransparency);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'imageTransparency', vl_imageTransparency)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_imagewidth (long vl_item, long vl_imagewidth);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'imageWidth', vl_imageWidth)
ResetUpdate()

RETURN
end subroutine

on n_cst_xplistbar_items.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_xplistbar_items.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Environment									lenv_temp
GetEnvironment(lenv_temp)

idbl_PBVersion								= lenv_temp.PBMajorRevision + (lenv_temp.PBMinorRevision / 10)


end event

