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
type bitmapfileheader from structure within n_cst_toolbar
end type
type bitmapinfoheader from structure within n_cst_toolbar
end type
type bitmapinfo from structure within n_cst_toolbar
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

type bitmapfileheader from structure
	integer		bftype
	unsignedlong		bfsize
	integer		bfreserved1
	integer		bfreserved2
	unsignedlong		bfoffbits
end type

type bitmapinfoheader from structure
	unsignedlong		bisize
	long		biwidth
	long		biheight
	integer		biplanes
	integer		bibitcount
	unsignedlong		bicompression
	unsignedlong		bisizeimage
	long		bixpelspermeter
	long		biypelspermeter
	unsignedlong		biclrused
	unsignedlong		biclrimportant
end type

type bitmapinfo from structure
	bitmapinfoheader		bmiheader
	unsignedlong		bmicolors[]
end type

global type n_cst_toolbar from nonvisualobject autoinstantiate
end type

type prototypes
Private:

	// PowerBuilder VM Functions
	FUNCTION Long FN_resGetBitmapID_070(String lpImageName) ALIAS FOR "FN_ResGetBitmapID" LIBRARY "pbvm070.dll"
	FUNCTION Long FN_resGetBitmapID_080(String lpImageName) ALIAS FOR "FN_ResGetBitmapID" LIBRARY "pbvm080.dll"
	FUNCTION Long FN_resGetBitmapID_090(String lpImageName) ALIAS FOR "FN_ResGetBitmapID" LIBRARY "pbvm090.dll"
	FUNCTION Long FN_resGetBitmapID_100(String lpImageName) ALIAS FOR "FN_ResGetBitmapID" LIBRARY "pbvm100.dll"
	FUNCTION Long FN_resGetBitmapID_105(String lpImageName) ALIAS FOR "FN_ResGetBitmapID" LIBRARY "pbvm105.dll"
	FUNCTION Long FN_resGetBitmapID_110(String lpImageName) ALIAS FOR "FN_ResGetBitmapID" LIBRARY "pbvm110.dll"
	FUNCTION Long FN_resGetBitmapID_115(String lpImageName) ALIAS FOR "FN_ResGetBitmapID" LIBRARY "pbvm115.dll"
	FUNCTION Long FN_resGetBitmapID_120(String lpImageName) ALIAS FOR "FN_ResGetBitmapID" LIBRARY "pbvm120.dll"
	FUNCTION Long FN_resGetBitmapID_121(String lpImageName) ALIAS FOR "FN_ResGetBitmapID" LIBRARY "pbvm121.dll"
	FUNCTION Long FN_resGetBitmapID_125(String lpImageName) ALIAS FOR "FN_ResGetBitmapID" LIBRARY "pbvm125.dll"
	FUNCTION Long FN_resGetBitmapID_126(String lpImageName) ALIAS FOR "FN_ResGetBitmapID" LIBRARY "pbvm126.dll"

	FUNCTION Long FN_resGetIconID_070(String lpImageName) ALIAS FOR "FN_ResGetIconID" LIBRARY "pbvm070.dll"
	FUNCTION Long FN_resGetIconID_080(String lpImageName) ALIAS FOR "FN_ResGetIconID" LIBRARY "pbvm080.dll"
	FUNCTION Long FN_resGetIconID_090(String lpImageName) ALIAS FOR "FN_ResGetIconID" LIBRARY "pbvm090.dll"
	FUNCTION Long FN_ResGetIconID_100(String lpImageName) ALIAS FOR "FN_ResGetIconID" LIBRARY "pbvm100.dll"
	FUNCTION Long FN_ResGetIconID_105(String lpImageName) ALIAS FOR "FN_ResGetIconID" LIBRARY "pbvm105.dll"
	FUNCTION Long FN_ResGetIconID_110(String lpImageName) ALIAS FOR "FN_ResGetIconID" LIBRARY "pbvm110.dll"
	FUNCTION Long FN_ResGetIconID_115(String lpImageName) ALIAS FOR "FN_ResGetIconID" LIBRARY "pbvm115.dll"
	FUNCTION Long FN_ResGetIconID_120(String lpImageName) ALIAS FOR "FN_ResGetIconID" LIBRARY "pbvm120.dll"
	FUNCTION Long FN_ResGetIconID_121(String lpImageName) ALIAS FOR "FN_ResGetIconID" LIBRARY "pbvm121.dll"
	FUNCTION Long FN_ResGetIconID_125(String lpImageName) ALIAS FOR "FN_ResGetIconID" LIBRARY "pbvm125.dll"
	FUNCTION Long FN_ResGetIconID_126(String lpImageName) ALIAS FOR "FN_ResGetIconID" LIBRARY "pbvm126.dll"

	FUNCTION Long FN_resGetBitMapName_070(String lpImageName) ALIAS FOR "FN_ResGetBitmapName" LIBRARY "pbvm070.dll"
	FUNCTION Long FN_resGetBitMapName_080(String lpImageName) ALIAS FOR "FN_ResGetBitmapName" LIBRARY "pbvm080.dll"
	FUNCTION Long FN_resGetBitMapName_090(String lpImageName) ALIAS FOR "FN_ResGetBitmapName" LIBRARY "pbvm090.dll"
	FUNCTION Long FN_ResGetBitMapName_100(String lpImageName) ALIAS FOR "FN_ResGetBitmapName" LIBRARY "pbvm100.dll"
	FUNCTION Long FN_ResGetBitMapName_105(String lpImageName) ALIAS FOR "FN_ResGetBitmapName" LIBRARY "pbvm105.dll"
	FUNCTION Long FN_ResGetBitMapName_110(String lpImageName) ALIAS FOR "FN_ResGetBitmapName" LIBRARY "pbvm110.dll"
	FUNCTION Long FN_ResGetBitMapName_115(String lpImageName) ALIAS FOR "FN_ResGetBitmapName" LIBRARY "pbvm115.dll"
	FUNCTION Long FN_ResGetBitMapName_120(String lpImageName) ALIAS FOR "FN_ResGetBitmapName" LIBRARY "pbvm120.dll"
	FUNCTION Long FN_ResGetBitMapName_121(String lpImageName) ALIAS FOR "FN_ResGetBitmapName" LIBRARY "pbvm121.dll"
	FUNCTION Long FN_ResGetBitMapName_125(String lpImageName) ALIAS FOR "FN_ResGetBitmapName" LIBRARY "pbvm125.dll"
	FUNCTION Long FN_ResGetBitMapName_126(String lpImageName) ALIAS FOR "FN_ResGetBitmapName" LIBRARY "pbvm126.dll"

	//	Windows API Functions
	FUNCTION Long SendMessage_ToolTip(unsignedLong hWnd, Long msg, Long wParam, REF TOOLINFO lpToolInfo) LIBRARY "user32.dll" ALIAS FOR "SendMessageW"
	FUNCTION Long SendMessage_ToolTipA(unsignedLong hWnd, Long msg, Long wParam, REF TOOLINFO lpToolInfo) LIBRARY "user32.dll" ALIAS FOR "SendMessageA;Ansi"
	
	FUNCTION boolean GetTextExtentPoint32(unsignedLong hDC, string lpString, long c, REF point lpSize) LIBRARY "gdi32.dll" ALIAS FOR "GetTextExtentPoint32W"
	FUNCTION boolean GetTextExtentPoint32A(unsignedLong hDC, string lpString, long c, REF point lpSize) LIBRARY "gdi32.dll" ALIAS FOR "GetTextExtentPoint32A;Ansi"
	FUNCTION Integer GetMapMode(unsignedLong hDC) LIBRARY "gdi32.dll"
	FUNCTION Integer SetMapMode(unsignedLong hDC, Integer fnMapMode) LIBRARY "gdi32.dll"
	
	FUNCTION boolean GetTextMetrics(unsignedLong hDC, REF TextMetric lpTM) LIBRARY "gdi32.dll" ALIAS FOR "GetTextMetricsW"
	FUNCTION boolean GetTextMetricsA(unsignedLong hDC, REF TextMetric lpTM) LIBRARY "gdi32.dll" ALIAS FOR "GetTextMetricsA;Ansi"

	FUNCTION unsignedLong SelectObject(unsignedLong hDC, unsignedLong hObject) LIBRARY "gdi32.dll"
	FUNCTION unsignedLong DeleteObject(unsignedLong hObject) LIBRARY "gdi32.dll"
	
	FUNCTION unsignedLong GetDC(unsignedLong hwnd) LIBRARY "user32.dll"
	FUNCTION unsignedLong ReleaseDC(unsignedLong hwnd,ulong hDC) LIBRARY "user32.dll"
	FUNCTION boolean DeleteDC(unsignedLong hwnd) LIBRARY "gdi32.dll"
	FUNCTION unsignedLong CreateCompatibleDC(unsignedLong hDC) LIBRARY "gdi32.dll"
	
	FUNCTION UnsignedLong GetWindow(UnsignedLong hWnd, Integer uCmd) LIBRARY "user32.dll"
	FUNCTION UnsignedLong GetDesktopWindow() LIBRARY "user32.dll"
	FUNCTION UnsignedLong GetParent(UnsignedLong hWnd) LIBRARY "user32.dll"
	FUNCTION Integer GetDlgCtrlID(UnsignedLong hWnd) LIBRARY "user32.dll"
	
	FUNCTION UnsignedLong GetTempPath(unsignedLong nBufferLength, REF String lpBuffer) ALIAS FOR "GetTempPathW" LIBRARY "kernel32.dll"
	FUNCTION UnsignedLong GetTempPathA(unsignedLong nBufferLength, REF String lpBuffer) ALIAS FOR "GetTempPathA;Ansi" LIBRARY "kernel32.dll"
	
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
	
	FUNCTION Unsignedlong LoadLibrary(String lpFileName) ALIAS FOR "LoadLibraryW" LIBRARY "kernel32.dll"
	FUNCTION Unsignedlong LoadLibraryA(String lpFileName) ALIAS FOR "LoadLibraryA;Ansi" LIBRARY "kernel32.dll"

	FUNCTION Boolean FreeLibrary(Unsignedlong hModule) LIBRARY "kernel32.dll"

	FUNCTION UnsignedLong LoadImage(unsignedLong hInst, String lpszName, unsignedLong uType, Long cxDesired, Long cyDesired, unsignedLong fuLoad) LIBRARY "user32.dll" ALIAS FOR "LoadImageW"
	FUNCTION UnsignedLong LoadImageA(unsignedLong hInst, String lpszName, unsignedLong uType, Long cxDesired, Long cyDesired, unsignedLong fuLoad) LIBRARY "user32.dll" ALIAS FOR "LoadImageA;Ansi"
	
	FUNCTION Long GetDIBits(unsignedLong hDC, unsignedLong hBitMap, unsignedInteger uStartScan, unsignedInteger cScanLines, REF blob lpvBits, REF BITMAPINFO lpBI, unsignedInteger uUsage) Library "gdi32.dll"
	FUNCTION Long GetDIBits(unsignedLong hDC, unsignedLong hBitMap, unsignedInteger uStartScan, unsignedInteger cScanLines, unsignedLong lpvBits, REF BITMAPINFO lpBI, unsignedInteger uUsage) Library "gdi32.dll"
	
	SUBROUTINE CopyBitmapFileHeader(REF blob rblb_Destination, REF BITMAPFILEHEADER rstr_source, long vl_length) LIBRARY "kernel32.dll" ALIAS FOR "RtlMoveMemory"
	SUBROUTINE CopyBitmapInfo(REF blob rblb_Destination, REF BITMAPINFO rstr_source, long vl_length) LIBRARY "kernel32.dll" ALIAS FOR "RtlMoveMemory"

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

	//	MapMode
	CONSTANT Integer						MM_TEXT							= 1						//	Each logical unit is mapped to one device pixel. Positive x is to the right; positive y is down.
	CONSTANT Integer						MM_LOMETRIC						= 2						//	Each logical unit is mapped to 0.1 millimeter. Positive x is to the right; positive y is up.
	CONSTANT Integer						MM_HIMETRIC						= 3						//	Each logical unit is mapped to 0.01 millimeter. Positive x is to the right; positive y is up.
	CONSTANT Integer						MM_LOENGLISH					= 4						//	Each logical unit is mapped to 0.01 inch. Positive x is to the right; positive y is up.
	CONSTANT Integer						MM_HIENGLISH					= 5						//	Each logical unit is mapped to 0.001 inch. Positive x is to the right; positive y is up.
	CONSTANT Integer						MM_TWIPS							= 6						//	Each logical unit is mapped to 0.001 inch. Positive x is to the right; positive y is up.
	CONSTANT Integer						MM_ISOTROPIC					= 7						//	Logical units are mapped to arbitrary device units with equally scaled axes; that is, one unit along the x-axis is equal to one unit along the y-axis.
																												//	The META_SETWINDOWEXT and META_SETVIEWPORTEXT records specify the units and the orientation of the axes.  The processing application SHOULD make adjustments as necessary to ensure the x and y units remain the same size. For example, when the window extent is set, the viewport SHOULD be adjusted to keep the units isotropic.
	CONSTANT Integer						MM_ANISOTROPIC					= 8						//	Logical units are mapped to arbitrary units with arbitrarily scaled axes.

	//	Load Image
	CONSTANT Long							LR_CREATEDIBSECTION			= 8192					// When the uType parameter specifies IMAGE_BITMAP, causes the function to return a DIB section bitmap rather than a compatible bitmap. This flag is useful for loading a bitmap without mapping it to the colors of the display device.
	CONSTANT Long							LR_DEFAULTCOLOR				= 0						// The default flag; it does nothing. All it means is "not LR_MONOCHROME".
	CONSTANT Long							LR_DEFAULTSIZE					= 64						// Uses the width or height specified by the system metric values for cursors or icons, if the cxDesired or cyDesired values are set to zero. If this flag is not specified and cxDesired and cyDesired are set to zero, the function uses the actual resource size. If the resource contains multiple images, the function uses the size of the first image.
	CONSTANT Long							LR_LOADFROMFILE				= 16						// Loads the stand-alone image from the file specified by lpszName (icon, cursor, or bitmap file).
	CONSTANT Long							LR_LOADMAP3DCOLORS			= 4096					// Searches the color table for the image and replaces the following shades of gray with the corresponding 3-D color.
																												//	Dk Gray, RGB(128,128,128) with COLOR_3DSHADOW
																												//	Gray, RGB(192,192,192) with COLOR_3DFACE
																												//	Lt Gray, RGB(223,223,223) with COLOR_3DLIGHT
																												//	Do not use this option if you are loading a bitmap with a color depth greater than 8bpp.
	CONSTANT Long							LR_LOADTRANSPARENT			= 32						// Retrieves the color value of the first pixel in the image and replaces the corresponding entry in the color table with the default window color (COLOR_WINDOW). All pixels in the image that use that entry become the default window color. This value applies only to images that have corresponding color tables.
																												//	Do not use this option if you are loading a bitmap with a color depth greater than 8bpp.
																												//	If fuLoad includes both the LR_LOADTRANSPARENT and LR_LOADMAP3DCOLORS values, LR_LOADTRANSPARENT takes precedence. However, the color table entry is replaced with COLOR_3DFACE rather than COLOR_WINDOW.
	CONSTANT Long							LR_MONOCHROME					= 1						// Loads the image in black and white.
	CONSTANT Long							LR_SHARED						= 32768					// Shares the image handle if the image is loaded multiple times. If LR_SHARED is not set, a second call to LoadImage for the same resource will load the image again and return a different handle. 
																												//	When you use this flag, the system will destroy the resource when it is no longer needed.
																												//	Do not use LR_SHARED for images that have non-standard sizes, that may change after loading, or that are loaded from a file.
																												//	When loading a system icon or cursor, you must use LR_SHARED or the function will fail to load the resource.
																												//	This function finds the first image in the cache with the requested resource name, regardless of the size requested.
	CONSTANT Long							LR_VGACOLOR						= 128						// Uses true VGA colors.

	//	Load Image Type
	CONSTANT Long							IMAGE_BITMAP					= 0						//	Loads a bitMap
	CONSTANT Long							IMAGE_ICON						= 1						//	Loads an icon
	CONSTANT Long							IMAGE_CURSOR					= 2						//	Loads a cursor

	//	GetDIBits
	CONSTANT Long							DIB_PAL_COLORS					= 1						//	The color table should consist of an array of 16-bit indexes into the current logical palette.
	CONSTANT Long							DIB_RGB_COLORS					= 0						//	The color table should consist of literal red, green, blue (RGB) values.

