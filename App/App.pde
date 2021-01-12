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
//
float pause_x_1, pause_y_1, pause_width, pause_height;
float pause_x_2, pause_y_2;
//
float next_but_x, next_but_y, next_but_diameter;
float next_tri_1_x, next_tri_1_y, next_tri_2_x, next_tri_2_y, next_tri_3_x, next_tri_3_y;
float next_lin_x_1, next_lin_y_1, next_lin_width, next_lin_height;
float next_rect_x, next_rect_y, next_rect_width, next_rect_height;
float next_rect_x_1, next_rect_y_1, next_rect_width_1, next_rect_height_1;
//
float prev_but_x, prev_but_y, prev_but_diameter;
float prev_tri_1_x, prev_tri_1_y, prev_tri_2_x, prev_tri_2_y, prev_tri_3_x, prev_tri_3_y;
float prev_lin_x_1, prev_lin_y_1, prev_lin_width_1, prev_lin_height_1;
float prev_rect_x, prev_rect_y, prev_rect_width, prev_rect_height;
float prev_rect_x_1, prev_rect_y_1, prev_rect_width_1, prev_rect_height_1;
//
float colour;
//
color white, black;
//
boolean playing;
boolean paused;
boolean end_of_list;
boolean next;
boolean need_meta_data;
//
int number_of_songs = 5;
int number_of_acc_songs;
int currentSong = 0;
int song_length;
int song_playing = 0;
int i;
int x, y;
int loop_int_num = 1; 


Minim  minim; //creates object to access all functions
AudioPlayer[] song = new AudioPlayer[number_of_songs]; 
AudioMetaData[] song_meta_data = new AudioMetaData[number_of_songs];

void setup() {
  fullScreen();

  populating_variables();

  frameRate(60);

  background(white);

  music_player_setup();

  load_songs();

  currentSong = 0;

  end_of_list = false;

  next = false;

  instructions();

  for (int i = currentSong; i<number_of_songs; i++) {
    song_meta_data[i] = song[i].getMetaData();
  }

  meta_data();
}

void draw() {
  //println(song[currentSong].position()+ " seconds");
  constant_gui();
  if (need_meta_data == true) {
    meta_data();
    need_meta_data = false;
  }
  //println(song[currentSong].length());
  //println(song[currentSong].position());
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
void mousePressed() {
  play_button();
  next_button();
  prev_button();
}
void keyPressed() {
  key_shortcut();
}
