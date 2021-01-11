void play_button() {
  if (mouseX > play_rect_x && mouseX < play_rect_x + play_rect_width && mouseY > play_rect_y && mouseY < play_rect_y + play_rect_height) {
    x = mouseX;
    y = mouseY;
    colour = get(x, y);
    if (song[currentSong].isPlaying()) {
      if (colour == black) {
        song[currentSong].pause();
      }
    } else if (song[currentSong].position() >= song[currentSong].length()-500) {
      if (currentSong < number_of_acc_songs) {
        currentSong = currentSong+1;
        song[currentSong].play();
      }
    } else {
      if (colour == black) {
        if (end_of_list == false) {
          song[currentSong].play();
        } else if (end_of_list == true) {
          currentSong = 0;
          song[currentSong].play();  
          end_of_list = false;
        }
      }
    }
  }
  if (mouseX > play_rect_x_1 && mouseX < play_rect_x_1 + play_rect_width_1 && mouseY > play_rect_y_1 && mouseY < play_rect_y_1 + play_rect_height_1) {
    x = mouseX;
    y = mouseY;
    colour = get(x, y);
    if (song[currentSong].isPlaying()) {
      if (colour == white) {
        song[currentSong].pause();
      }
    } else if (song[currentSong].position() >= song[currentSong].length()-500) {
      if (currentSong < number_of_acc_songs) {
        currentSong = currentSong+1;
        song[currentSong].play();
      }
    } else {
      if (colour == white) {
        if (end_of_list == false) {
          song[currentSong].play();
        } else if (end_of_list == true) {
          currentSong = 0;
          song[0].play();  
          end_of_list = false;
        }
      }
    }
  }
}
