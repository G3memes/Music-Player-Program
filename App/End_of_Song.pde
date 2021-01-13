void  end_of_song() {
  if (song[0].position() >= song[0].length()-800) {
    reset_time = true;
    song[currentSong].pause();
    song[currentSong].rewind();
    currentSong = 1;
    song[currentSong].play();
    need_meta_data = true;
  }
  if (song[1].position() >= song[1].length()-800) {
    reset_time = true;
    song[currentSong].pause();
    song[currentSong].rewind();
    currentSong = 2;
    song[currentSong].play();
    need_meta_data = true;
  }
  if (song[2].position() >= song[2].length()-800) {
    reset_time = true;
    song[currentSong].pause();
    song[currentSong].rewind();
    currentSong = 3;
    song[currentSong].play();
    need_meta_data = true;
  }
  if (song[3].position() >= song[3].length()-800) {
    reset_time = true;
    song[currentSong].pause();
    song[currentSong].rewind();
    currentSong = 4;
    song[currentSong].play();
    need_meta_data = true;
  }
  if (song[4].position() >= song[4].length()-800) {
    if (loop_all == true) {
      reset_time = true;
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = 0;
      song[0].play();
      song[0].play();
      need_meta_data = true;
    }
  }
}
