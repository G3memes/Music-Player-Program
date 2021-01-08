import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
float play_but_x, play_but_y, play_but_diameter;
float play_tri_1_x, play_tri_1_y, play_tri_2_x, play_tri_2_y, play_tri_3_x, play_tri_3_y;
float play_rect_x, play_rect_y, play_rect_width, play_rect_height;
float play_rect_x_1, play_rect_y_1, play_rect_width_1, play_rect_height_1;
float pause_x_1, pause_y_1, pause_width, pause_height;
float pause_x_2, pause_y_2;
float position;
int loop_int_num = 1; 
color white, black;
int x, y;
boolean playing;
boolean paused;


Minim  minim; //creates object to access all functions
AudioPlayer song_1; //creates PLaylist variable holding extension WAV, AIFF, AU, SND, MP3

void setup() {
  fullScreen();
  populating_variables();
  background(white);
  music_player_setup();
  minim = new Minim(this); //load from data directory, loadfile should also load from project folder, like loadImage
  song_1 = minim.loadFile("../Music/Aaron Smith - Dancin (KRONO Remix).mp3");//able to pass absolute path, file name, and URL
}

void draw() {
  println(song_1.position()/1000 + " seconds");
}

void mousePressed() {
  if (mouseX > play_rect_x && mouseX < play_rect_x + play_rect_width && mouseY > play_rect_y && mouseY < play_rect_y + play_rect_height) {
    x = mouseX;
    y = mouseY;
    position = get(x, y);
    if (song_1.isPlaying()) {
      if (position == black) {
        song_1.pause();
        paused = true;
        playing = false;
      }
    } else if (song_1.position() == song_1.length()) {
      song_1.rewind();
      song_1.play();
      playing = true;
      paused = false;
    } else {
      if (position == black) {
        song_1.play();
        playing = true;
        paused = false;
      }
    }
  }
  if (mouseX > play_rect_x_1 && mouseX < play_rect_x_1 + play_rect_width_1 && mouseY > play_rect_y_1 && mouseY < play_rect_y_1 + play_rect_height_1) {
    x = mouseX;
    y = mouseY;
    position = get(x, y);
    if (song_1.isPlaying()) {
      if (position == white) {
        song_1.pause();
        paused = true;
        playing = false;
      }
    } else if (song_1.position() == song_1.length()) {
      song_1.rewind();
      song_1.play();
      playing = true;
      paused = false;
    } else {
      if (position == white) {
        song_1.play();
        playing = true;
        paused = false;
      }
    }
  }
  if (paused == true) {
    fill(black);
    circle(play_but_x, play_but_y, play_but_diameter);
    fill(white);
    triangle(play_tri_1_x, play_tri_1_y, play_tri_2_x, play_tri_2_y, play_tri_3_x, play_tri_3_y);
  }
  if (playing == true) {
    fill(black);
    circle(play_but_x, play_but_y, play_but_diameter);
    fill(white);
    rect(pause_x_1, pause_y_1, pause_width, pause_height);
    fill(white);
    rect(pause_x_2, pause_y_2, pause_width, pause_height);
  }
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
