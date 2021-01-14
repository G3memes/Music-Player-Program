import ddf.minim.*; 
import ddf.minim.signals.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*;

Minim minim; 
AudioPlayer song; 
AudioMetaData meta;
int songLength;
int TimeStamp = 45;
float progress_bar_x_start, progress_bar_x_end, progress_bar_y, progress_bar_width, progress_bar_height;
float progress_back_x, progress_back_y, progress_back_width, progress_back_height;
void setup() {
  fullScreen();
  minim = new Minim(this);
  song = minim.loadFile("../App//Aaron Smith - Dancin (KRONO Remix).mp3");
  meta = song.getMetaData();
  song.loop();
  progress_bar_x_start = displayWidth*1/2;
  progress_bar_x_end = displayWidth*3/4;
  progress_bar_y = displayHeight*5/36;
  progress_bar_width = displayWidth*1/4;
  progress_bar_height = displayHeight*1/135;
  
  progress_back_x = displayWidth*1/2;
  progress_back_y = displayHeight*1/10;
  progress_back_width = displayWidth*1/2;
  progress_back_height = displayHeight*1/10;
  
  
}
void draw() {
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
  line(progress_bar_x_start, progress_bar_y ,  progress_bar_x_end, progress_bar_y ); //where the progress bar should end
  stroke(0);

  TimeStamp = int( map(song.position(), 0, song.length(), progress_bar_x_start,  progress_bar_x_end));
  line(progress_bar_x_start, progress_bar_y , TimeStamp, progress_bar_y );
}
int position;
void mouseReleased() {
  if (mouseX > progress_bar_x_start && mouseX <  progress_bar_x_end && mouseY >= 147 && mouseY <= 155) {
    position = int( map(mouseX, progress_bar_x_start, progress_bar_x_end, 0, song.length() ) );
    song.cue( position );
    println("true");
  } else {
    println("false");
  }
}
/*
void InitSong() { 
  song.cue(song.length()); 
  songLength = song.position(); 
  song.cue(0);
}
*/
