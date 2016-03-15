HA$PBExportHeader$u_cst_menubar.sru
forward
global type u_cst_menubar from u_cst_toolbar
end type
type tmg_checkmousemove from timing within u_cst_menubar
end type
end forward

global type u_cst_menubar from u_cst_toolbar
tmg_checkmousemove tmg_checkmousemove
end type
global u_cst_menubar u_cst_menubar

type variables
Protected:

	String									#MenuName

Private:

	Window									iw_frame
	
	Menu										im_Menu
	Menu										im_PopMenu[]
	
	String									is_Button						= ''
	Double									idbl_intervalForMouse		= .05
	
	Boolean									ib_menuPopped					= FALSE
	Boolean									ib_menuMoved					= FALSE
end variables

forward prototypes
public subroutine of_popmenu_hide ()
public subroutine of_setmicrohelp (string vs_microhelp)
public subroutine of_menupopped (boolean vb_menupopped)
public function boolean of_ismenupopped ()
protected function integer of_highlight (string vs_mode)
public subroutine of_setmicrohelp (long vl_menu)
public subroutine of_popmenu_show (long vl_item, long vl_x, long vl_y)
public function long of_getcolor (string vs_color)
public subroutine of_popmenu_moved (long vl_item)
public function double of_intervalformouse ()
public subroutine of_intervalformouse (double vdbl_intervalformouse)
public function integer of_drawbutton (long vl_item)
end prototypes

public subroutine of_popmenu_hide ();of_MenuPopped(FALSE)

window							lw_close

IF Open(lw_close, 'w_menuBar_close') = 1 THEN
	Close(lw_close)
END IF

Long								ll_item
ll_item							= dw_toolbar.of_locateItem(this.pointerX(), this.pointerY())

IF NOT isNull(ll_item) THEN
	of_drawButton(ll_item)
	of_highLight(HIGHLIGHT)
END IF

RETURN
end subroutine

public subroutine of_setmicrohelp (string vs_microhelp);IF IsValid(iw_Frame) THEN
	
	IF NOT iw_frame.WindowType = MDIHelp! THEN RETURN
	
	IF IsNull(vs_MicroHelp) OR Trim(vs_microHelp) = '' THEN
		iw_Frame.SetMicroHelp('Ready')
	ELSE
		iw_Frame.SetMicroHelp(Trim(vs_microHelp))
	END IF
	
END IF

RETURN
end subroutine

public subroutine of_menupopped (boolean vb_menupopped);ib_menuPopped						= vb_menuPopped

RETURN
end subroutine

public function boolean of_ismenupopped ();Boolean							lb_menuPopped

IF isNull(ib_menuPopped) THEN
	setNull(lb_menuPopped) 	
ELSE
	lb_menuPopped				= ib_menuPopped
END IF

Return(lb_menuPopped)
end function

protected function integer of_highlight (string vs_mode);IF vs_mode = INVISIBLE THEN
	IF of_isMenuPopped() THEN Return(super::of_highLight(SELECTMODE))
END IF

Return(super::of_highLight(vs_mode))
end function

public subroutine of_setmicrohelp (long vl_menu);of_setMicroHelp(Trim(im_PopMenu[vl_menu].MicroHelp))

RETURN
end subroutine

