HA$PBExportHeader$n_cst_toolbar.sru
forward
global type n_cst_toolbar from nonvisualobject
end type
type rect from structure within n_cst_toolbar
end type
type toolinfo from structure within n_cst_toolbar
end type
type point from structure within n_cst_toolbar
end type
type trackmouseevent from structure within n_cst_toolbar
end type
type textmetric from structure within n_cst_toolbar
end type
end forward

type rect from structure
	long		left
	long		top
	long		right
	long		bottom
end type

type toolinfo from structure
	long		cbsize
	long		uflags
	long		hwnd
	long		uid
	rect		rect
	long		hinstance
	long		lpsztext
end type

type point from structure
	long		cx
	long		cy
end type

type trackmouseevent from structure
	unsignedLong		cbSize
	unsignedLong		dwFlags
	unsignedLong		hWndTrack
	unsignedLong		dwHoverTime
end type

type TextMetric from structure
	long		tmHeight
	long		tmAscent
	long		tmDescent
	long		tmInternalLeading
	long		tmExternalLeading
	long		tmAveCharWidth
	long		tmMaxCharWidth
	long		tmWeight
	long		tmOverHang
	long		tmDigitizedAspectX
	long		tmDigitizedAspectY
	char		tmFirstChar
	char		tmLastChar
	char		tmDefaultChar
	char		tmBreakChar
	byte		tmItalic
	byte		tmUnderLined
	byte		tmStruckOut
	byte		tmPitchAndFamily
	byte		tmCharSet
end type

global type n_cst_toolbar from nonvisualobject autoinstantiate
end type

type prototypes
Private:

	FUNCTION Long SendMessage_ToolTip(unsignedLong hWnd, Long msg, Long wParam, REF TOOLINFO lpToolInfo) LIBRARY "user32.dll" ALIAS FOR "SendMessageW"
	FUNCTION Long SendMessage_ToolTipA(unsignedLong hWnd, Long msg, Long wParam, REF TOOLINFO lpToolInfo) LIBRARY "user32.dll" ALIAS FOR "SendMessageA;Ansi"
	
	FUNCTION boolean GetTextExtentPoint32(unsignedLong hdc, string lpString, long c, REF point lpSize) LIBRARY "gdi32.DLL" ALIAS FOR "GetTextExtentPoint32W"
	FUNCTION boolean GetTextExtentPoint32A(unsignedLong hdc, string lpString, long c, REF point lpSize) LIBRARY "gdi32.DLL" ALIAS FOR "GetTextExtentPoint32A;Ansi"

	FUNCTION boolean GetTextMetrics(unsignedLong hdc, REF TextMetric lpTM) LIBRARY "gdi32.DLL" ALIAS FOR "GetTextMetricsW"
	FUNCTION boolean GetTextMetricsA(unsignedLong hdc, REF TextMetric lpTM) LIBRARY "gdi32.DLL" ALIAS FOR "GetTextMetricsA;Ansi"

	FUNCTION unsignedLong SelectObject(unsignedLong hdc,ulong hObject) LIBRARY "gdi32.dll"
	FUNCTION unsignedLong DeleteObject(unsignedLong hObject) LIBRARY "gdi32.dll"
	
	FUNCTION unsignedLong GetDC(unsignedLong hwnd) LIBRARY "user32.dll"
	FUNCTION unsignedLong ReleaseDC(unsignedLong hwnd,ulong hdc) LIBRARY "user32.dll"
	
	FUNCTION UnsignedLong GetWindow(UnsignedLong hWnd, Integer uCmd) LIBRARY "user32.dll"
	FUNCTION UnsignedLong GetDesktopWindow() LIBRARY "user32.dll"
	FUNCTION UnsignedLong GetParent(UnsignedLong hWnd) LIBRARY "user32.dll"
	FUNCTION Integer GetDlgCtrlID(UnsignedLong hWnd) LIBRARY "user32.dll"
	
	FUNCTION Long GetClassName(UnsignedLong hWnd, REF String lpClassName, Long nMaxCount) ALIAS FOR "GetClassNameW" LIBRARY "user32.dll"
	FUNCTION Long GetClassNameA(UnsignedLong hWnd, REF String lpClassName, Long nMaxCount) ALIAS FOR "GetClassNameA;Ansi" LIBRARY "user32.dll"
	
	FUNCTION Integer GetWindowTextLength(UnsignedLong vul_HWnd) ALIAS FOR "GetWindowTextLengthW" LIBRARY "user32.dll"
	FUNCTION Integer GetWindowTextLengthA(UnsignedLong vul_HWnd) ALIAS FOR "GetWindowTextLengthA" LIBRARY "user32.dll"
	
	FUNCTION Boolean GetCursorPos(REF POINT lpPoint) LIBRARY "user32.dll"
	FUNCTION Boolean SetCursorPos(Integer x, Integer y) LIBRARY "user32.dll"
	
	FUNCTION Boolean TrackMouseEvent(REF TRACKMOUSEEVENT lpTrackMouseEvent) LIBRARY 'user32.dll'

	FUNCTION UnsignedLong GetWindowLong(UnsignedLong hWnd, Long nIndex) ALIAS FOR "GetWindowLongW" LIBRARY "user32.dll"
	FUNCTION UnsignedLong GetWindowLongA(UnsignedLong hWnd, Long nIndex) ALIAS FOR "GetWindowLongA" LIBRARY "user32.dll"

	FUNCTION Boolean GetClientRect(UnsignedLong hWnd, REF RECT lpRect) LIBRARY "user32.dll"
