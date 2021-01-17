
import ddf.minim.*;
import ddf.minim.ugens.*;

float dB;

// declare everything we need to play our file
Minim minim;
FilePlayer filePlayer;
Gain       gain;
AudioOutput out;

// you can use your own file by putting it in the data directory of this sketch
// and changing the value assigned to fileName here.
String fileName = "../App//Aaron Smith - Dancin (KRONO Remix).mp3";

void setup()
{
  // setup the size of the app
  fullScreen();

  // create our Minim object for loading audio
  minim = new Minim(this);
  // this opens the file and puts it in the "play" state.                           
  filePlayer = new FilePlayer( minim.loadFileStream(fileName) );
  // and then we'll tell the recording to loop indefinitely
  filePlayer.loop();

  // start the Gain at 0 dB, which means no change in amplitude
  gain = new Gain(0.f);

  // get a line out from Minim. It's important that the file is the same audio format 
  // as our output (i.e. same sample rate, number of channels, etc).
  out = minim.getLineOut();

  // patch the file player to the output
  filePlayer.patch(gain).patch(out);
}

// draw is run many times
void draw()
{
  // erase the window to black
  background(255);
  // draw using a white stroke
  stroke(0);
  // draw the waveforms
  for ( int i = 0; i < out.bufferSize() - 1; i++ )
  {
    // find the x position of each buffer value
    float x1  =  map( i, 0, out.bufferSize(), displayWidth*1/4, displayWidth*1/2);
    float x2  =  map( i+1, 0, out.bufferSize(), displayWidth*1/4, displayWidth*1/2);
    // draw a line from one buffer position to the next for both channels
    line( x1, displayHeight*1/20 + out.left.get(i)*100, x2, 50 + out.left.get(i+1)*100);
    //line( x1, 150 + out.right.get(i)*50, x2, 150 + out.right.get(i+1)*50);
  }
  stroke(255);
  text("Current Gain is " + dB + " dB.", 10, 20);
  println("Current Gain is " + dB + " dB.", 10, 20);
}
void mouseReleased() {
  // update the gain value. middle of the width will be the original amplitude 
  // of the audio file, far right is twice as loud and far left is half as loud.
  if (mouseX > displayWidth*0 && mouseX < displayWidth*1/4) {
    dB = map(mouseX, displayWidth*0, displayWidth*25/100, -17, 3);
    gain.setValue(dB);
    text("Current Gain is " + dB + " dB.", 10, 20);
  }
}
/*void keyPressed() {
 if (key == 'q') {
 db = -10;
 }
 if (key == 'w') {
 }
 }
 */
