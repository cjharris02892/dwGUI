HA$PBExportHeader$n_cst_color.sru
$PBExportComments$Extension Color service
forward
global type n_cst_color from n_base
end type
end forward

global type n_cst_color from n_base autoinstantiate
end type

type prototypes
Private:

	FUNCTION UnsignedLong GetSysColor(Integer vi_Index) LIBRARY "user32.dll"
end prototypes

type variables
Public:

	//	System colors
	CONSTANT Integer			COLOR_SCROLLBAR					= 0						//	Scroll bar gray area.
	CONSTANT Integer			COLOR_BACKGROUND					= 1						//	Desktop.
	CONSTANT Integer			COLOR_ACTIVECAPTION				= 2						//	Active window title bar.  Specifies the left side color in the color gradient of an active window's title bar if the gradient effect is enabled.
	CONSTANT Integer			COLOR_INACTIVECAPTION			= 3						//	Inactive window caption.  Specifies the left side color in the color gradient of an inactive window's title bar if the gradient effect is enabled.
	CONSTANT Integer			COLOR_MENU							= 4						//	Menu background.
	CONSTANT Integer			COLOR_WINDOW						= 5						//	Window background.
	CONSTANT Integer			COLOR_WINDOWFRAME					= 6						//	Window frame.
	CONSTANT Integer			COLOR_MENUTEXT						= 7						//	Text in menus.
	CONSTANT Integer			COLOR_WINDOWTEXT					= 8						//	Text in windows.
	CONSTANT Integer			COLOR_CAPTIONTEXT					= 9						//	Text in caption, size box, and scroll bar arrow box.
	CONSTANT Integer			COLOR_ACTIVEBORDER				= 10						//	Active window border.
	CONSTANT Integer			COLOR_INACTIVEBORDER				= 11						//	Inactive window border.
	CONSTANT Integer			COLOR_APPWORKSPACE				= 12						//	Background color of multiple document interface (MDI) applications.
	CONSTANT Integer			COLOR_HIGHLIGHT					= 13						//	Item(s) selected in a control.
	CONSTANT Integer			COLOR_HIGHLIGHTTEXT				= 14						//	Text of item(s) selected in a control.
	CONSTANT Integer			COLOR_BTNFACE						= 15						//	Face color for three-dimensional display elements and for dialog box backgrounds.
	CONSTANT Integer			COLOR_BTNSHADOW					= 16						//	Shadow color for three-dimensional display elements (for edges facing away from the light source).
	CONSTANT Integer			COLOR_GRAYTEXT						= 17						//	Grayed (disabled) text. This color is set to 0 if the current display driver does not support a solid gray color.
	CONSTANT Integer			COLOR_BTNTEXT						= 18						//	Text on push buttons.
	CONSTANT Integer			COLOR_INACTIVECAPTIONTEXT		= 19						//	Color of text in an inactive caption.
	CONSTANT Integer			COLOR_BTNHIGHLIGHT				= 20						//	Highlight color for three-dimensional display elements (for edges facing the light source.)
	CONSTANT Integer			COLOR_3DDKSHADOW					= 21						//	Dark shadow for three-dimensional display elements.
	CONSTANT Integer			COLOR_3DLIGHT						= 22						//	Light color for three-dimensional display elements (for edges facing the light source.)
	CONSTANT Integer			COLOR_INFOTEXT						= 23						//	Text color for tooltip controls.
	CONSTANT Integer			COLOR_INFOBK						= 24						//	Background color for tooltip controls.
	CONSTANT Integer			COLOR_HOTLIGHT						= 26						//	Color for a hyperlink or hot-tracked item.
	CONSTANT Integer			COLOR_GRADIENTACTIVECAPTION	= 27						//	Right side color in the color gradient of an active window's title bar. COLOR_ACTIVECAPTION specifies the left side color. Use SPI_GETGRADIENTCAPTIONS with the SystemParametersInfo function to determine whether the gradient effect is enabled.
	CONSTANT Integer			COLOR_GRADIENTINACTIVECAPTION	= 28						//	Right side color in the color gradient of an inactive window's title bar. COLOR_INACTIVECAPTION specifies the left side color.
	CONSTANT Integer			COLOR_MENUHILIGHT					= 29						//	The color used to highlight menu items when the menu appears as a flat menu (see SystemParametersInfo). The highlighted menu item is outlined with COLOR_HIGHLIGHT.  Windows 2000:  This value is not supported. 
	CONSTANT Integer			COLOR_MENUBAR						= 30						//	The background color for the menu bar when menus appear as flat menus (see SystemParametersInfo). However, COLOR_MENU continues to specify the background color of the menu popup.  Windows 2000:  This value is not supported. 

	CONSTANT Integer			COLOR_DESKTOP						= COLOR_BACKGROUND
	CONSTANT Integer			COLOR_3DFACE						= COLOR_BTNFACE
	CONSTANT Integer			COLOR_3DSHADOW						= COLOR_BTNSHADOW
	CONSTANT Integer			COLOR_3DHIGHLIGHT					= COLOR_BTNHIGHLIGHT
	CONSTANT Integer			COLOR_3DHILIGHT					= COLOR_BTNHIGHLIGHT
	CONSTANT Integer			COLOR_BTNHILIGHT					= COLOR_BTNHIGHLIGHT

	CONSTANT Integer			COLOR_ALTERNATEBTNFACE			= 25						//	Undocumented, constant's name unknown

	CONSTANT Integer			COLOR_MIN							= 0
	CONSTANT Integer			COLOR_MAX							= 28

