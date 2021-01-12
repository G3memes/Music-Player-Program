import ddf.minim.*;

Minim minim;
AudioPlayer groove;
AudioMetaData meta;

void setup()
{
  size(512, 256, P2D);
  
  minim = new Minim(this);
  groove = minim.loadFile("../Music/Aaron Smith - Dancin (KRONO Remix).mp3");
  meta = groove.getMetaData();
  
  textFont(createFont("Serif", 12));
}

int ys = 25;
int yi = 15;

void draw()
{
  background(0);
  int y = ys;
  text("File Name: " + meta.fileName(), 5, y);
  text("Length (in milliseconds): " + meta.length(), 5, y+=yi);
  text("Title: " + meta.title(), 5, y+=yi);
  text("Author: " + meta.author(), 5, y+=yi); 
  text("Album: " + meta.album(), 5, y+=yi);
  text("Date: " + meta.date(), 5, y+=yi);
  text("Comment: " + meta.comment(), 5, y+=yi);
  text("Lyrics: " + meta.lyrics(), 5, y+=yi ); 
  text("Track: " + meta.track(), 5, y+=yi);
  text("Genre: " + meta.genre(), 5, y+=yi);
  text("Copyright: " + meta.copyright(), 5, y+=yi);
  text("Disc: " + meta.disc(), 5, y+=yi);
  text("Composer: " + meta.composer(), 5, y+=yi);
  text("Orchestra: " + meta.orchestra(), 5, y+=yi);
  text("Publisher: " + meta.publisher(), 5, y+=yi);
  text("Encoded: " + meta.encoded(), 5, y+=yi);
}
