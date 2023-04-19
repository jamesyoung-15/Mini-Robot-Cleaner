#include "menu.h"

// variables for printing
lv_obj_t * ui_menu;
lv_obj_t * debug_label;
lv_obj_t* ip_label;
lv_obj_t* mode_label;


// for button matrix
static const char* button_map[] = {"Automatic Mode","\n","Manual Mode",""};

// handles button press event
static void event_handler(lv_event_t *e)
{
	// get the button text label
	lv_obj_t * obj = lv_event_get_target(e);
	uint32_t id = lv_btnmatrix_get_selected_btn(obj);
	const char * mode = lv_btnmatrix_get_btn_text(obj, id);

	// based on button text label, change mode
	printMode(mode);
	// if automatic, change car to automatic mode
	if(strstr(mode,"Automatic")!=NULL)
	{
		printDebug("Automatic Mode Chosen");
		car_mode=1;
	}
	// if manual, change mode to manual
	else if(strstr(mode,"Manual")!=NULL)
	{
		printDebug("Manual Mode Chosen");
		car_mode=0;
	}

}



void setScreen()
{
	/*Change the active screen's background color*/
	lv_obj_set_style_bg_color(lv_scr_act(), lv_color_hex(0x282a36), LV_PART_MAIN);
}

// Create debug text area
//void debug_screen()
//{
//	// printing string section for debugging
//	lv_obj_t* text_area= lv_obj_create(lv_scr_act());
//	lv_obj_set_size(text_area,240,240);
////	lv_obj_align(text_area, LV_ALIGN_BOTTOM_LEFT, 10, -10);
//	lv_obj_align(text_area, LV_ALIGN_CENTER, 0, 0);
//
//	change_label = lv_label_create(text_area);
//	lv_label_set_text(change_label,"Text");
//	lv_obj_center(change_label);
//	static lv_style_t style;
//	lv_style_init(&style);
//	lv_style_set_bg_color(&style,lv_color_hex(0x282a36));
//	lv_style_set_text_font(&style, &lv_font_montserrat_8); // <--- you have to enable other font sizes in menuconfig
//	lv_style_set_text_color(&style,lv_palette_lighten(LV_PALETTE_GREY, 5));
//	lv_obj_add_style(change_label, &style, 0);  // <--- obj is the label
//}

void menuInit()
{
	// Create tab object
	lv_obj_t *tabview;
	tabview = lv_tabview_create(lv_scr_act(), LV_DIR_TOP, 40);
	lv_obj_set_style_bg_color(tabview,lv_color_hex(0x282a36),0);

	// Style tab buttons
	lv_obj_t * tab_btns = lv_tabview_get_tab_btns(tabview);
	lv_obj_set_style_bg_color(tab_btns, lv_palette_darken(LV_PALETTE_GREY, 3), 0);
	lv_obj_set_style_text_color(tab_btns, lv_palette_lighten(LV_PALETTE_GREY, 5), 0);
	lv_obj_set_style_border_side(tab_btns, LV_BORDER_SIDE_RIGHT, LV_PART_ITEMS | LV_STATE_CHECKED);

	// add tabs
	lv_obj_t * tab1 = lv_tabview_add_tab(tabview, "Info");
	lv_obj_t * tab2 = lv_tabview_add_tab(tabview, "Settings");
	lv_obj_t * tab3 = lv_tabview_add_tab(tabview, "Debug");

	// tab 1 show ip
	lv_obj_t * tab1_obj1 = lv_obj_create(tab1); // create object for text
	lv_obj_set_size(tab1_obj1,160,50);
	lv_obj_align(tab1_obj1,LV_ALIGN_CENTER,0,-45);
	lv_obj_set_style_bg_color(tab1_obj1,lv_color_hex(0x44475a),0);
	lv_obj_set_style_border_opa(tab1_obj1,LV_OPA_TRANSP,0);
	ip_label = lv_label_create(tab1_obj1);
	lv_obj_set_style_text_color(ip_label,lv_color_hex(0xf8f8f2),0);

	lv_obj_t * tab1_obj2 = lv_obj_create(tab1); // create object for text
	lv_obj_set_size(tab1_obj2,160,50);
	lv_obj_align(tab1_obj2,LV_ALIGN_CENTER,0,45);
	lv_obj_set_style_bg_color(tab1_obj2,lv_color_hex(0x44475a),0);
	lv_obj_set_style_border_opa(tab1_obj2,LV_OPA_TRANSP,0);
	mode_label = lv_label_create(tab1_obj2);
	lv_obj_set_style_text_color(mode_label,lv_color_hex(0xf8f8f2),0);



	// Tab 2 mode buttons with button matrix
	lv_obj_t * button_modes = lv_btnmatrix_create(tab2);
	lv_btnmatrix_set_map(button_modes,button_map);
	lv_btnmatrix_set_btn_ctrl_all(button_modes, LV_BTNMATRIX_CTRL_CHECKABLE); // make it so button is filled when pressed
	lv_btnmatrix_set_one_checked(button_modes, true); // only one button filled at time
	lv_btnmatrix_set_btn_ctrl(button_modes, 1, LV_BTNMATRIX_CTRL_CHECKED); // set manual mode automatically filled
	lv_obj_align(button_modes, LV_ALIGN_CENTER, 0, 0);
	lv_obj_set_size(button_modes,200,200);
	lv_obj_set_style_bg_color(button_modes,lv_color_hex(0x282a36),0);
	lv_obj_set_style_border_opa(button_modes,LV_OPA_TRANSP,0);
	lv_obj_add_event_cb(button_modes, event_handler, LV_EVENT_ALL, NULL);


	// Tab 3 printing string section for debugging
	lv_obj_t * tab3_obj = lv_obj_create(tab3); // create object for text
	lv_obj_set_size(tab3_obj,200,200);
	lv_obj_align(tab3_obj,LV_ALIGN_CENTER,0,0);
	lv_obj_set_style_bg_color(tab3_obj,lv_color_hex(0x44475a),0);
	lv_obj_set_style_border_opa(tab3_obj,LV_OPA_TRANSP,0);
	debug_label = lv_label_create(tab3_obj);
	lv_obj_set_style_text_color(debug_label,lv_color_hex(0xf8f8f2),0);
	lv_label_set_text(debug_label,"Debugging area");



}


void printDebug(char* msg)
{
	lv_label_set_text(debug_label,msg);
}



void printIp(char* ip)
{
	lv_label_set_text(ip_label,ip);
}

void printMode(char* mode)
{
	lv_label_set_text(mode_label,mode);
}
