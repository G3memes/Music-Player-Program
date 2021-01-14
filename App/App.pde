import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import controlP5.*;
import java.util.*;


//Global Variables

float mini_back_x, mini_back_y, mini_back_width, mini_back_height;
//
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
float loop_cir_x, loop_cir_y, loop_cir_diameter;
float loop_rect_x, loop_rect_y, loop_rect_width, loop_rect_height;
float loop_rect_x_1, loop_rect_y_1, loop_rect_width_1, loop_rect_height_1;
String loop_all_text;
//
float desc_x, desc_y, desc_width, desc_height;
float time_x, time_y, time_width, time_height;
String desc_text;
String timer_text;
String song_total_length_text;
//
float forward_cir_x, forward_cir_y, forward_cir_diameter;
float forward_x, forward_y, forward_width, forward_height;
float for_tri_1_x, for_tri_1_y, for_tri_2_x, for_tri_2_y, for_tri_3_x, for_tri_3_y;
float for_tri_4_x, for_tri_4_y, for_tri_5_x, for_tri_5_y, for_tri_6_x, for_tri_6_y;
float for_lin_x_1, for_lin_y_1, for_lin_width, for_lin_height;
float for_rect_x, for_rect_y, for_rect_width, for_rect_height;
float for_rect_x_1, for_rect_y_1, for_rect_width_1, for_rect_height_1;
//
float rev_cir_x, rev_cir_y, rev_cir_diameter;
float rev_x, rev_y, rev_width, rev_height;
float rev_tri_1_x, rev_tri_1_y, rev_tri_2_x, rev_tri_2_y, rev_tri_3_x, rev_tri_3_y;
float rev_tri_4_x, rev_tri_4_y, rev_tri_5_x, rev_tri_5_y, rev_tri_6_x, rev_tri_6_y;
float rev_lin_x_1, rev_lin_y_1, rev_lin_width, rev_lin_height;
float rev_rect_x, rev_rect_y, rev_rect_width, rev_rect_height;
float rev_rect_x_1, rev_rect_y_1, rev_rect_width_1, rev_rect_height_1;
//
String list_1;
String list_2;
String list_3;
String list_4;
String list_5;
//
float colour;
//
color white, black, grey;
//
boolean playing;
boolean paused;
boolean end_of_list;
boolean next;
boolean need_meta_data;
boolean reset_time;
boolean recalculate_time;
boolean loop_all;
boolean selected;
//
int number_of_songs = 5;
int number_of_acc_songs;
int currentSong = 0;
int song_playing = 0;
int i;
int x, y;
int loop_int_num = 1; 
int timer_s = 0;
int timer_data_m;
int timer_data_s;
int time;
int song_total_length_m;
int song_total_length_s;
//
int songLength;
int TimeStamp = 45;
float progress_bar_x_start, progress_bar_x_end, progress_bar_y, progress_bar_width, progress_bar_height;
float progress_back_x, progress_back_y, progress_back_width, progress_back_height;
//
PFont font;
//
String absolute;

ControlP5 cp5;
ControlFont cf1;

Minim  minim; //creates object to access all functions
AudioPlayer[] song = new AudioPlayer[number_of_songs]; 
AudioMetaData[] song_meta_data = new AudioMetaData[number_of_songs];

void setup() {
  fullScreen();
  populating_variables();
  frameRate(60);
  background(white);
  load_songs();
  instructions();
  for (int i = currentSong; i<number_of_songs; i++) {
    song_meta_data[i] = song[i].getMetaData();
  }
  music_player_setup();
  scrollable_list();
}

void draw() {
  //
  stroke(0);
  fill(#FFFFFF);
  //rect(progress_bar_x_start, progress_bar_y, progress_bar_width, progress_bar_height);
  //background(#FFFFFF);
  noStroke();
  rect(progress_back_x, progress_back_y, progress_back_width, progress_back_height);
  fill(255); 
  strokeWeight(1);
  fill(0);
  strokeWeight(4);
  stroke(204);
  line(progress_bar_x_start, progress_bar_y, progress_bar_x_end, progress_bar_y ); //where the progress bar should end
  stroke(0);
  TimeStamp = int( map(song[currentSong].position(), 0, song[currentSong].length(), progress_bar_x_start, progress_bar_x_end));
  line(progress_bar_x_start, progress_bar_y, TimeStamp, progress_bar_y );
  //
  noStroke();
  fill(white);
  rect(mini_back_x, mini_back_y, mini_back_width, mini_back_height);
  end_of_song();
  constant_gui();
  timer();
  retrieve_meta_data();
  //end_of_list();
  if (loop_all == true) {
    fill(grey);
    circle(loop_cir_x, loop_cir_y, loop_cir_diameter);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    fill(white);
    text(loop_all_text, loop_rect_x, loop_rect_y, loop_rect_width, loop_rect_height);
    selected = true;
  }
  if (loop_all == false) {
    fill(black);
    circle(loop_cir_x, loop_cir_y, loop_cir_diameter);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    fill(white);
    text(loop_all_text, loop_rect_x, loop_rect_y, loop_rect_width, loop_rect_height);
  }
}

void mousePressed() {
  play_button();
  next_button();
  prev_button();
  loop_all_button();
  forward_button();
  rewind_button();
}

void keyPressed() {
  if (key == 'f' || key == 'F') {
    song[currentSong].skip(5000);
  }
}

int position;
void mouseReleased() {
  if (mouseX > progress_bar_x_start && mouseX <  progress_bar_x_end && mouseY >= progress_bar_y && mouseY <= progress_bar_y+5) {
    position = int( map(mouseX, progress_bar_x_start, progress_bar_x_end, 0, song[currentSong].length() ) );
    song[currentSong].cue( position );
    println("true");
  } else {
    println("false");
  }
}

void dropdown(int n) {
  println(n, cp5.get(ScrollableList.class, "dropdown").getItem(n));
  if (n == 0) {
    song[currentSong].pause();
    currentSong = 0;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
  if (n == 1) {
    song[currentSong].pause();
    currentSong = 1;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
  if (n == 2) {
    song[currentSong].pause();
    currentSong = 2;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
  if (n == 3) {
    song[currentSong].pause();
    currentSong = 3;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
  if (n == 4) {
    song[currentSong].pause();
    currentSong = 4;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
}
