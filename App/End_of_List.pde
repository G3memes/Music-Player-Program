void end_of_list() {
  if (end_of_list == true) {
    if (song[4].position() == song[4].length()-288) {
      currentSong = 0;
      song[0].rewind();
      song[0].play();
      meta_data();
      end_of_list = false;
    }
  }
}
