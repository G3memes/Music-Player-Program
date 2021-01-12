void next_button() {
  if (currentSong < number_of_acc_songs) {
    if (mouseX > next_rect_x && mouseX < next_rect_x + next_rect_width && mouseY > next_rect_y && mouseY < next_rect_y + next_rect_height) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == black) {
        song_length = song[currentSong].length();
        song[currentSong].skip(song_length);
        currentSong = currentSong+1;
        song[currentSong].rewind();
        song[currentSong].play();
        println(currentSong);
        need_meta_data = true;
      }
    }
    if (mouseX > next_rect_x_1 && mouseX < next_rect_x_1 + next_rect_width_1 && mouseY > next_rect_y_1 && mouseY < next_rect_y_1 + next_rect_height_1) {
      if (colour == white) {
        song_length = song[currentSong].length();
        song[currentSong].skip(song_length);
        currentSong = currentSong+1;
        song[currentSong].rewind();
        song[currentSong].play();
        println(currentSong);
        need_meta_data = true;
      }
    }
  } else if (currentSong == 3) {
    if (mouseX > next_rect_x && mouseX < next_rect_x + next_rect_width && mouseY > next_rect_y && mouseY < next_rect_y + next_rect_height) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == black) {
        end_of_list = true;
      }
    }
  } else {
    if (mouseX > prev_rect_x && mouseX < prev_rect_x + prev_rect_width && mouseY > prev_rect_y && mouseY < prev_rect_y + prev_rect_height) {
      colour = get(x, y);
      if (colour == black) {
        song[currentSong].pause();
        currentSong = 0;
        song[0].rewind();
        song[0].play();
        meta_data();
        end_of_list = false;
      }
    }
    if (mouseX > prev_rect_x_1 && mouseX < prev_rect_x_1 + prev_rect_width_1 && mouseY > prev_rect_y_1 && mouseY < prev_rect_y_1 + prev_rect_height_1) {
      if (colour == white) {
        song[currentSong].pause();
        currentSong = 0;
        song[0].rewind();
        song[0].play();
        meta_data();
        end_of_list = false;
      }
    }
  }
}
