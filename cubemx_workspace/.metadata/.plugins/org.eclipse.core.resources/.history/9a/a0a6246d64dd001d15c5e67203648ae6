#include "menu.h"

lv_obj_t * ui_menu;
lv_obj_t * change_label;


static const char* button_map[] = {"Automatic","\n","Manual",""};

static void event_button(lv_event_t *e)
{
	lv_obj_t * obj = lv_event_get_target(e);
	uint32_t id = lv_btnmatrix_get_selected_btn(obj);
}

void set_screen()
{
	/*Change the active screen's background color*/
	lv_obj_set_style_bg_color(lv_scr_act(), lv_color_hex(0x282a36), LV_PART_MAIN);
}

// Create debug text area
void debug_screen()
{
	// printing string section for debugging
	lv_obj_t* text_area= lv_obj_create(lv_scr_act());
	lv_obj_set_size(text_area,240,240);
//	lv_obj_align(text_area, LV_ALIGN_BOTTOM_LEFT, 10, -10);
	lv_obj_align(text_area, LV_ALIGN_CENTER, 0, 0);

	change_label = lv_label_create(text_area);
	lv_label_set_text(change_label,"Text");
	lv_obj_center(change_label);
	static lv_style_t style;
	lv_style_init(&style);
	lv_style_set_text_font(&style, &lv_font_montserrat_8); // <--- you have to enable other font sizes in menuconfig
	lv_obj_add_style(change_label, &style, 0);  // <--- obj is the label
}

void menu_init()
{
	// style button matrix
	static lv_style_t style;
	lv_style_init(&style);
	lv_style_set_bg_color(&style,lv_color_hex(0x282a36));
	lv_style_set_border_opa(&style,LV_OPA_TRANSP);



	// Mode buttons with button matrix
	lv_obj_t * button_modes = lv_btnmatrix_create(lv_scr_act());
	lv_btnmatrix_set_map(button_modes,button_map);
	lv_btnmatrix_set_btn_ctrl_all(button_modes, LV_BTNMATRIX_CTRL_CHECKABLE); // make it so button is filled when pressed
	lv_btnmatrix_set_one_checked(button_modes, true); // only one button filled at time
	lv_btnmatrix_set_btn_ctrl(button_modes, 1, LV_BTNMATRIX_CTRL_CHECKED); // set manual mode automatically filled
	lv_obj_align(button_modes, LV_ALIGN_CENTER, 0, 0);
	lv_obj_set_size(button_modes,200,200);
	lv_obj_add_style(button_modes,&style,0);
	lv_obj_add_event_cb(button_modes, event_button, LV_EVENT_ALL, NULL);

}

void print_debug(char* msg)
{
	lv_label_set_text(change_label,msg);
}