Private:

	CONSTANT Long							MAX_PATH							= 256
	
	n_cst_string							invo_string

	Boolean									ib_isUnicode					= TRUE
	Double									idbl_PBVersion					= 0.0
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
private function double of_pbversion ()
private function long of_resgeticonid (string vs_imagename)
public function string of_getimagename (string vs_imagename)
private function string of_gettemppath ()
private function unsignedLong of_loadlibrary (string vs_libraryname)
private function long of_resgetbitmapid (string vs_imagename)
private function long of_resgetbitmapname (string vs_imagename)
private function string of_pbvmlibrary ()
private function unsignedlong of_loadimage (unsignedlong vul_hinstance, string vs_filename, unsignedlong vul_type, long vl_cxdesired, long vl_cydesired, unsignedlong vul_loadoptions)
end prototypes

public function boolean of_isunicode ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(ib_isUnicode)
end function

public function long of_getfontwidth (ref statictext rst_font, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_getFontSize(rst_font, vs_text).cX)
end function

public function long of_getfontheight (ref statictext rst_font, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(of_getFontSize(rst_font, vs_text).cY)
end function

private function point of_getfontsize (ref statictext rst_font, string vs_text);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

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
// Original Author:	Christopher Harris

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
// Original Author:	Christopher Harris

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
// Original Author:	Christopher Harris

Return(of_getClassName(vul_HWnd, rs_ClassName, MAX_PATH))
end function

public function unsignedlong of_getdesktopwindow ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(GetDeskTopWindow())
end function

public function boolean of_getcursorpos (ref long rl_x, ref long rl_y);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

POINT										lstr_Point

Boolean									lb_RC
lb_RC										= GetCursorPos(lstr_Point)
 
IF lb_RC THEN
	rl_X									= lstr_Point.cX
	rl_Y									= lstr_Point.cY
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
// Original Author:	Christopher Harris

Return(setCursorPos(vi_x, vi_y))
end function

private function boolean of_getcursorpos (ref point rstr_point);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(GetCursorPos(rstr_Point))
end function

public function boolean of_trackmouseevent (unsignedlong vul_hwndtrack, unsignedlong vul_flags, unsignedlong vul_hovertime);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

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
// Original Author:	Christopher Harris

Return(of_TrackMouseEvent(vul_hWndTrack, vul_flags, 0))
end function

public function unsignedlong of_getwindowlong (unsignedlong vul_hwnd, long vl_index);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

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
// Original Author:	Christopher Harris

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
// Original Author:	Christopher Harris

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
// Original Author:	Christopher Harris

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
		
	CASE Menu!, MenuCasCade!
		lw_getFrame				= of_getFrame(of_getParentWindow(vgo_getFrame))
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
// Original Author:	Christopher Harris

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
// Original Author:	Christopher Harris

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
// Original Author:	Christopher Harris

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
// Original Author:	Christopher Harris

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
// Original Author:	Christopher Harris

Return(GetClientRect(vul_hWnd, rstr_Rectangle))
end function

public function boolean of_getclientrect (unsignedlong vul_hwnd, ref long rl_left, ref long rl_top, ref long rl_right, ref long rl_bottom);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

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
// Original Author:	Christopher Harris

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

private function double of_pbversion ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Return(idbl_PBVersion)
end function

private function long of_resgeticonid (string vs_imagename);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_ID

CHOOSE CASE of_PBVersion()
	CASE 7
		ll_ID								= FN_resGetIconID_070(vs_imageName)
	CASE 8
		ll_ID								= FN_resGetIconID_080(vs_imageName)
	CASE 9
		ll_ID								= FN_resGetIconID_090(vs_imageName)
	CASE 10
		ll_ID								= FN_resGetIconID_100(vs_imageName)
	CASE 10.5
		ll_ID								= FN_resGetIconID_105(vs_imageName)
	CASE 11
		ll_ID								= FN_resGetIconID_110(vs_imageName)
	CASE 11.5
		ll_ID								= FN_resGetIconID_115(vs_imageName)
	CASE 12
		ll_ID								= FN_resGetIconID_120(vs_imageName)
	CASE 12.1
		ll_ID								= FN_resGetIconID_121(vs_imageName)
	CASE 12.5
		ll_ID								= FN_resGetIconID_125(vs_imageName)
	CASE 12.6
		ll_ID								= FN_resGetIconID_126(vs_imageName)
	CASE ELSE
		ll_ID								=													&
			MessageBox('Programmer Error', 'Unsupported version of PowerBuilder for icon search.') * -1
END CHOOSE

Return(ll_ID)
end function

public function string of_getimagename (string vs_imagename);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris
//			Resources:	Roland Smith	(bitMap project from 2010 - www.topWizProgramming.com)
//							Omar Parra		(uo_coolButton project from 2006)
//							WikiPedia		(en.wikiPedia.org/wiki/BMP_file_format)

IF Right(vs_imageName, 1) <> '!' THEN
	IF FileExists(vs_imageName) THEN
		Return(vs_imageName)
	ELSE
		Return('')
	END IF
END IF

String									ls_tempPath
ls_tempPath								= of_getTempPath()

String									ls_PBVersion
ls_PBVersion							= String(of_PBVersion() * 10, '000')

String									ls_fileName
ls_fileName								= ls_tempPath + Left(vs_imageName, Len(vs_imageName) - 1) + '_' + ls_PBVersion + '.bmp'

IF FileExists(ls_fileName) THEN Return(ls_fileName)

Long										ll_bitMapID
ll_bitMapID								= of_resGetBitmapID(vs_imageName)
 
IF ll_bitMapID <= 0 THEN Return('')
	
unsignedLong							lul_Module
unsignedlong							lul_hBitmap
	
lul_Module								= of_LoadLibrary(of_PBVMLibrary())
	
IF isNull(lul_module) THEN Return('')

String									ls_ResourceID
ls_ResourceID							= "#" + String(ll_bitMapID)
		
// Get a handle to the bitmap
lul_hBitmap								= of_LoadImage(lul_Module, ls_ResourceID, IMAGE_BITMAP, 0, 0, LR_DEFAULTCOLOR)

IF lul_hBitMap <= 0 THEN Return('')

CONSTANT Integer						BITMAPTYPE		= 19778						//	x42 (B) and x4D (M)
BITMAPINFO								lstr_Info
BITMAPFILEHEADER						lstr_Header
Blob										lblb_header,	lblb_info,	lblb_bitMap
Integer									li_pixels

// Get the device context of window and allocate memory
UnsignedLong							lul_hDC_memory
lul_hDC_memory							= CreateCompatibleDC(0)
		
// Select an object into the specified device context
SelectObject(lul_hDC_memory, lul_hBitmap)

lstr_Info.bmiHeader.biSize			= 40												//	Size of structure

// Get the bitMapInfo
IF GetDIBits(lul_hDC_memory, lul_hBitmap, 0, 0, 0, lstr_Info, DIB_RGB_COLORS) > 0 THEN
				
	li_pixels							= lstr_Info.bmiHeader.biBitCount
	lstr_Info.bmiColors[li_pixels]													&
											= 0
	IF of_isUnicode() THEN
		lblb_bitMap						= Blob(Space(lstr_Info.bmiHeader.biSizeImage / 2))
	ELSE
		lblb_bitMap						= Blob(Space(lstr_Info.bmiHeader.biSizeImage))
	END IF
	
	// Get the actual bits
	GetDIBits(lul_hDC_memory, lul_hBitmap, 0, abs(lstr_Info.bmiHeader.biHeight), lblb_bitMap, lstr_Info, DIB_RGB_COLORS) 
		
	// Create a bitmap header
	lstr_Header.bfType				= BITMAPTYPE
	lstr_Header.bfSize				= lstr_Info.bmiHeader.biSizeImage
	lstr_Header.bfOffBits			= 54 + (li_pixels * 4)						//	Size of header (14) + size of info (40) + 4 bytes per pixel 
				
	// Copy the header structure to a blob
	IF of_isUnicode() THEN
		IF of_PBVersion() = 12.6 THEN
			
			//	Allow for PB 12.6 byte alignment shift of two extra bytes
			lblb_header					= Blob(Space(16 / 2))						
			
			CopyBitmapFileHeader(lblb_header, lstr_Header, 16)
			
			//	Copy the header, minus the two byte alignment shift
			lblb_header					= blobMid(lblb_header, 1, 2) + blobMid(lblb_header, 5)
			
		ELSE
			
			lblb_header					= Blob(Space(14 / 2))
			CopyBitmapFileHeader(lblb_header, lstr_Header, 14)
			
		END IF
	ELSE
		
		lblb_header						= Blob(Space(14))
		CopyBitmapFileHeader(lblb_header, lstr_Header, 14)
		
	END IF
	
	// Copy the info structure to a blob
	IF of_isUnicode() THEN
		lblb_Info						= Blob(Space((40 + li_pixels * 4) / 2))
	ELSE
		lblb_Info						= Blob(Space((40 + li_pixels * 4)))
	END IF
	
	CopyBitmapInfo(lblb_Info, lstr_Info, 40 + li_pixels * 4)
				
	// Concatenate the parts into a whole bitMap
	lblb_bitMap							= lblb_header + lblb_info + lblb_bitMap
				
	Long									ll_file
	ll_file								= FileOpen(ls_fileName, StreamMode!, Write!, LockWrite!, Replace!)
		
	UnsignedLong						lul_length
	lul_length							= Len(lblb_bitMap)
				
	Long									ll_written
	ll_written 							= FileWriteEx(ll_file, lblb_bitMap, lul_length)
			
	IF ll_written <> lul_length THEN
		ls_fileName						= ''
	END IF
				
	FileClose(ll_file)
				
END IF
			
// Clean up handles
DeleteDC(lul_hDC_memory)

// Delete bitmap from memory
DeleteObject(lul_hBitmap)
		
// Free the library
FreeLibrary(lul_Module)

Return(Trim(ls_fileName))
end function

private function string of_gettemppath ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_tempPath
ls_tempPath								= Space(MAX_PATH + 1)

Long										ll_RC

IF of_isUnicode() THEN
	ll_RC									= GetTempPath(MAX_PATH + 1, ls_tempPath)
ELSE
	ll_RC									= GetTempPathA(MAX_PATH + 1, ls_tempPath)
END IF

ls_tempPath								= Trim(ls_tempPath)

Return(ls_tempPath)
end function

private function unsignedLong of_loadlibrary (string vs_libraryname);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

UnsignedLong							lul_hModule

IF of_isUnicode() THEN
	lul_hModule							= LoadLibrary(vs_libraryName)
ELSE
	lul_hModule							= LoadLibraryA(vs_libraryName)
END IF

Return(lul_hModule)
end function

private function long of_resgetbitmapid (string vs_imagename);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_ID

CHOOSE CASE of_PBVersion()
	CASE 7
		ll_ID								= FN_resGetBitmapID_070(vs_imageName)
	CASE 8
		ll_ID								= FN_resGetBitmapID_080(vs_imageName)
	CASE 9
		ll_ID								= FN_resGetBitmapID_090(vs_imageName)
	CASE 10
		ll_ID								= FN_resGetBitmapID_100(vs_imageName)
	CASE 10.5
		ll_ID								= FN_resGetBitmapID_105(vs_imageName)
	CASE 11
		ll_ID								= FN_resGetBitmapID_110(vs_imageName)
	CASE 11.5
		ll_ID								= FN_resGetBitmapID_115(vs_imageName)
	CASE 12
		ll_ID								= FN_resGetBitmapID_120(vs_imageName)
	CASE 12.1
		ll_ID								= FN_resGetBitmapID_121(vs_imageName)
	CASE 12.5
		ll_ID								= FN_resGetBitmapID_125(vs_imageName)
	CASE 12.6
		ll_ID								= FN_resGetBitmapID_126(vs_imageName)
	CASE ELSE
		ll_ID								=													&
			MessageBox('Programmer Error', 'Unsupported version of PowerBuilder for bitMap search.') * -1
END CHOOSE

Return(ll_ID)
end function

private function long of_resgetbitmapname (string vs_imagename);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

Long										ll_ID

CHOOSE CASE of_PBVersion()
	CASE 7
		ll_ID								= FN_resGetBitMapName_070(vs_imageName)
	CASE 8
		ll_ID								= FN_resGetBitMapName_080(vs_imageName)
	CASE 9
		ll_ID								= FN_resGetBitMapName_090(vs_imageName)
	CASE 10
		ll_ID								= FN_resGetBitMapName_100(vs_imageName)
	CASE 10.5
		ll_ID								= FN_resGetBitMapName_105(vs_imageName)
	CASE 11
		ll_ID								= FN_resGetBitMapName_110(vs_imageName)
	CASE 11.5
		ll_ID								= FN_resGetBitMapName_115(vs_imageName)
	CASE 12
		ll_ID								= FN_resGetBitMapName_120(vs_imageName)
	CASE 12.1
		ll_ID								= FN_resGetBitMapName_121(vs_imageName)
	CASE 12.5
		ll_ID								= FN_resGetBitMapName_125(vs_imageName)
	CASE 12.6
		ll_ID								= FN_resGetBitMapName_126(vs_imageName)
	CASE ELSE
		ll_ID								=													&
			MessageBox('Programmer Error', 'Unsupported version of PowerBuilder for bitMapName search.') * -1
END CHOOSE

Return(ll_ID)
end function

private function string of_pbvmlibrary ();// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

String									ls_library

CHOOSE CASE of_PBVersion()
	CASE 7
		ls_library						= 'pbvm070.dll'
	CASE 8
		ls_library						= 'pbvm080.dll'
	CASE 9
		ls_library						= 'pbvm090.dll'
	CASE 10
		ls_library						= 'pbvm100.dll'
	CASE 10.5
		ls_library						= 'pbvm105.dll'
	CASE 11
		ls_library						= 'pbvm110.dll'
	CASE 11.5
		ls_library						= 'pbvm115.dll'
	CASE 12
		ls_library						= 'pbvm120.dll'
	CASE 12.1
		ls_library						= 'pbvm121.dll'
	CASE 12.5
		ls_library						= 'pbvm125.dll'
	CASE 12.6
		ls_library						= 'pbvm126.dll'
	CASE ELSE
		
		ls_library						= ''
		
		MessageBox('Programmer Error', 'Unsupported version of PowerBuilder for load VM library.')
		
END CHOOSE

Return(ls_library)
end function

private function unsignedlong of_loadimage (unsignedlong vul_hinstance, string vs_filename, unsignedlong vul_type, long vl_cxdesired, long vl_cydesired, unsignedlong vul_loadoptions);// CopyRight (c) 2016 by Christopher Harris, all rights reserved.
//
// This code and accompanying materials are made available under the GPLv3
// license which accompanies this distribution and can be found at:
//
// http://www.gnu.org/licenses/gpl-3.0.html.
//
// Original Author:	Christopher Harris

UnsignedLong							lul_hModule

IF of_isUnicode() THEN
	lul_hModule							= LoadImage(vul_hInstance, vs_fileName, vul_type, vl_cxDesired, vl_cydesired, vul_loadOptions)
ELSE
	lul_hModule							= LoadImageA(vul_hInstance, vs_fileName, vul_type, vl_cxDesired, vl_cydesired, vul_loadOptions)
END IF

Return(lul_hModule)
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
// Original Author:	Christopher Harris

Environment									lenv_temp
GetEnvironment(lenv_temp)

TRY
	ib_isUnicode							= lenv_temp.CharSet = charSetUnicode!
CATCH (RunTimeError						RunError)
	ib_isUnicode							= FALSE
END TRY

idbl_PBVersion								= lenv_temp.PBMajorRevision + (lenv_temp.PBMinorRevision / 10)
end event

