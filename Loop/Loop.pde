import ddf.minim.*;

Minim minim;
AudioPlayer song_1;
int loop_count;

void setup()
{
  size(512, 200, P3D);

  minim = new Minim(this);
  song_1 = minim.loadFile("song_1.mp3", 2048);
  
  textFont(createFont("Arial", 12));
}

void draw()
{
  background(0);

  stroke(255);
  
  for(int i = 0; i < song_1.bufferSize() - 1; i++)
  {
    line(i, 50  + song_1.left.get(i)*50,  i+1, 50  + song_1.left.get(i+1)*50);
    line(i, 150 + song_1.right.get(i)*50, i+1, 150 + song_1.right.get(i+1)*50);
  }
  
  text("The player has " + song_1.loopCount() + " loops left." 
     + " Is playing: " + song_1.isPlaying() 
     + ", Is looping: " + song_1.isLooping(), 5, 15);
}

void keyPressed()
{
  String keystr = String.valueOf(key);
  int num = int(keystr);
  if ( num > 0 && num < 10 )
  {
    song_1.loop(num);
    loop_count = num;
  }    
}
