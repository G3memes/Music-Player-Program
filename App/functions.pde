void drawFunction() {
  song_1.isPlaying(); //Returns true or false
  //
  song_1.length(); // returns total length in milliseconds
  song_1.position(); // returns current .isPlaying() position of song in milliseconds
  //
  song_1.play(); //parameter is milli-seconds from start of audio file to start playing
  song_1.pause();
  song_1.rewind();
}
