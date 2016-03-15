HA$PBExportHeader$u_cst_toolbar_items.sru
forward
global type u_cst_toolbar_items from datawindow
end type
end forward

global type u_cst_toolbar_items from datawindow
integer width = 2642
integer height = 96
string title = "none"
string dataobject = "d_toolbar"
boolean border = false
borderstyle borderstyle = stylelowered!
end type
global u_cst_toolbar_items u_cst_toolbar_items

type variables
Public:

	//	Reserved object types
	CONSTANT String						SEPARATOR						= 'separator'
	CONSTANT String						TOOLBARDROPMENU				= 'toolbardropmenu'
	CONSTANT String						TOOLBARITEM						= 'toolbaritem'
end variables

forward prototypes
public function boolean of_getitem_displayinmenu (long vl_item)
public function boolean of_getitem_displaytext (long vl_item)
public function boolean of_getitem_enabled (long vl_item)
public function string of_getitem_fontface (long vl_item)
public function long of_getitem_fontsize (long vl_item)
public subroutine of_setitem_fontface (long vl_item, string vs_fontface)
public subroutine of_setitem_position (long vl_item, long vl_position)
public function string of_getitem_image (long vl_item)
public function long of_getitem_imagetransparency (long vl_item)
public function long of_getitem_imagewidth (long vl_item)
public function string of_getitem_name (long vl_item)
public function string of_getitem_objectname (long vl_item)
public function string of_getitem_objecttype (long vl_item)
public function long of_getitem_position (long vl_item)
public function long of_getitem_rectheight (long vl_item)
public function long of_getitem_rectleft (long vl_item)
public function long of_getitem_recttop (long vl_item)
public function long of_getitem_rectwidth (long vl_item)
public function boolean of_getitem_separator (long vl_item)
public function long of_getitem_tabsequence (long vl_item)
public function long of_getitem_textwidth (long vl_item)
public function string of_getitem_tooltip (long vl_item)
public function boolean of_getitem_visible (long vl_item)
public subroutine of_setitem_visible (long vl_item, boolean vb_visible)
public subroutine of_setitem_displayinmenu (long vl_item, boolean vb_displayinmenu)
public subroutine of_setitem_displaytext (long vl_item, boolean vb_displaytext)
public subroutine of_setitem_enabled (long vl_item, boolean vb_enabled)
public subroutine of_setitem_tooltip (long vl_item, string vs_tooltip)
public subroutine of_setitem_textwidth (long vl_item, long vl_textwidth)
public subroutine of_setitem_tabsequence (long vl_item, long vl_tabsequence)
public subroutine of_setitem_rectwidth (long vl_item, long vl_rectwidth)
public subroutine of_setitem_recttop (long vl_item, long vl_recttop)
public subroutine of_setitem_rectleft (long vl_item, long vl_rectleft)
public subroutine of_setitem_rectheight (long vl_item, long vl_rectheight)
public subroutine of_setitem_objecttype (long vl_item, string vs_objecttype)
public subroutine of_setitem_objectname (long vl_item, string vs_objectname)
public subroutine of_setitem_name (long vl_item, string vs_name)
public subroutine of_setitem_imagewidth (long vl_item, long vl_imagewidth)
public subroutine of_setitem_imagetransparency (long vl_item, long vl_imagetransparency)
public subroutine of_setitem_image (long vl_item, string vs_image)
public subroutine of_setitem_fontsize (long vl_item, long vl_fontsize)
public function long of_locateitem (string vs_name)
public function long of_locateitem ()
public function long of_locateitem (long vl_x, long vl_y)
public function long of_locateitem_first ()
public function long of_locateitem_last ()
public function long of_locateitem_next (long vl_itemcurrent)
public function long of_locateitem_previous (long vl_itemcurrent)
public function long of_additem ()
public function boolean of_getitem_checked (long vl_item)
public subroutine of_setitem_checked (long vl_item, boolean vb_checked)
public function long of_getitem_order (long vl_item)
public subroutine of_setitem_order (long vl_item)
end prototypes