end prototypes
type variables
Public:

	// Window Messages
	CONSTANT UnsignedLong				WM_GETFONT						= 49
	CONSTANT UnsignedLong				WM_MOUSELEAVE					= 675
	CONSTANT UnsignedLong				WM_USER							= 1024
	CONSTANT UnsignedLong				TTM_POP							= WM_USER + 28

	//	FindWindow
	CONSTANT Long							GW_HWNDFIRST					= 0
	CONSTANT Long							GW_HWNDLAST						= 1
	CONSTANT Long							GW_HWNDNEXT						= 2
	CONSTANT Long							GW_HWNDPREV						= 3
	CONSTANT Long							GW_OWNER							= 4
	CONSTANT Long							GW_CHILD							= 5

	//	Set/GetWindowLong Index
	CONSTANT Long							GWL_WNDPROC						= (-4)
	CONSTANT Long							GWL_HINSTANCE					= (-6)
	CONSTANT Long							GWL_HWNDPARENT					= (-8)
	CONSTANT Long							GWL_ID							= (-12)
	CONSTANT Long							GWL_STYLE						= (-16)
	CONSTANT Long							GWL_EXSTYLE						= (-20)
	CONSTANT Long							GWL_USERDATA					= (-21)

	//	Extended Window Styles
	CONSTANT UnsignedLong				WS_EX_ACCEPTFILES				= 16						//	The window accepts drag-drop files.
	CONSTANT UnsignedLong				WS_EX_APPWINDOW				= 262144					//	Forces a top-level window onto the taskbar when the window is visible. 
	CONSTANT UnsignedLong				WS_EX_CLIENTEDGE				= 512						//	The window has a border with a sunken edge.
	CONSTANT UnsignedLong				WS_EX_COMPOSITED				= 33554432				//	Paints all descendants of a window in bottom-to-top painting order using double-buffering. For more information, see Remarks. This cannot be used if the window has a class style of either CS_OWNDC or CS_CLASSDC.  Windows 2000:  This style is not supported. 
	CONSTANT UnsignedLong				WS_EX_CONTEXTHELP				= 1024					//	The title bar of the window includes a question mark. When the user clicks the question mark, the cursor changes to a question mark with a pointer. If the user then clicks a child window, the child receives a WM_HELP message. The child window should pass the message to the parent window procedure, which should call the WinHelp function using the HELP_WM_HELP command. The Help application displays a pop-up window that typically contains help for the child window.  WS_EX_CONTEXTHELP cannot be used with the WS_MAXIMIZEBOX or WS_MINIMIZEBOX styles.
	CONSTANT UnsignedLong				WS_EX_CONTROLPARENT			= 65536					//	The window itself contains child windows that should take part in dialog box navigation. If this style is specified, the dialog manager recurses into children of this window when performing navigation operations such as handling the TAB key, an arrow key, or a keyboard mnemonic.
	CONSTANT UnsignedLong				WS_EX_DLGMODALFRAME			= 1						//	The window has a double border; the window can, optionally, be created with a title bar by specifying the WS_CAPTION style in the dwStyle parameter.
	CONSTANT UnsignedLong				WS_EX_LAYERED					= 524288					//	The window is a layered window. This style cannot be used if the window has a class style of either CS_OWNDC or CS_CLASSDC.  Windows 8:  The WS_EX_LAYERED style is supported for top-level windows and child windows. Previous Windows versions support WS_EX_LAYERED only for top-level windows. 
	CONSTANT UnsignedLong				WS_EX_LAYOUTRTL				= 4194304				//	If the shell language is Hebrew, Arabic, or another language that supports reading order alignment, the horizontal origin of the window is on the right edge. Increasing horizontal values advance to the left. 
	CONSTANT UnsignedLong				WS_EX_LEFT						= 0						//	The window has generic left-aligned properties. This is the default.
	CONSTANT UnsignedLong				WS_EX_LEFTSCROLLBAR			= 16384					//	If the shell language is Hebrew, Arabic, or another language that supports reading order alignment, the vertical scroll bar (if present) is to the left of the client area. For other languages, the style is ignored.
	CONSTANT UnsignedLong				WS_EX_LTRREADING				= 0						//	The window text is displayed using left-to-right reading-order properties. This is the default.
	CONSTANT UnsignedLong				WS_EX_MDICHILD					= 64						//	The window is a MDI child window.
	CONSTANT UnsignedLong				WS_EX_NOACTIVATE				= 134217728				//	A top-level window created with this style does not become the foreground window when the user clicks it. The system does not bring this window to the foreground when the user minimizes or closes the foreground window.  To activate the window, use the SetActiveWindow or SetForegroundWindow function.  The window does not appear on the taskbar by default. To force the window to appear on the taskbar, use the WS_EX_APPWINDOW style.
	CONSTANT UnsignedLong				WS_EX_NOINHERITLAYOUT		= 1048576				//	The window does not pass its window layout to its child windows.
	CONSTANT UnsignedLong				WS_EX_NOPARENTNOTIFY			= 4						//	The child window created with this style does not send the WM_PARENTNOTIFY message to its parent window when it is created or destroyed.
	CONSTANT UnsignedLong				WS_EX_RIGHT						= 4096					//	The window has generic "right-aligned" properties. This depends on the window class. This style has an effect only if the shell language is Hebrew, Arabic, or another language that supports reading-order alignment; otherwise, the style is ignored.  Using the WS_EX_RIGHT style for static or edit controls has the same effect as using the SS_RIGHT or ES_RIGHT style, respectively. Using this style with button controls has the same effect as using BS_RIGHT and BS_RIGHTBUTTON styles. 
	CONSTANT UnsignedLong				WS_EX_RIGHTSCROLLBAR			= 0						//	The vertical scroll bar (if present) is to the right of the client area. This is the default.
	CONSTANT UnsignedLong				WS_EX_RTLREADING				= 8192					//	If the shell language is Hebrew, Arabic, or another language that supports reading-order alignment, the window text is displayed using right-to-left reading-order properties. For other languages, the style is ignored.
	CONSTANT UnsignedLong				WS_EX_STATICEDGE				= 131072					//	The window has a three-dimensional border style intended to be used for items that do not accept user input.
	CONSTANT UnsignedLong				WS_EX_TOOLWINDOW				= 128						//	The window is intended to be used as a floating toolbar. A tool window has a title bar that is shorter than a normal title bar, and the window title is drawn using a smaller font. A tool window does not appear in the taskbar or in the dialog that appears when the user presses ALT+TAB. If a tool window has a system menu, its icon is not displayed on the title bar. However, you can display the system menu by right-clicking or by typing ALT+SPACE. 
	CONSTANT UnsignedLong				WS_EX_TOPMOST					= 8						//	The window should be placed above all non-topmost windows and should stay above them, even when the window is deactivated. To add or remove this style, use the SetWindowPos function.
	CONSTANT UnsignedLong				WS_EX_TRANSPARENT				= 32						//	The window should not be painted until siblings beneath the window (that were created by the same thread) have been painted. The window appears transparent because the bits of underlying sibling windows have already been painted.  To achieve transparency without these restrictions, use the SetWindowRgn function.
	CONSTANT UnsignedLong				WS_EX_WINDOWEDGE				= 256						//	The window has a border with a raised edge.
	CONSTANT UnsignedLong				WS_EX_OVERLAPPEDWINDOW		= WS_EX_WINDOWEDGE + WS_EX_CLIENTEDGE
																												//	The window is an overlapped window.
	CONSTANT UnsignedLong				WS_EX_PALETTEWINDOW			= WS_EX_WINDOWEDGE + WS_EX_TOOLWINDOW + WS_EX_TOPMOST
																												//	The window is palette window, which is a modeless dialog box that presents an array of commands. 
 	//	Window Styles
	CONSTANT UnsignedLong				WS_BORDER						= 8388608
	CONSTANT UnsignedLong				WS_CAPTION						= 12582912
	CONSTANT UnsignedLong				WS_CHILD							= 1073741824
	CONSTANT UnsignedLong				WS_CHILDWINDOW					= WS_CHILD
	CONSTANT UnsignedLong				WS_CLIPCHILDREN				= 33554432
	CONSTANT UnsignedLong				WS_CLIPSIBLINGS				= 67108864
	CONSTANT UnsignedLong				WS_DISABLED						= 134217728
	CONSTANT UnsignedLong				WS_DLGFRAME						= 4194304
	CONSTANT UnsignedLong				WS_GROUP							= 131072
	CONSTANT UnsignedLong				WS_HSCROLL						= 1048576
	CONSTANT UnsignedLong				WS_MAXIMIZE						= 16777216
	CONSTANT UnsignedLong				WS_MAXIMIZEBOX					= 65536
	CONSTANT UnsignedLong				WS_MINIMIZE						= 536870912
	CONSTANT UnsignedLong				WS_MINIMIZEBOX					= 131072
	CONSTANT UnsignedLong				WS_OVERLAPPED					= 0
	CONSTANT UnsignedLong				WS_ICONIC						= WS_MINIMIZE
	CONSTANT UnsignedLong				WS_POPUP							= 2147483648
	CONSTANT UnsignedLong				WS_VISIBLE						= 268435456
	CONSTANT UnsignedLong				WS_VSCROLL						= 2097152
	CONSTANT UnsignedLong				WS_SYSMENU						= 524288
	CONSTANT UnsignedLong				WS_TABSTOP						= 65536
	CONSTANT UnsignedLong				WS_THICKFRAME					= 262144
	CONSTANT UnsignedLong				WS_TILED							= WS_OVERLAPPED
	CONSTANT UnsignedLong				WS_OVERLAPPEDWINDOW			= WS_OVERLAPPED + WS_CAPTION + WS_SYSMENU + WS_THICKFRAME + WS_MINIMIZEBOX + WS_MAXIMIZEBOX
	CONSTANT UnsignedLong				WS_POPUPWINDOW					= WS_POPUP + WS_BORDER + WS_SYSMENU
	CONSTANT UnsignedLong				WS_TILEDWINDOW					= WS_OVERLAPPEDWINDOW
	CONSTANT UnsignedLong				WS_SIZEBOX						= WS_THICKFRAME

	//	TrackMouseEvent
	CONSTANT UnsignedLong				TME_LEAVE						= 2

