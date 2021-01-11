void key_shortcut() {
  if (key == 'p' || key == 'P' ) {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
    } else if (song[currentSong].position() >= song[currentSong].length()-800) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
  if (key == 's' || key == 'S' ) {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else if (song[currentSong].position() >= song[currentSong].length()-800) {
      song[currentSong].rewind();
    } else {
      song[currentSong].rewind();
    }
  }
  if (key == 'f' || key == 'F') { 
    song[currentSong].skip(70000);
    if (song[currentSong].isPlaying()) {
      if (currentSong < number_of_acc_songs) {
        if (song[currentSong].position() >= song[currentSong].length()-800) {
          currentSong = currentSong+1;
          song[currentSong].rewind();
          song[currentSong].play();
          meta_data();
        }
      } else if (currentSong == 3) {
        end_of_list = true;
      } else {
        if (song[currentSong].position() >= song[currentSong].length()-800) {
          song[currentSong].pause();
          currentSong = 0;
          song[0].rewind();
          song[0].play();
          meta_data();
          end_of_list = false;
        }
      }
    }
    println( song[currentSong].position());
  }
  if (key == 'r' || key == 'R') {
    song[currentSong].skip(-5000);
  }
  if (key == 'l' || key == 'L') {
    song[currentSong].loop();
  }
  if (key == 'n' || key == 'N') {
    if (currentSong < number_of_acc_songs) {
      song_length = song[currentSong].length();
      song[currentSong].skip(song_length);
      currentSong = currentSong+1;
      song[currentSong].rewind();
      song[currentSong].play();
      println(currentSong);
      need_meta_data = true;
    } else if (currentSong == 3) {
      end_of_list = true;
    } else {
      song[currentSong].pause();
      currentSong = 0;
      song[0].rewind();
      song[0].play();
      meta_data();
      end_of_list = false;
    }
  }
  if (key == 'b' || key == 'B') {
    currentSong--;
  }
}