Private:

	Long							il_ActiveBorder					= -1
	Long							il_ActiveCaption					= -1
	Long							il_AppWorkSpace					= -1
	Long							il_Background						= -1
	Long							il_ButtonAlternateFace			= -1
	Long							il_3DDkShadow						= -1
	Long							il_ButtonFace						= -1
	Long							il_ButtonHilight					= -1
	Long							il_3DLight							= -1
	Long							il_ButtonShadow					= -1
	Long							il_ButtonText						= -1
	Long							il_GradientActiveCaption		= -1
	Long							il_GradientInactiveCaption		= -1
	Long							il_GrayText							= -1
	Long							il_Hilight							= -1
	Long							il_HilightText						= -1
	Long							il_HotTracking						= -1
	Long							il_InactiveBorder					= -1
	Long							il_InactiveCaption				= -1
	Long							il_InactiveCaptionText			= -1
	Long							il_InfoText							= -1
	Long							il_InfoBackGround					= -1
	Long							il_Menu								= -1
	Long							il_MenuBar							= -1
	Long							il_MenuHilight						= -1
	Long							il_MenuText							= -1
	Long							il_Scrollbar						= -1
	Long							il_CaptionText						= -1
	Long							il_Window							= -1
	Long							il_WindowFrame						= -1
	Long							il_WindowText						= -1
	
	Long							il_Link								= -1
	Long							il_LinkHover						= -1
	Long							il_LinkActive						= -1
	Long							il_LinkVisited						= -1

end variables

forward prototypes
public function long of_activeborder ()
public function long of_appworkspace ()
public function long of_background ()
public function long of_buttonalternateface ()
public function long of_buttonface ()
public function long of_buttonhilight ()
public function long of_buttonshadow ()
public function long of_buttontext ()
public function long of_graytext ()
public function long of_hilight ()
public function long of_hilighttext ()
public function long of_hottracking ()
public function long of_inactiveborder ()
public function long of_infotext ()
public function long of_menu ()
public function long of_menubar ()
public function long of_menuhilight ()
public function long of_menutext ()
public function long of_scrollbar ()
public function long of_window ()
public function long of_windowframe ()
public function long of_windowtext ()
public function long of_red ()
public function long of_blue ()
public function long of_link ()
public function long of_linkhover ()
public function long of_linkactive ()
public function long of_linkvisited ()
public subroutine of_unrgb (long vl_color, ref integer ri_red, ref integer ri_green, ref integer ri_blue)
public function long of_3ddkshadow ()
public function long of_infobackground ()
public function long of_3dlight ()
private function long of_getcolor (string vs_getcolor)
public function long of_inactivecaption ()
public function long of_captiontext ()
public function long of_inactivecaptiontext ()
public function long of_activecaption ()
public function long of_gradientactivecaption ()
public function long of_gradientinactivecaption ()
private function unsignedlong of_api_getsyscolor (integer vi_index)
public function long of_yellowsticky ()
public function long of_purple ()
public function long of_hotlight ()
public function string of_stringrgb (long vl_color, string vs_delimiter)
public function long of_unstringrgb (string vs_color, string vs_delimiter)
public function long of_silver ()
end prototypes

