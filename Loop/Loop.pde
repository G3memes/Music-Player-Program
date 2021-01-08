import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables

Minim  minim; //creates object to access all functions
AudioPlayer song_1; //creates PLaylist variable holding extension WAV, AIFF, AU, SND, MP3

void setup() {
  fullScreen();
  minim = new Minim(this); //load from data directory, loadfile should also load from project folder, like loadImage
  song_1 = minim.loadFile("../Music/Aaron Smith - Dancin (KRONO Remix).mp3");//able to pass absolute path, file name, and URL
  song_1.play();
  
  textFont(createFont("Arial", 12));
}

void draw() {
  background(0);
  
  stroke(255);
  for(int i = 0; i < groove.bufferSize() - 1; i+++

}
