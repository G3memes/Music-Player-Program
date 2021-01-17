void load_songs() {
  /*
  minim = new Minim(this); //load from data directory, loadfile should also load from project folder, like loadImage
   song[0] = new FilePlayer( minim.loadFileStream("Aaron Smith - Dancin (KRONO Remix).mp3") );
   song[1] = new FilePlayer( minim.loadFileStream("Sean Kingston - Beautiful Girls.mp3") );
   song[2] = new FilePlayer( minim.loadFileStream("Bruno Mars - Marry You [Official Lyric Video].mp3") );
   song[3] = new FilePlayer( minim.loadFileStream("Lemon Tree - Fools Garden .mp3") );
   song[4] = new FilePlayer( minim.loadFileStream("ALEXANDRA STAN - Mr. Saxobeat.mp3") );
   */
  minim = new Minim(this); //load from data directory, loadfile should also load from project folder, like loadImage
  song[0] = minim.loadFile("Aaron Smith - Dancin (KRONO Remix).mp3");
  song[1] = minim.loadFile("Sean Kingston - Beautiful Girls.mp3");
  song[2] = minim.loadFile("Bruno Mars - Marry You [Official Lyric Video].mp3");
  song[3] = minim.loadFile("Lemon Tree - Fools Garden .mp3");
  song[4] = minim.loadFile("ALEXANDRA STAN - Mr. Saxobeat.mp3");
}