public function boolean of_getitem_displayinmenu (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'displayInMenu') = 'Y')
end function

public function boolean of_getitem_displaytext (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'displayText') = 'Y')
end function

public function boolean of_getitem_enabled (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'enabled') = 'Y')
end function

public function string of_getitem_fontface (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return('')

Return(GetItemString(vl_item, 'fontFace'))
end function

public function long of_getitem_fontsize (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'fontSize'))
end function

public subroutine of_setitem_fontface (long vl_item, string vs_fontface);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'fontFace', vs_fontFace)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_position (long vl_item, long vl_position);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'position', vl_position)
ResetUpdate()

RETURN
end subroutine

public function string of_getitem_image (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return('')

Return(GetItemString(vl_item, 'image'))
end function

public function long of_getitem_imagetransparency (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'imageTransparency'))
end function

public function long of_getitem_imagewidth (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'imageWidth'))
end function

public function string of_getitem_name (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return('')

Return(GetItemString(vl_item, 'name'))
end function

public function string of_getitem_objectname (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return('')

Return(GetItemString(vl_item, 'objectName'))
end function

public function string of_getitem_objecttype (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return('')

Return(GetItemString(vl_item, 'objectType'))
end function

public function long of_getitem_position (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'position'))
end function

public function long of_getitem_rectheight (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'rectHeight'))
end function

public function long of_getitem_rectleft (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'rectLeft'))
end function

public function long of_getitem_recttop (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'rectTop'))
end function

public function long of_getitem_rectwidth (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'rectWidth'))
end function

public function boolean of_getitem_separator (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'objectType') = SEPARATOR)
end function

public function long of_getitem_tabsequence (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'tabSequence'))
end function

public function long of_getitem_textwidth (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'textWidth'))
end function

public function string of_getitem_tooltip (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return('')

Return(GetItemString(vl_item, 'toolTip'))
end function

public function boolean of_getitem_visible (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'visible') = 'Y')
end function

public subroutine of_setitem_visible (long vl_item, boolean vb_visible);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_visible THEN
	SetItem(vl_item, 'visible', 'Y')
ELSE
	SetItem(vl_item, 'visible', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_displayinmenu (long vl_item, boolean vb_displayinmenu);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_displayInMenu THEN
	SetItem(vl_item, 'displayInMenu', 'Y')
ELSE
	SetItem(vl_item, 'displayInMenu', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_displaytext (long vl_item, boolean vb_displaytext);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_displayText THEN
	SetItem(vl_item, 'displayText', 'Y')
ELSE
	SetItem(vl_item, 'displayText', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_enabled (long vl_item, boolean vb_enabled);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_enabled THEN
	SetItem(vl_item, 'enabled', 'Y')
ELSE
	SetItem(vl_item, 'enabled', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_tooltip (long vl_item, string vs_tooltip);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'toolTip', vs_toolTip)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_textwidth (long vl_item, long vl_textwidth);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'textWidth', vl_textWidth)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_tabsequence (long vl_item, long vl_tabsequence);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'tabSequence', vl_tabSequence)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_rectwidth (long vl_item, long vl_rectwidth);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'rectWidth', vl_rectWidth)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_recttop (long vl_item, long vl_recttop);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'rectTop', vl_rectTop)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_rectleft (long vl_item, long vl_rectleft);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'rectleft', vl_rectLeft)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_rectheight (long vl_item, long vl_rectheight);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'rectHeight', vl_rectHeight)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_objecttype (long vl_item, string vs_objecttype);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'objectType', vs_objectType)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_objectname (long vl_item, string vs_objectname);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'objectName', vs_objectName)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_name (long vl_item, string vs_name);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'name', vs_name)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_imagewidth (long vl_item, long vl_imagewidth);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'imageWidth', vl_imageWidth)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_imagetransparency (long vl_item, long vl_imagetransparency);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'imageTransparency', vl_imageTransparency)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_image (long vl_item, string vs_image);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'image', vs_image)