public subroutine of_popmenu_show (long vl_item, long vl_x, long vl_y);IF NOT ib_menuMoved THEN
	
	IF NOT isValid(im_popMenu[vl_item]) THEN RETURN

	im_popMenu[vl_item].TRIGGER EVENT Selected()
	im_popMenu[vl_item].TRIGGER EVENT Clicked()
	
	is_button					= of_GetText(vl_item)
	
	of_MenuPopped(TRUE)
	
	tmg_checkMouseMove.Start(of_IntervalForMouse())
	
	im_popMenu[vl_item].PopMenu(vl_X, vl_Y)
	
	IF this.pointerX() > this.Width OR this.pointerX() < 0 OR this.pointerY() > this.Height OR this.pointerY() < 0 THEN
		of_popMenu_hide()
		dw_toolBar.Modify('DataWindow.' + #band + '.Color="' + String(of_getColor(LOSEFOCUS)) + '" ')
		of_highLight(HIGHLIGHT)
	END IF

ELSE
	
	ib_menuMoved				= FALSE
	
	IF NOT isValid(im_popMenu[vl_item]) THEN RETURN

	im_popMenu[vl_item].TRIGGER EVENT Selected()
	im_popMenu[vl_item].TRIGGER EVENT Clicked()
	
	is_button					= of_GetText(vl_item)
	
	of_MenuPopped(TRUE)
	
	tmg_checkMouseMove.Start(of_IntervalForMouse())
	
	im_popMenu[vl_item].PopMenu(vl_X, vl_Y)
	
	IF this.pointerX() > this.Width OR this.pointerX() < 0 OR this.pointerY() > this.Height OR this.pointerY() < 0 THEN
		of_popMenu_hide()
		dw_toolBar.Modify('DataWindow.' + #band + '.Color="' + String(of_getColor(LOSEFOCUS)) + '" ')
		of_highLight(HIGHLIGHT)
	END IF
	
END IF

RETURN
end subroutine

public function long of_getcolor (string vs_color);IF vs_color = LOSEFOCUS THEN
	IF of_isMenuPopped() THEN Return(super::of_getColor(GETFOCUS))
END IF

Return(super::of_getColor(vs_color))
end function

public subroutine of_popmenu_moved (long vl_item);ib_menuMoved					= TRUE

of_drawButton(vl_item)
of_highLight(SELECTMODE)
of_buttonClicked(vl_item)

RETURN
end subroutine

public function double of_intervalformouse ();Return(idbl_IntervalForMouse)
end function

public subroutine of_intervalformouse (double vdbl_intervalformouse);idbl_IntervalForMouse			= vdbl_IntervalForMouse

RETURN
end subroutine

public function integer of_drawbutton (long vl_item);Long									li_RC
li_RC									= super::of_drawButton(vl_item)

Long									ll_item
ll_item								= dw_toolbar.of_locateItem()

IF NOT isNull(ll_item) THEN
	is_Button						= of_GetText(ll_item)
ELSE
	is_button						= ''
END IF

Return(li_RC)
end function

on u_cst_menubar.create
call super::create
this.tmg_checkmousemove=create tmg_checkmousemove
end on

on u_cst_menubar.destroy
call super::destroy
destroy(this.tmg_checkmousemove)
end on

event constructor;call super::constructor;IF IsNull(#menuName) OR Trim(#menuName) = '' THEN
ELSE
	
	im_menu							= CREATE USING #MenuName

	Long								ll_item
	Long								ll_menu,		ll_menus
	ll_menus							= UpperBound(im_Menu.Item[])
	
	FOR ll_menu = 1 TO ll_menus

		im_Menu.Item[ll_menu].Text														&
										= invo_String.of_GlobalReplace(im_Menu.Item[ll_menu].Text, '&', '')
		
		ll_item						= of_AddItem(im_Menu.Item[ll_menu].Text, im_Menu.Item[ll_menu].MenuImage)
		
		of_SetEnabled(im_Menu.Item[ll_menu].Text, im_Menu.Item[ll_menu].Enabled)
		of_SetVisible(im_Menu.Item[ll_menu].Text, im_Menu.Item[ll_menu].Visible)
	
		im_PopMenu[ll_item]		= im_Menu.Item[ll_menu]
	
	NEXT

END IF

of_DisableToolTips()
end event

event destructor;call super::destructor;IF IsValid(im_Menu) THEN DESTROY im_Menu

Long							ll_popMenu

FOR ll_popMenu = UpperBound(im_popMenu[]) TO 1 STEP -1
	IF IsValid(im_PopMenu[ll_popMenu]) THEN DESTROY im_PopMenu[ll_popMenu]
NEXT
end event

event ue_post_constructor;call super::ue_post_constructor;tmg_checkMouseMove.Start(of_IntervalForMouse())
end event

event ue_itemclicked;call super::ue_itemclicked;tmg_checkMouseMove.Stop()

Long									ll_Item,	ll_Items
ll_Items								= UpperBound(im_popMenu[])

FOR ll_Item = 1 TO ll_Items

	IF NOT isValid(im_popMenu[ll_item]) THEN CONTINUE
	
	IF Lower(as_button) = Lower(invo_String.of_globalReplace(im_popMenu[ll_item].Text, '&', '')) THEN
		
		IF isNull(of_isMenuPopped()) THEN
			of_menuPopped(FALSE)
		ELSE
			IF of_isMenuPopped() THEN
				of_popMenu_Hide()
			ELSE
	
				Long					ll_X,	ll_Y
				
				ll_x					= this.X + dw_toolBar.of_getItem_rectLeft(ll_item) - PixelsToUnits(2, XPixelsToUnits!)
				ll_y					= this.Y + this.Height
				
				IF ll_item > 0 THEN
					IF isValid(im_popMenu[ll_item]) THEN of_popMenu_Show(ll_item, ll_X, ll_Y)
				END IF
	
			END IF
		END IF

		EXIT
		
	END IF

NEXT

tmg_checkMouseMove.Start(of_IntervalForMouse())
end event

type st_toolbar from u_cst_toolbar`st_toolbar within u_cst_menubar
end type

type dw_toolbar from u_cst_toolbar`dw_toolbar within u_cst_menubar
end type

event dw_toolbar::clicked;call super::clicked;IF isNull(of_getButtonClicked()) THEN
	of_popMenu_Hide()
END IF
end event

event dw_toolbar::ue_dwnkey;tmg_checkMouseMove.Stop()

CALL super::ue_dwnKey

tmg_checkMouseMove.Start(of_intervalForMouse())
end event

type r_border from u_cst_toolbar`r_border within u_cst_menubar
end type

type tmg_checkmousemove from timing within u_cst_menubar descriptor "pb_nvo" = "true" 
end type

event timer;Stop()

IF of_debug() THEN
	EVENT ue_debug('checkMouse - timers off')
END IF

IF of_isMenuPopped() THEN
	
	Boolean							lb_processed	= FALSE
	KeyCode							lkc_key
	UnsignedInteger				lui_keyFlags	= 0
			
	IF keyDown(keyShift!)	THEN lui_keyFlags	= lui_keyFlags + 1
	IF keyDown(keyControl!)	THEN lui_keyFlags	= lui_keyFlags + 2
			
	IF keyDown(keyLeftArrow!) THEN
		lb_processed				= (of_keyDown(keyLeftArrow!, lui_keyFlags) = 1)
	ELSEIF keyDown(keyRightArrow!) THEN
		lb_processed				= (of_keyDown(keyRightArrow!, lui_keyFlags) = 1)
	ELSEIF keyDown(keySpaceBar!) THEN
		lb_processed				= (of_keyDown(keySpaceBar!, lui_keyFlags) = 1)
	ELSEIF keyDown(keyTab!) THEN
		lb_processed				= (of_keyDown(keyTab!, lui_keyFlags) = 1)
	END IF

	IF NOT lb_processed THEN
		
		Long							ll_item
		ll_item						= dw_toolBar.of_locateItem(parent.PointerX(), parent.PointerY())
		
		IF NOT isNull(ll_item) THEN
					
			String					ls_Button
			ls_Button				= of_GetText(ll_item)
		
			IF ls_Button <> is_Button THEN
		
				of_popMenu_Hide()
					
				IF isValid(im_popMenu[ll_item]) THEN of_SetMicroHelp(im_PopMenu[ll_item].MicroHelp)
					
				IF of_IsEnabled(ls_button) AND of_isVisible(ls_button) AND (NOT of_displayInMenu(ls_button)) THEN
					POST FUNCTION of_popMenu_moved(ll_item)
				END IF
					
			ELSE
				IF isValid(im_popMenu[ll_item]) THEN of_SetMicroHelp(im_PopMenu[ll_item].MicroHelp)
			END IF
			
		END IF
		
	END IF
		
END IF

IF of_debug() THEN
	EVENT ue_debug('checkMouse - timers on')
END IF

Start(of_IntervalForMouse())
end event

on tmg_checkmousemove.create
call super::create
TriggerEvent( this, "constructor" )
end on

on tmg_checkmousemove.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

