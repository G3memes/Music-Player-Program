import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables

Minim  minim; //creates object to access all functions
AudioPlayer song_1; //creates PLaylist variable holding extension WAV, AIFF, AU, SND, MP3

int loop_int_num = 1; 

void setup() {
  fullScreen();
  minim = new Minim(this); //load from data directory, loadfile should also load from project folder, like loadImage
  song_1 = minim.loadFile("../Music/Aaron Smith - Dancin (KRONO Remix).mp3");//able to pass absolute path, file name, and URL
  song_1.play();
}

void draw() {
  println(song_1.position()/1000 + " seconds");
}

void keyPressed() {
  //play pause button
  if (key == 'p' || key == 'P' ) {
    if (song_1.isPlaying()) {
      song_1.pause();
    } else if (song_1.position() == song_1.length()) {
      song_1.rewind();
      song_1.play();
    } else {
      song_1.play();
    }
  }
  if (key == 's' || key == 'S' ) {
    if (song_1.isPlaying()) {
      song_1.pause();
      song_1.rewind();
    } else if (song_1.position() == song_1.length()) {
      song_1.rewind();
    } else {
      song_1.rewind();
    }
  }
  if (key == 'f' || key == 'F') { 
    song_1.skip(5000);
  }
  if (key == 'r' || key == 'R') {
    song_1.skip(-5000);
  }
  if (key == 'l' || key == 'L') {
    song_1.loop(loop_int_num);
  }
}
