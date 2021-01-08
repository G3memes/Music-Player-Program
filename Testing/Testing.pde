
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
  cp5.addScrollableList("dropdown")
    .setPosition(displayWidth*0, displayHeight*1/30)
    .setSize(800, 800)
    .setBarHeight(200)
    .setItemHeight(200)
    .setFont(cf1)
    .addItems(l)
    // .setType(ScrollableList.LIST) // currently supported DROPDOWN and LIST
    ;
}


void draw() {
  background(240);
}

void dropdown(int n) {
  /* request the selected item based on index n */
  println(n, cp5.get(ScrollableList.class, "dropdown").getItem(n));
  if (n == 0) {
    exit();
  }


  /* here an item is stored as a Map  with the following key-value pairs:
   * name, the given name of the item
   * text, the given text of the item by default the same as name
   * value, the given value of the item, can be changed by using .getItem(n).put("value", "abc"); a value here is of type Object therefore can be anything
   * color, the given color of the item, how to change, see below
   * view, a customizable view, is of type CDrawable 
   */

  CColor c = new CColor();
  c.setBackground(color(255, 0, 0));
  cp5.get(ScrollableList.class, "dropdown").getItem(n).put("color", c);
}