Private:

	CONSTANT Long							MAX_PATH							= 256
	
	n_cst_string							invo_string

	Boolean									ib_isUnicode					= TRUE
end variables

forward prototypes
public function boolean of_isunicode ()
public function long of_getfontwidth (ref statictext rst_font, string vs_text)
public function long of_getfontheight (ref statictext rst_font, string vs_text)
private function point of_getfontsize (ref statictext rst_font, string vs_text)
public function string of_getclassname (unsignedlong vul_hwnd)
private function long of_getclassname (unsignedlong vul_hwnd, ref string rs_classname, long vl_maxpath)
public function long of_getclassname (unsignedlong vul_hwnd, ref string rs_classname)
public function unsignedlong of_getdesktopwindow ()
public function boolean of_getcursorpos (ref long rl_x, ref long rl_y)
public function boolean of_setcursorpos (integer vi_x, integer vi_y)
private function boolean of_getcursorpos (ref point rstr_point)
public function boolean of_trackmouseevent (unsignedlong vul_hwndtrack, unsignedlong vul_flags, unsignedlong vul_hovertime)
public function boolean of_trackmouseevent (unsignedlong vul_hwndtrack, unsignedlong vul_flags)
public function unsignedlong of_getwindowlong (unsignedlong vul_hwnd, long vl_index)
public function boolean of_ischild (window vw_ischild)
public function boolean of_ismdichild (window vw_ismdichild)
public function window of_getframe (graphicobject vgo_getframe)
public function menu of_locatemenuitem (menu vm_locate, string vs_classname)
public function window of_getparentwindow (graphicobject vgo_getparent)
private function window of_getparentwindow (graphicobject vgo_getparent, ref string rs_qualifyobject, integer li_level)
public function window of_getparentwindow (graphicobject vgo_getparent, ref string rs_qualifyobject)
public function boolean of_getclientrect (unsignedlong vul_hwnd, ref rect rstr_rectangle)
public function boolean of_getclientrect (unsignedlong vul_hwnd, ref long rl_left, ref long rl_top, ref long rl_right, ref long rl_bottom)
public function integer of_poptooltips (unsignedlong vul_hwnd)
end prototypes

