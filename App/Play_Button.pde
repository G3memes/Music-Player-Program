void play_button() {
  x = mouseX;
  y = mouseY;
  if (mouseX > play_rect_x && mouseX < play_rect_x + play_rect_width && mouseY > play_rect_y && mouseY < play_rect_y + play_rect_height) {
    colour = get(x, y);
    if (song[currentSong].isPlaying()) {
      if (colour == black) {
        song[currentSong].pause();
        need_meta_data = true;
      }
    } else {
      if (colour == black) {
        if (end_of_list == false) {
          song[currentSong].play();
          need_meta_data = true;
        } else if (end_of_list == true) {
          currentSong = 0;
          song[currentSong].play();  
          end_of_list = false;
          need_meta_data = true;
        }
      }
    }
  }
  if (mouseX > play_rect_x_1 && mouseX < play_rect_x_1 + play_rect_width_1 && mouseY > play_rect_y_1 && mouseY < play_rect_y_1 + play_rect_height_1) {
    colour = get(x, y);
    if (song[currentSong].isPlaying()) {
      if (colour == white) {
        song[currentSong].pause();
        need_meta_data = true;
      }
    } else {
      if (colour == white) {
        if (end_of_list == false) {
          song[currentSong].play();
          need_meta_data = true;
        } else if (end_of_list == true) {
          currentSong = 0;
          song[0].play();  
          end_of_list = false;
          need_meta_data = true;
        }
      }
    }
  }
}
