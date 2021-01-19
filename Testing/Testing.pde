


/**
 * This sketch demonstrates how to play a file with Minim using an AudioPlayer. <br />
 * It's also a good example of how to draw the waveform of the audio. Full documentation 
 * for AudioPlayer can be found at http://code.compartmental.net/minim/audioplayer_class_audioplayer.html
 * <p>
 * For more information about Minim and additional features, 
 * visit http://code.compartmental.net/minim/
 */

import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup()
{
  fullScreen();

  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);

  // loadFile will look in all the same places as loadImage does.
  // this means you can find files that are in the data folder and the 
  // sketch folder. you can also pass an absolute path, or a URL.
  player = minim.loadFile("../App//Aaron Smith - Dancin (KRONO Remix).mp3");
  player.play();
}

void draw()
{
  background(255);
  stroke(0);

  // draw the waveforms
  // the values returned by left.get() and right.get() will be between -1 and 1,
  // so we need to scale them up to see the waveform
  // note that if the file is MONO, left.get() and right.get() will return the same value
  for (int i = 0; i < player.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, player.bufferSize(), displayWidth*1/4, displayWidth*3/4);
    float x2 = map( i+1, 0, player.bufferSize(), displayWidth*1/4, displayWidth*3/4);
    line( x1, displayHeight*16/25 + player.left.get(i)*50, x2, displayHeight*16/25 + player.left.get(i+1)*50 );
    //line( x1, 150 + player.right.get(i)*50, x2, 150 + player.right.get(i+1)*50 );
  }
}
