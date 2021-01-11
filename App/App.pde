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
float next_x_1, next_y_1, next_width, next_height;
float next_but_x, next_but_y, next_but_diameter;
float next_tri_1_x, next_tri_1_y, next_tri_2_x, next_tri_2_y, next_tri_3_x, next_tri_3_y;
float next_lin_x_1, next_lin_y_1, next_lin_width, next_lin_height;
float next_rect_x, next_rect_y, next_rect_width, next_rect_height;
float pause_x_2, pause_y_2;
float colour;
int loop_int_num = 1; 
color white, black;
int x, y;
boolean playing;
boolean paused;
int number_of_songs = 5;
int number_of_acc_songs;
int currentSong = 0;
int song_length;
int song_playing = 0;
boolean end_of_list;
boolean next;

Minim  minim; //creates object to access all functions
AudioPlayer[] song = new AudioPlayer[number_of_songs]; 

void setup() {
  fullScreen();
  populating_variables();
  frameRate(60);
  background(white);
  music_player_setup();
  minim = new Minim(this); //load from data directory, loadfile should also load from project folder, like loadImage
  song[0] = minim.loadFile("../Music/Aaron Smith - Dancin (KRONO Remix).mp3");
  song[1] = minim.loadFile("../Music/Sean Kingston - Beautiful Girls.mp3");
  song[2] = minim.loadFile("../Music/Bruno Mars - Marry You [Official Lyric Video].mp3");
  song[3] = minim.loadFile("../Music/Eminem ft. Rihanna - The Monster (Lyrics).mp3");
  song[4] = minim.loadFile("../Music/ALEXANDRA STAN - Mr. Saxobeat.mp3");
  end_of_list = false;
  next = false;
}

void draw() {
  //println(song[currentSong].position()+ " seconds");
  if (song[currentSong].isPlaying()) {
    fill(black);
    circle(play_but_x, play_but_y, play_but_diameter);
    fill(white);
    rect(pause_x_1, pause_y_1, pause_width, pause_height);
    fill(white);
    rect(pause_x_2, pause_y_2, pause_width, pause_height);
  } else {
    fill(black);
    circle(play_but_x, play_but_y, play_but_diameter);
    fill(white);
    triangle(play_tri_1_x, play_tri_1_y, play_tri_2_x, play_tri_2_y, play_tri_3_x, play_tri_3_y);
  }
  println(song[currentSong].length());
  println(song[currentSong].position());
  if (end_of_list == true) {
    if (song[4].position() == song[4].length()-288) {
      currentSong = 0;
      song[0].rewind();
      song[0].play();
      end_of_list = false;
    }
  }
}

void mousePressed() {
  play_button();
  next_button();
}
void keyPressed() {
  //play pause button
  if (key == 'p' || key == 'P' ) {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
    } else if (song[currentSong].position() == song[currentSong].length()) {
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
    } else if (song[currentSong].position() == song[currentSong].length()) {
      song[currentSong].rewind();
    } else {
      song[currentSong].rewind();
    }
  }
  if (key == 'f' || key == 'F') { 
    song[currentSong].skip(70000);
  }
  if (key == 'r' || key == 'R') {
    song[currentSong].skip(-5000);
  }
  if (key == 'l' || key == 'L') {
    song[currentSong].loop(loop_int_num);
  }
}
