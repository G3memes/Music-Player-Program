void next_button() {
  if (currentSong < number_of_acc_songs) {
    if (mouseX >next_rect_x && mouseX < next_rect_x + next_rect_width && mouseY > next_rect_y && mouseY < next_rect_y + next_rect_height) {
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
  }
  if (currentSong == 3) {
    if (mouseX >next_rect_x && mouseX < next_rect_x + next_rect_width && mouseY > next_rect_y && mouseY < next_rect_y + next_rect_height) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == black) {
        end_of_list = true;
      }
    }
  }
}