public function long of_activeborder ();IF il_ActiveBorder = -1 THEN
	il_ActiveBorder					= of_API_GetSysColor(COLOR_ACTIVEBORDER)
END IF

Return(il_ActiveBorder)
end function

public function long of_appworkspace ();IF il_AppWorkSpace = -1 THEN
	il_AppWorkSpace					= of_API_GetSysColor(COLOR_APPWORKSPACE)
END IF

Return(il_AppWorkSpace)
end function

public function long of_background ();IF il_BackGround = -1 THEN
	il_BackGround						= of_API_GetSysColor(COLOR_BACKGROUND)
END IF

Return(il_BackGround)
end function

public function long of_buttonalternateface ();IF il_ButtonAlternateFace = -1 THEN
	il_ButtonAlternateFace			= of_API_GetSysColor(COLOR_ALTERNATEBTNFACE)
END IF

Return(il_ButtonAlternateFace)
end function

public function long of_buttonface ();IF il_ButtonFace = -1 THEN
	il_ButtonFace						= of_API_GetSysColor(COLOR_BTNFACE)
END IF

Return(il_ButtonFace)
end function

public function long of_buttonhilight ();IF il_ButtonHiLight = -1 THEN
	il_ButtonHiLight					= of_API_GetSysColor(COLOR_BTNHIGHLIGHT)
END IF

Return(il_ButtonHiLight)
end function

public function long of_buttonshadow ();IF il_ButtonShadow = -1 THEN
	il_ButtonShadow					= of_API_GetSysColor(COLOR_BTNSHADOW)
END IF

Return(il_ButtonShadow)
end function

public function long of_buttontext ();IF il_ButtonText = -1 THEN
	il_ButtonText						= of_API_GetSysColor(COLOR_BTNTEXT)
END IF

Return(il_ButtonText)
end function

public function long of_graytext ();IF il_GrayText = -1 THEN
	il_grayText							= of_getColor('GrayText')
	IF il_grayText = -1 THEN
		il_GrayText						= of_API_GetSysColor(COLOR_GRAYTEXT)
	END IF
END IF

Return(il_GrayText)
end function

public function long of_hilight ();IF il_HiLight = -1 THEN
	il_HiLight							= of_API_GetSysColor(COLOR_HIGHLIGHT)
END IF

Return(il_HiLight)
end function

public function long of_hilighttext ();IF il_HiLightText = -1 THEN
	il_HiLightText						= of_API_GetSysColor(COLOR_HIGHLIGHTTEXT)
END IF

Return(il_HiLightText)
end function

public function long of_hottracking ();Return(of_hotLight())
end function

public function long of_inactiveborder ();IF il_InactiveBorder = -1 THEN
	il_InactiveBorder					= of_API_GetSysColor(COLOR_INACTIVEBORDER)
END IF

Return(il_InactiveBorder)
end function

public function long of_infotext ();IF il_InfoText = -1 THEN
	il_InfoText							= of_API_GetSysColor(COLOR_INFOTEXT)
END IF

Return(il_InfoText)
end function

public function long of_menu ();IF il_Menu = -1 THEN
	il_Menu								= of_API_GetSysColor(COLOR_MENU)
END IF

Return(il_Menu)
end function

public function long of_menubar ();IF il_MenuBar = -1 THEN
	il_MenuBar							= of_API_GetSysColor(COLOR_MENUBAR)
END IF

Return(il_MenuBar)
end function

public function long of_menuhilight ();IF il_MenuHiLight = -1 THEN
	il_MenuHiLight						= of_API_GetSysColor(COLOR_MENUHILIGHT)
END IF

Return(il_MenuHiLight)
end function