ResetUpdate()

RETURN
end subroutine

public subroutine of_setitem_fontsize (long vl_item, long vl_fontsize);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'fontSize', vl_fontSize)
ResetUpdate()

RETURN
end subroutine

public function long of_locateitem (string vs_name);String									ls_find
ls_find									= 'Lower(name)=Lower("' + vs_name + '")'

Long										ll_item
ll_item									= Find(ls_find, 1, rowCount())

CHOOSE CASE ll_item
	CASE 0
		setNull(ll_item)
	CASE -1
		setNull(ll_item)
		MessageBox('Programmer Error', 'Syntax error in find clause: ' + ls_find + '.')
END CHOOSE

Return(ll_item)
end function

public function long of_locateitem ();Long										ll_item
setNull(ll_item)

String									ls_describe
ls_describe								= Describe('r_button.X')

IF ls_describe = '?' OR ls_describe = '!' OR ls_describe = '' THEN Return(ll_item)

IF Long(Object.r_button.Visible) = 0 THEN Return(ll_item)

Long										ll_buttonRight
ll_buttonRight							= Long(Object.r_button.X) + Long(Object.r_button.Width)

String									ls_find
ls_find									= 'visible="Y" AND '																					&
											+ 'rectLeft>=' + String(Object.r_button.X) + ' AND '										&
											+ '(rectLeft + rectWidth)<=' + String(ll_buttonRight)

ll_item									= Find(ls_find, 1, rowCount())

CHOOSE CASE ll_item
	CASE 0
		setNull(ll_item)
	CASE -1
		setNull(ll_item)
		MessageBox('Programmer Error', 'Syntax error in find clause: ' + ls_find + '.')
END CHOOSE

Return(ll_item)
end function

public function long of_locateitem (long vl_x, long vl_y);String									ls_find
ls_find									= String(vl_x) + '>=rectLeft AND '																		&
											+ String(vl_x) + '<=(rectLeft + rectWidth) AND '													&
											+ String(vl_y) + '>=rectTop AND '																		&
											+ String(vl_y) + '<=(rectTop + rectHeight)'

Long										ll_item
ll_item									= Find(ls_find, 1, rowCount())

CHOOSE CASE ll_item
	CASE 0
		setNull(ll_item)
	CASE -1
		setNull(ll_item)
		MessageBox('Programmer Error', 'Syntax error in find clause: ' + ls_find + '.')
END CHOOSE

Return(ll_item)
end function

public function long of_locateitem_first ();Long										ll_itemFirst
setNull(ll_itemFirst)

Long										ll_tabFirst
setNull(ll_tabFirst)

setFilter('visible="Y" AND enabled="Y" AND tabSequence>0')
Filter()

Long										ll_item,		ll_items
Long										ll_tabSequence

ll_items									= rowCount()

FOR ll_item = 1 TO ll_items
	
	ll_tabSequence						= of_getItem_tabSequence(ll_item)
	
	IF isNull(ll_tabFirst) THEN
			
		ll_itemFirst					= ll_item
		ll_tabFirst						= ll_tabSequence
			
	ELSE
		IF ll_tabSequence < ll_tabFirst THEN
				
			ll_itemFirst				= ll_item
			ll_tabFirst					= ll_tabSequence
				
		END IF
	END IF

NEXT

setFilter('')
Filter()

Return(ll_itemFirst)
end function

public function long of_locateitem_last ();Long										ll_itemLast
setNull(ll_itemLast)

Long										ll_tabLast
setNull(ll_tabLast)

setFilter('visible="Y" AND enabled="Y" AND tabSequence>0')
Filter()

Long										ll_item,		ll_items
Long										ll_tabSequence

ll_items									= rowCount()

