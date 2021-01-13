
import controlP5.*;
import java.util.*;

String absolute;

ControlP5 cp5;
ControlFont cf1;

void setup() {
  fullScreen();
  cp5 = new ControlP5(this);
  cf1 = new ControlFont(createFont("Arial", 28, true), 58);
  List l = Arrays.asList("Hello", "b", "c", "d", "e", "f", "g", "h");
  cp5.addScrollableList("All Songs")
    .setPosition(displayWidth*0, displayHeight*1/30)
    .setSize(800, 800)
    .setBarHeight(200)
    .setItemHeight(200)
    .setFont(cf1)
    .addItems(l)
    .setColorBackground(color(255))
    .setColorActive(color(240))
    .setColorForeground(color(220))
    .setColorValueLabel(color(20))
    .setColorCaptionLabel(color(20))
    .setType(ScrollableList.LIST) // currently supported DROPDOWN and LIST

    ;
}


void draw() {
  //background(255);
}

void dropdown(int n) {
  /* request the selected item based on index n */
  println(n, cp5.get(ScrollableList.class, "All Songs").getItem(n));
  if (n == 0) {
    exit();
  }
}
