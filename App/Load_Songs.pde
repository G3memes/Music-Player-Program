void load_songs() {
  minim = new Minim(this); //load from data directory, loadfile should also load from project folder, like loadImage
  song[0] = minim.loadFile("../Music/Aaron Smith - Dancin (KRONO Remix).mp3");
  song[1] = minim.loadFile("../Music/Sean Kingston - Beautiful Girls.mp3");
  song[2] = minim.loadFile("../Music/Bruno Mars - Marry You [Official Lyric Video].mp3");
  song[3] = minim.loadFile("../Music/Eminem ft. Rihanna - The Monster (Lyrics).mp3");
  song[4] = minim.loadFile("../Music/ALEXANDRA STAN - Mr. Saxobeat.mp3");
}
