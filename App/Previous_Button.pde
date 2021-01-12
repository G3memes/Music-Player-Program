void prev_button() {
  x = mouseX;
  y = mouseY;
  if (currentSong > 0) {
    if (mouseX > prev_rect_x && mouseX < prev_rect_x + prev_rect_width && mouseY > prev_rect_y && mouseY < prev_rect_y + prev_rect_height) {
      colour = get(x, y);
      if (colour == black) {
        song_length = song[currentSong].position();
        song[currentSong].skip(-song_length);
        currentSong = currentSong-1;
        song[currentSong].rewind();
        song[currentSong].play();
        println(currentSong);
        need_meta_data = true;
      }
    }
    if (mouseX > prev_rect_x_1 && mouseX < prev_rect_x_1 + prev_rect_width_1 && mouseY > prev_rect_y_1 && mouseY < prev_rect_y_1 + prev_rect_height_1) {
      if (colour == white) {
        song_length = song[currentSong].position();
        song[currentSong].skip(-song_length);
        currentSong = currentSong-1;
        song[currentSong].rewind();
        song[currentSong].play();
        println(currentSong);
        need_meta_data = true;
      }
    }
  } else if (currentSong == 1) {
    if (mouseX > prev_rect_x && mouseX < prev_rect_x + prev_rect_width && mouseY > prev_rect_y && mouseY < prev_rect_y + prev_rect_height) {
      colour = get(x, y);
      if (colour == black) {
        end_of_list = true;
        println(currentSong);
      }
    }
  } else {
    if (mouseX > prev_rect_x && mouseX < prev_rect_x + prev_rect_width && mouseY > prev_rect_y && mouseY < prev_rect_y + prev_rect_height) {
      colour = get(x, y);
      if (colour == black) {
        song[currentSong].pause();
        currentSong = 4;
        song[4].rewind();
        song[4].play();
        meta_data();
        end_of_list = false;
      }
    }
    if (mouseX > prev_rect_x_1 && mouseX < prev_rect_x_1 + prev_rect_width_1 && mouseY > prev_rect_y_1 && mouseY < prev_rect_y_1 + prev_rect_height_1) {
      if (colour == white) {
        song[currentSong].pause();
        currentSong = 4;
        song[4].rewind();
        song[4].play();
        meta_data();
        end_of_list = false;
      }
    }
  }
}