FOR ll_item = 1 TO ll_items
	
	ll_tabSequence						= of_getItem_tabSequence(ll_item)
	
	IF isNull(ll_tabLast) THEN
			
		ll_itemLast						= ll_item
		ll_tabLast						= ll_tabSequence
			
	ELSE
		IF ll_tabSequence > ll_tabLast THEN
				
			ll_itemLast					= ll_item
			ll_tabLast					= ll_tabSequence
				
		END IF
	END IF

NEXT

setFilter('')
Filter()

Return(ll_itemLast)
end function

public function long of_locateitem_next (long vl_itemcurrent);IF isNull(vl_itemCurrent) THEN Return(vl_itemCurrent)

Long										ll_itemNext
setNull(ll_itemNext)

Long										ll_tabNext
setNull(ll_tabNext)

Long										ll_tabCurrent
ll_tabCurrent							= of_getItem_tabSequence(vl_itemCurrent)

setFilter('visible="Y" AND enabled="Y" AND tabSequence>0')
Filter()

Long										ll_item,				ll_items
Long										ll_tabSequence

ll_items									= rowCount()

FOR ll_item = 1 TO ll_items
	
	ll_tabSequence						= of_getItem_tabSequence(ll_item)
	
	IF ll_tabSequence > ll_tabCurrent THEN
		IF isNull(ll_tabNext) THEN
			
			ll_itemNext					= ll_item
			ll_tabNext					= ll_tabSequence
			
		ELSE
			IF ll_tabSequence < ll_tabNext THEN
				
				ll_itemNext				= ll_item
				ll_tabNext				= ll_tabSequence
				
			END IF
		END IF
	END IF

NEXT

setFilter('')
Filter()

Return(ll_itemNext)
end function

public function long of_locateitem_previous (long vl_itemcurrent);IF isNull(vl_itemCurrent) THEN Return(vl_itemCurrent)

Long										ll_itemPrevious
setNull(ll_itemPrevious)

Long										ll_tabPrevious
setNull(ll_tabPrevious)

Long										ll_tabCurrent
ll_tabCurrent							= of_getItem_tabSequence(vl_itemCurrent)

setFilter('visible="Y" AND enabled="Y" AND tabSequence>0')
Filter()

Long										ll_item,				ll_items
Long										ll_tabSequence

ll_items									= rowCount()

FOR ll_item = 1 TO ll_items
	
	ll_tabSequence						= of_getItem_tabSequence(ll_item)

	IF ll_tabSequence < ll_tabCurrent THEN
		IF isNull(ll_tabPrevious) THEN
			
			ll_itemPrevious			= ll_item
			ll_tabPrevious				= ll_tabSequence
			
		ELSE
			IF ll_tabSequence > ll_tabPrevious THEN
				
				ll_itemPrevious		= ll_item
				ll_tabPrevious			= ll_tabSequence
				
			END IF
		END IF
	END IF

NEXT

setFilter('')
Filter()

Return(ll_itemPrevious)
end function

public function long of_additem ();Long									ll_item
ll_item								= InsertRow(0)

of_setItem_order(ll_item)

ResetUpdate()

Return(ll_item)
end function

public function boolean of_getitem_checked (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(FALSE)

Return(GetItemString(vl_item, 'checked') = 'Y')
end function

public subroutine of_setitem_checked (long vl_item, boolean vb_checked);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

IF vb_checked THEN
	SetItem(vl_item, 'checked', 'Y')
ELSE
	SetItem(vl_item, 'checked', 'N')
END IF

ResetUpdate()

RETURN
end subroutine

public function long of_getitem_order (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN Return(0)

Return(GetItemNumber(vl_item, 'order'))
end function

public subroutine of_setitem_order (long vl_item);IF vl_item < 1 OR vl_item > RowCount() THEN RETURN

SetItem(vl_item, 'order', vl_item)
ResetUpdate()

RETURN
end subroutine

on u_cst_toolbar_items.create
end on

on u_cst_toolbar_items.destroy
end on

