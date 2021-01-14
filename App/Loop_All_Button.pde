void loop_all_button() {
  if (mouseX > loop_rect_x && mouseX < loop_rect_x + loop_rect_width && mouseY > loop_rect_y && mouseY < loop_rect_y + loop_rect_height) {
    //if c
    if (loop_all == false) {
      loop_all = true;
    }
    if (selected == true) {
      loop_all = false;
      selected = false;
    }
  }
}
