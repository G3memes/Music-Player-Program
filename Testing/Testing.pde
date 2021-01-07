import controlP5.*;
 
 
DropdownList menu1, menu2;
ControlP5 cp5;
 
void setup()
{
  size(400, 600);
  cp5 = new ControlP5(this);
 
  menu1 = cp5.addDropdownList("menu1")
    .setPosition(10, 100);
  menu1.addItem("New", 0);
  menu1.addItem("Load", 1);
  menu1.addItem("Save", 2);
  menu1.addItem("Save As", 3);
  menu1.addItem("Exit", 4);
  ;
 
  menu2 = cp5.addDropdownList("menu2")
    .setPosition(200, 100);
  menu2.addItem("Play", 0);
  menu2.addItem("Pause", 1);
  menu2.addItem("Stop", 2);
  menu2.addItem("Forward", 3);
  menu2.addItem("Back", 4);
}
 
void draw()
{
  background(127);
}
 
void controlEvent(ControlEvent theControlEvent) 
{
  if (theControlEvent.isFrom(menu1))
  {
    println("Menu 1");
  }
  if (theControlEvent.getName().equals("menu2"))
  {
    println("Menu 2");
  }
 
  if (theControlEvent.isGroup()) {
    println("event from group : "+theControlEvent.getGroup().getValue()+" from "+theControlEvent.getGroup());
  }
}
