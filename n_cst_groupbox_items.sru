HA$PBExportHeader$n_cst_groupbox_items.sru
forward
global type n_cst_groupbox_items from datastore
end type
end forward

global type n_cst_groupbox_items from datastore
string dataobject = "d_groupBox_items"
end type
global n_cst_groupbox_items n_cst_groupbox_items

type variables
Public:

	//	Reserved object types
	CONSTANT String						GROUPBOX							= 'groupbox'
	
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
public function string of_getitem_image (long vl_item)
public subroutine of_setitem_image (long vl_item, string vs_image)
public function long of_getitem_imagetransparency (long vl_item)
public subroutine of_setitem_imagetransparency (long vl_item, long vl_imagetransparency)
public subroutine of_setitem_imagewidth (long vl_item, long vl_imagewidth)
public subroutine of_setitem_color (long vl_item, long vl_color)
public function long of_getitem_color (long vl_item)
public function boolean of_getitem_bold (long vl_item)
public function boolean of_getitem_italic (long vl_item)
public function boolean of_getitem_underline (long vl_item)
public function boolean of_getitem_strikeout (long vl_item)
public function long of_getitem_alignment (long vl_item)
public function boolean of_getitem_roundgroupbox (long vl_item)
public function boolean of_getitem_titlebar (long vl_item)
public function boolean of_getitem_titlebarastab (long vl_item)
public function boolean of_getitem_roundtitlebar (long vl_item)
public subroutine of_setitem_alignment (long vl_item, long vl_alignment)
public subroutine of_setitem_roundgroupbox (long vl_item, boolean vb_roundgroupbox)
public subroutine of_setitem_titlebar (long vl_item, boolean vb_titlebar)
public subroutine of_setitem_titlebarastab (long vl_item, boolean vb_titlebarastab)
public subroutine of_setitem_roundtitlebar (long vl_item, boolean vb_roundtitlebar)
public subroutine of_setitem_bold (long vl_item, boolean vb_bold)
public subroutine of_setitem_italic (long vl_item, boolean vb_italic)
public subroutine of_setitem_underline (long vl_item, boolean vb_underline)
public subroutine of_setitem_strikeout (long vl_item, boolean vb_strikeout)
public function long of_getitem_backcolor (long vl_item)
public subroutine of_setitem_backcolor (long vl_item, long vl_backcolor)
public function long of_locateitem_text (string vs_text)
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

public subroutine of_setitem_color (long vl_item, long vl_color);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'color', vl_color)
ResetUpdate()

RETURN
end subroutine

public function long of_getitem_color (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'color'))
end function

public function boolean of_getitem_bold (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'bold') = 'Y')
end function

public function boolean of_getitem_italic (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'italic') = 'Y')
end function

public function boolean of_getitem_underline (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'underline') = 'Y')
end function

public function boolean of_getitem_strikeout (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'strikeout') = 'Y')
end function

public function long of_getitem_alignment (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'alignment'))
end function

public function boolean of_getitem_roundgroupbox (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'roundGroupBox') = 'Y')
end function

public function boolean of_getitem_titlebar (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'titleBar') = 'Y')
end function

public function boolean of_getitem_titlebarastab (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'titleBarAsTab') = 'Y')
end function

public function boolean of_getitem_roundtitlebar (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'roundTitleBar') = 'Y')
end function

public subroutine of_setitem_alignment (long vl_item, long vl_alignment);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'alignment', vl_alignment)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_roundgroupbox (long vl_item, boolean vb_roundgroupbox);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_roundgroupBox THEN
	SetItem(vl_item, 'roundGroupBox', 'Y')
ELSE
	SetItem(vl_item, 'roundGroupBox', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_titlebar (long vl_item, boolean vb_titlebar);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_titleBar THEN
	SetItem(vl_item, 'titleBar', 'Y')
ELSE
	SetItem(vl_item, 'titleBar', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_titlebarastab (long vl_item, boolean vb_titlebarastab);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_titleBarAsTab THEN
	SetItem(vl_item, 'titleBarAsTab', 'Y')
ELSE
	SetItem(vl_item, 'titleBarAsTab', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_roundtitlebar (long vl_item, boolean vb_roundtitlebar);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_roundTitleBar THEN
	SetItem(vl_item, 'roundTitleBar', 'Y')
ELSE
	SetItem(vl_item, 'roundTitleBar', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_bold (long vl_item, boolean vb_bold);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_bold THEN
	SetItem(vl_item, 'bold', 'Y')
ELSE
	SetItem(vl_item, 'bold', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_italic (long vl_item, boolean vb_italic);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_italic THEN
	SetItem(vl_item, 'italic', 'Y')
ELSE
	SetItem(vl_item, 'italic', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_underline (long vl_item, boolean vb_underline);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_underline THEN
	SetItem(vl_item, 'underline', 'Y')
ELSE
	SetItem(vl_item, 'underline', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_strikeout (long vl_item, boolean vb_strikeout);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_strikeOut THEN
	SetItem(vl_item, 'strikeOut', 'Y')
ELSE
	SetItem(vl_item, 'strikeOut', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public function long of_getitem_backcolor (long vl_item);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'backColor'))
end function

public subroutine of_setitem_backcolor (long vl_item, long vl_backcolor);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'backColor', vl_backColor)
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
		MessageBox('Programmer Error', 'Syntax error in groupBox find clause: ' + ls_find + '.')
END CHOOSE

Return(ll_item)
end function

on n_cst_groupbox_items.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_groupbox_items.destroy
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