public function boolean of_isunicode ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

Return(ib_isUnicode)
end function

public function long of_getfontwidth (ref statictext rst_font, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

Return(of_getFontSize(rst_font, vs_text).cX)
end function

public function long of_getfontheight (ref statictext rst_font, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

Return(of_getFontSize(rst_font, vs_text).cY)
end function

private function point of_getfontsize (ref statictext rst_font, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

UnsignedLong							lul_hDC,	lul_Handle,	lul_hFont
Point								 		lstr_Size

lstr_size.cX							= -1
lstr_size.cY							= -1

IF IsNull(rst_font) OR NOT IsValid (rst_font) THEN Return(lstr_size)

Long										ll_Len
ll_Len									= Len(vs_Text)

rst_font.Text							= vs_text

// Get the handle of the StaticText Object and create a Device Context
lul_Handle								= Handle(rst_font)
lul_hDC									= GetDC(lul_Handle)

// Get the font in use on the Static Text
lul_hFont								= Send(lul_Handle, WM_GETFONT, 0, 0)

// Select it into the device context
SelectObject(lul_hDC, lul_hFont)

// Get the size of the text
IF of_isUnicode() THEN
	GetTextExtentPoint32(lul_hDC, vs_Text, ll_Len, lstr_Size)
ELSE
	GetTextExtentPoint32A(lul_hDC, vs_Text, ll_Len, lstr_Size)
END IF

//	Release Device Context
ReleaseDC(lul_Handle, lul_hDC)

Return(lstr_size)
end function

public function string of_getclassname (unsignedlong vul_hwnd);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

Long										ll_TextLength
String									ls_ClassName

IF of_isUnicode() THEN
	ll_TextLength						= GetWindowTextLength(vul_HWnd)
ELSE
	ll_TextLength						= GetWindowTextLengthA(vul_HWnd)
END IF

IF ll_TextLength > 0 THEN
	
	ls_ClassName						= Space(ll_TextLength + 1)
	
	IF of_isUnicode() THEN
		ll_TextLength					= GetClassName(vul_Hwnd, ls_ClassName, Len(ls_ClassName))
	ELSE
		ll_TextLength					= GetClassNameA(vul_Hwnd, ls_ClassName, Len(ls_ClassName))
	END IF
	
   Return(ls_ClassName)
	
END IF

Return("")
end function

private function long of_getclassname (unsignedlong vul_hwnd, ref string rs_classname, long vl_maxpath);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

rs_ClassName							= Space(vl_MaxPath)

Long										ll_RC

IF of_isUnicode() THEN
	ll_RC									= GetClassName(vul_HWnd, rs_ClassName, vl_MaxPath)
ELSE
	ll_RC									= GetClassNameA(vul_HWnd, rs_ClassName, vl_MaxPath)
END IF

rs_ClassName							= Trim(rs_ClassName)

Return(ll_RC)
end function

public function long of_getclassname (unsignedlong vul_hwnd, ref string rs_classname);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

Return(of_getClassName(vul_HWnd, rs_ClassName, MAX_PATH))
end function

public function unsignedlong of_getdesktopwindow ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

Return(GetDeskTopWindow())
end function

public function boolean of_getcursorpos (ref long rl_x, ref long rl_y);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

POINT								lstr_Point

Boolean							lb_RC
lb_RC								= GetCursorPos(lstr_Point)
 
IF lb_RC THEN
	rl_X							= lstr_Point.cX
	rl_Y							= lstr_Point.cY
ELSE
	SetNull(rl_X)
	SetNull(rl_Y)
END IF

Return(lb_RC)
end function

public function boolean of_setcursorpos (integer vi_x, integer vi_y);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

Return(setCursorPos(vi_x, vi_y))
end function

private function boolean of_getcursorpos (ref point rstr_point);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

Return(GetCursorPos(rstr_Point))
end function

public function boolean of_trackmouseevent (unsignedlong vul_hwndtrack, unsignedlong vul_flags, unsignedlong vul_hovertime);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

TrackMouseEvent						lstr_TrackMouseEvent

lstr_TrackMouseEvent.cbSize		= 16
lstr_TrackMouseEvent.hWndTrack	= vul_hWndTrack
lstr_TrackMouseEvent.dwFlags		= vul_flags
lstr_TrackMouseEvent.dwHoverTime = vul_hoverTime

Return(TrackMouseEvent(lstr_trackMouseEvent))
end function

public function boolean of_trackmouseevent (unsignedlong vul_hwndtrack, unsignedlong vul_flags);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

Return(of_TrackMouseEvent(vul_hWndTrack, vul_flags, 0))
end function

public function unsignedlong of_getwindowlong (unsignedlong vul_hwnd, long vl_index);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

IF of_isUnicode() THEN
	Return(GetWindowLong(vul_HWnd, vl_Index))
ELSE
	Return(GetWindowLongA(vul_HWnd, vl_Index))
END IF
end function

public function boolean of_ischild (window vw_ischild);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

n_cst_numerical			lnvo_numerical

Boolean						lb_isChild	= FALSE

IF IsValid(vw_isChild) THEN
	
	Long						ll_handle
	ll_handle				= Handle(vw_isChild)
	
	UnsignedLong			lul_windowLong
	lul_windowLong			= of_getWindowLong(ll_handle, GWL_STYLE)															//	Get Style
	
	lb_isChild				= (lnvo_numerical.of_bitWiseAnd(lul_windowLong, WS_CHILD) = WS_CHILD)					//	Test if Child
	
END IF

Return(lb_isChild)
end function

public function boolean of_ismdichild (window vw_ismdichild);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

n_cst_numerical			lnvo_numerical

Boolean						lb_isMDIChild	= FALSE

IF IsValid(vw_isMDIChild) THEN
	
	Long						ll_handle
	ll_handle				= Handle(vw_isMDIChild)
	
	UnsignedLong			lul_windowLong
	lul_windowLong			= of_getWindowLong(ll_handle, GWL_EXSTYLE)														//	Get Extended Style
	
	lb_isMDIChild			= (lnvo_numerical.of_bitWiseAnd(lul_windowLong, WS_EX_MDICHILD) = WS_EX_MDICHILD)	//	Test if MDIChild
	
END IF

Return(lb_isMDIChild)
end function

public function window of_getframe (graphicobject vgo_getframe);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

Window							lw_GetFrame

CHOOSE CASE TypeOf(vgo_GetFrame)
	CASE Window!
		
		lw_GetFrame				= vgo_GetFrame
		
		IF NOT (lw_GetFrame.WindowType = MDI! OR lw_GetFrame.WindowType = MDIHelp!) THEN

			GraphicObject		lgo_GetFrame
			lgo_GetFrame		= lw_GetFrame.ParentWindow()
		
			IF IsValid(lgo_GetFrame) THEN
				IF NOT IsNull(lgo_GetFrame) THEN
					lw_GetFrame	= of_getFrame(lgo_GetFrame)
				ELSE
					SetNull(lw_GetFrame)
				END IF
			END IF
			
		END IF
		
	CASE ELSE
		lw_GetFrame				= of_getFrame(vgo_GetFrame.GetParent())
END CHOOSE

Return(lw_GetFrame)
end function

public function menu of_locatemenuitem (menu vm_locate, string vs_classname);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

String									ls_ClassName
ls_ClassName							= vm_Locate.ClassName()

IF ls_ClassName = Lower(vs_ClassName) THEN Return(vm_Locate)

Menu										lm_Return
Integer									li_Item,	li_Items

li_Items									= UpperBound(vm_Locate.Item[])

FOR li_Item = 1 TO li_Items
	
	lm_Return							= of_LocateMenuItem(vm_Locate.Item[li_Item], vs_ClassName)
	
	IF NOT IsNull(lm_Return) THEN Return(lm_Return)
	
NEXT

SetNull(lm_Return)

Return(lm_Return)
end function

public function window of_getparentwindow (graphicobject vgo_getparent);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

String									ls_Parent
ls_Parent								= vgo_GetParent.ClassName()

Return(of_GetParentWindow(vgo_GetParent, ls_Parent))
end function

private function window of_getparentwindow (graphicobject vgo_getparent, ref string rs_qualifyobject, integer li_level);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

GraphicObject							lgo_Parent
lgo_Parent								= vgo_GetParent.GetParent()

IF (NOT IsValid(lgo_Parent)) OR IsNull(lgo_Parent) THEN
	IF TypeOf(vgo_GetParent) = Menu! OR TypeOf(vgo_GetParent) = MenuCascade! THEN
		
		Menu								lm_GetParent
		lm_GetParent					= vgo_GetParent
		
		lgo_Parent						= lm_GetParent.ParentWindow
		
	ELSE
		//If not valid and not Menu or MenuCascade - Return
		Return(lgo_Parent)
	END IF
END IF

rs_QualifyObject						= lgo_Parent.ClassName() + '.' + rs_QualifyObject

CHOOSE CASE TypeOf(lgo_Parent)
		
	CASE Window!
		
		Return(lgo_Parent)
		
	CASE NonVisualObject!
		
		Window			lw_Null
		SetNull(lw_Null)
		
		Return(lw_Null)
	
END CHOOSE

Return(of_GetParentWindow(lgo_Parent, rs_QualifyObject, li_level))
end function

public function window of_getparentwindow (graphicobject vgo_getparent, ref string rs_qualifyobject);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

//	This method not only finds an object's parentwindow regardless of how many
//	parents it has, it also returns the fully qualified object name in rs_QualifyObject.

String									ls_QualifyObject
ls_QualifyObject						= rs_QualifyObject

IF TypeOf(vgo_GetParent) = Menu! OR TypeOf(vgo_GetParent) = MenuCascade! THEN
	
	//	Because a menu could be a parent menu, we should locate the actual menu item
	//	in the menu before classing it.

	Menu									lm_GetParent
	lm_GetParent						= vgo_GetParent
	
	rs_QualifyObject					= lm_GetParent.ClassName()
	
	IF rs_QualifyObject <> Right(ls_QualifyObject, Len(rs_QualifyObject)) THEN

		String							ls_Parsed[]
		Integer							li_Parsed
		
		li_Parsed						= invo_String.of_ParseToArray(ls_QualifyObject, '.', ls_Parsed[])
		
		rs_QualifyObject				= ls_Parsed[li_Parsed]
		vgo_GetParent					= of_LocateMenuItem(lm_GetParent, rs_QualifyObject)

	END IF
	
ELSE
	rs_QualifyObject					= vgo_GetParent.ClassName()
END IF

Return(of_GetParentWindow(vgo_GetParent, rs_QualifyObject, 0))
end function

public function boolean of_getclientrect (unsignedlong vul_hwnd, ref rect rstr_rectangle);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

Return(GetClientRect(vul_hWnd, rstr_Rectangle))
end function

public function boolean of_getclientrect (unsignedlong vul_hwnd, ref long rl_left, ref long rl_top, ref long rl_right, ref long rl_bottom);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

Rect										lstr_Rectangle

Boolean									lb_RC
lb_RC										= of_getClientRect(vul_hWnd, lstr_Rectangle)

rl_Left									= lstr_Rectangle.Left
rl_Top									= lstr_Rectangle.Top
rl_Right									= lstr_Rectangle.Right
rl_Bottom								= lstr_Rectangle.Bottom

Return(lb_RC)
end function

public function integer of_poptooltips (unsignedlong vul_hwnd);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author: Christopher Harris

String									ls_className
UnsignedLong							lul_hWnd,	lul_hWndParent
UnsignedLong							lul_ID
	
lul_hWnd									= getWindow(vul_hWnd, GW_CHILD)

DO WHILE lul_hWnd > 0
	
	of_getClassName(lul_hWnd, ls_className)

	IF Lower(ls_className) = 'tooltips_class32' THEN

		lul_hWndParent					= GetParent(lul_hWnd)
//		lul_ID							= GetDlgCtrlID(lul_hWnd)
//		
//		of_getClassName(lul_hWndParent, ls_className)
//	
//		ls_className					= ls_className
		
		Return(Send(lul_hWnd, TTM_POP, 0, 0))
		
	END IF
	
	of_popToolTips(lul_hWnd)
	
	lul_hWnd								= getWindow(lul_hWnd, GW_HWNDNEXT)

LOOP

Return(1)
end function

on n_cst_toolbar.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_toolbar.destroy
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
// Original Author: Christopher Harris

Environment									lenv_temp
GetEnvironment(lenv_temp)

ib_isUnicode								= lenv_temp.CharSet = charSetUnicode!
end event

