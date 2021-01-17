void loop_one_button() {
  x = mouseX;
  y = mouseY;
  if (mouseX > loop_1_x && mouseX < loop_1_x + loop_1_width && mouseY > loop_1_y && mouseY < loop_1_y + loop_1_height) {
    colour = get(x, y);
    if (colour == black || colour == grey) {
      loop_all = false;
      selected = false;
      if (loop_one == false) {
        loop_one = true;
      }
      if (loop_selected == true) {
        loop_one = false;
        loop_selected = false;
      }
    }
  }
  if (mouseX > loop_rect_x_1 && mouseX < loop_rect_x_1 + loop_rect_width_1 && mouseY > loop_rect_y_1 && mouseY < loop_rect_y_1 + loop_rect_height_1) {
    colour = get(x, y);
    if (colour == white) {
      loop_all = false;
      selected = false;
      if (loop_one == false) {
        loop_one = true;
      }
      if (loop_selected == true) {
        loop_one = true;
        loop_selected = false;
      }
    }
  }
}
