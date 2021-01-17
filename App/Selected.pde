void selected() {
  if (loop_all == true) {
    fill(grey);
    circle(loop_cir_x, loop_cir_y, loop_cir_diameter);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    fill(white);
    text(loop_all_text, loop_rect_x, loop_rect_y, loop_rect_width, loop_rect_height);
    selected = true;
  }
  if (loop_all == false) {
    fill(black);
    circle(loop_cir_x, loop_cir_y, loop_cir_diameter);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    fill(white);
    text(loop_all_text, loop_rect_x, loop_rect_y, loop_rect_width, loop_rect_height);
  } 
  if (loop_one == true) {
    fill(grey);
    circle(loop_1_cir_x, loop_1_cir_y, loop_1_cir_diameter);
    fill(white);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    text(loop_one_text, loop_1_x, loop_1_y, loop_1_width, loop_1_height);
    loop_selected = true;
  }
  if (loop_one == false) {
    fill(black);
    circle(loop_1_cir_x, loop_1_cir_y, loop_1_cir_diameter);
    fill(white);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    text(loop_one_text, loop_1_x, loop_1_y, loop_1_width, loop_1_height);
  }
}