public function long of_menutext ();IF il_MenuText = -1 THEN
	il_MenuText							= of_API_GetSysColor(COLOR_MENUTEXT)
END IF

Return(il_MenuText)
end function

public function long of_scrollbar ();IF il_ScrollBar = -1 THEN
	il_ScrollBar						= of_API_GetSysColor(COLOR_SCROLLBAR)
END IF

Return(il_ScrollBar)
end function

public function long of_window ();IF il_Window = -1 THEN
	il_Window							= of_API_GetSysColor(COLOR_WINDOW)
END IF

Return(il_Window)
end function

public function long of_windowframe ();IF il_WindowFrame = -1 THEN
	il_WindowFrame						= of_API_GetSysColor(COLOR_WINDOWFRAME)
END IF

Return(il_WindowFrame)
end function

public function long of_windowtext ();IF il_WindowText = -1 THEN
	il_WindowText						= of_API_GetSysColor(COLOR_WINDOWTEXT)
END IF

Return(il_WindowText)
end function

public function long of_red ();Return(RGB(255, 0, 0))
end function

public function long of_blue ();Return(RGB(0, 0, 255))
end function

public function long of_link ();IF il_link = -1 THEN
	
	String								ls_useDlg	= 'yes'
	
	RegistryGet('HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main', 'Use_DlgBox_Colors', ls_useDlg)
	
	IF IsNull(ls_useDlg) OR Trim(ls_useDlg) = '' OR Lower(ls_useDlg) = 'no' THEN
		
		String							ls_link,	ls_hover,	ls_visited
		
		ls_link							= of_stringRGB(of_blue(), 		',')
		ls_hover							= of_stringRGB(of_red(), 		',')
		ls_visited						= of_stringRGB(of_purple(),	',')
		
		RegistryGet('HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Settings', 'Anchor Color', 				ls_link)
		RegistryGet('HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Settings', 'Anchor Color Hover',		ls_hover)
		RegistryGet('HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Settings', 'Anchor Color Visited',	ls_visited)

		il_link							= of_unstringRGB(ls_link, 		',')
		il_linkHover					= of_unstringRGB(ls_hover, 	',')
		il_linkVisited					= of_unstringRGB(ls_visited, 	',')
		il_linkActive					= il_linkVisited

	ELSE
	
		il_Link							= of_blue()
		il_linkHover					= of_red()
		il_linkVisited					= of_purple()
		il_linkActive					= il_linkVisited

//		DataStore						lds_colorLinks
//		lds_colorLinks					= CREATE DataStore
//	
//		lds_colorLinks.DataObject	= 'd_color_links'
//		
//		il_Link							= Long(lds_colorLinks.Describe('t_Link.Color'))
//		il_linkHover					= Long(lds_colorLinks.Describe('t_Link_Hover.Color'))
//		il_linkVisited					= Long(lds_colorLinks.Describe('t_Link_Visited.Color'))
//		il_linkActive					= Long(lds_colorLinks.Describe('t_Link_Active.Color'))
//	
//		DESTROY lds_colorLinks

	END IF

END IF

Return(il_link)
end function

public function long of_linkhover ();IF il_LinkHover = -1 THEN of_Link()

Return(il_LinkHover)
end function

public function long of_linkactive ();IF il_LinkActive = -1 THEN of_Link()

Return(il_LinkActive)
end function

public function long of_linkvisited ();IF il_LinkVisited = -1 THEN of_Link()

Return(il_LinkVisited)
end function

public subroutine of_unrgb (long vl_color, ref integer ri_red, ref integer ri_green, ref integer ri_blue);ri_Blue									= Int(vl_Color / 65536)
ri_Green									= Int((vl_Color - (ri_Blue * 65536)) / 256)
ri_Red									= Int(vl_Color - (ri_Blue * 65536) - (ri_Green * 256))

RETURN
end subroutine

public function long of_3ddkshadow ();IF il_3DDkShadow = -1 THEN
	il_3DDkShadow						= of_API_GetSysColor(COLOR_3DDKSHADOW)
END IF

Return(il_3DDkShadow)
end function

public function long of_infobackground ();IF il_InfoBackGround = -1 THEN
	il_InfoBackGround					= of_API_GetSysColor(COLOR_INFOBK)
END IF

Return(il_InfoBackGround)
end function

public function long of_3dlight ();IF il_3DLight = -1 THEN
	il_3DLight							= of_API_GetSysColor(COLOR_3DLIGHT)
END IF

Return(il_3DLight)
end function

private function long of_getcolor (string vs_getcolor);Long										ll_Color	= -1
String									ls_Color	= ''

IF RegistryGet("HKEY_CURRENT_USER\Control Panel\Colors", vs_GetColor, RegString!, ls_Color) = 1 THEN
		
	TRY
		IF ls_color = '' THEN
			ll_color						= -1
		ELSE
			
			String						ls_RGB[]
			
			n_cst_String				lnvo_string
			lnvo_string.of_ParseToArray(Trim(ls_Color), ' ', ls_RGB[])
				
			ll_Color						= RGB(Integer(ls_RGB[1]), Integer(ls_RGB[2]), Integer(ls_RGB[3]))
			
		END IF
		
	CATCH (RunTimeError	RunError)
		ll_color							= -1
	END TRY
		
END IF

Return(ll_Color)
end function

public function long of_inactivecaption ();IF il_InactiveCaption = -1 THEN
	il_InactiveCaption				= of_API_GetSysColor(COLOR_INACTIVECAPTION)
END IF

Return(il_InactiveCaption)
end function

public function long of_captiontext ();IF il_CaptionText = -1 THEN
	il_CaptionText						= of_API_GetSysColor(COLOR_CAPTIONTEXT)
END IF

Return(il_CaptionText)
end function

public function long of_inactivecaptiontext ();IF il_InactiveCaptionText = -1 THEN
	il_InactiveCaptionText			= of_API_GetSysColor(COLOR_INACTIVECAPTIONTEXT)
END IF

Return(il_InactiveCaptionText)
end function

public function long of_activecaption ();IF il_ActiveCaption = -1 THEN
	il_ActiveCaption					= of_API_GetSysColor(COLOR_ACTIVECAPTION)
END IF

Return(il_ActiveCaption)
end function

public function long of_gradientactivecaption ();IF il_GradientActiveCaption = -1 THEN
	il_GradientActiveCaption		= of_API_GetSysColor(COLOR_GRADIENTACTIVECAPTION)
END IF

Return(il_GradientActiveCaption)
end function

public function long of_gradientinactivecaption ();IF il_GradientInactiveCaption = -1 THEN
	il_GradientInactiveCaption		= of_API_GetSysColor(COLOR_GRADIENTINACTIVECAPTION)
END IF

Return(il_GradientInactiveCaption)
end function

private function unsignedlong of_api_getsyscolor (integer vi_index);Return(GetSysColor(vi_Index))
end function

public function long of_yellowsticky ();Return(of_infoBackGround())	//	Changed YellowSticky to ToolTip Back to get rid of hardcoded colors when possible
//Return(RGB(250, 250, 167))
end function

public function long of_purple ();Return(RGB(128, 0, 128))
end function

public function long of_hotlight ();IF il_HotTracking = -1 THEN
	il_HotTracking						= of_API_GetSysColor(COLOR_HOTLIGHT)
END IF

Return(il_HotTracking)
end function

public function string of_stringrgb (long vl_color, string vs_delimiter);Integer									li_red	= 0,	li_green	= 0,	li_blue	= 0

of_unRGB(vl_color, li_red, li_green, li_blue)

Return(String(li_red) + vs_delimiter + String(li_green) + vs_delimiter + String(li_blue))
end function

public function long of_unstringrgb (string vs_color, string vs_delimiter);String									ls_RGB[]

n_cst_String							lnvo_string
lnvo_string.of_ParseToArray(Trim(vs_Color), vs_delimiter, ls_RGB[])
		
Return(RGB(Integer(ls_RGB[1]), Integer(ls_RGB[2]), Integer(ls_RGB[3])))
end function

public function long of_silver ();Return(RGB(192, 192, 192))
end function

on n_cst_color.create
call super::create
end on

on n_cst_color.destroy
call super::destroy
end on

