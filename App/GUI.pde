void music_player_setup() {
  //play button
  //rect(play_rect_x, play_rect_y, play_rect_width, play_rect_height);
  fill(black);
  circle(play_but_x, play_but_y, play_but_diameter);
  //rect(play_rect_x_1, play_rect_y_1, play_rect_width_1, play_rect_height_1);
  fill(white);
  triangle(play_tri_1_x, play_tri_1_y, play_tri_2_x, play_tri_2_y, play_tri_3_x, play_tri_3_y);

  //fast forward button
  //circle();
  //triangle(,,,,,);
  // triangle(,,,,,);
  //line(,,,);

  //Rewind button
  //circle(,,);
  //triangle(,,,,,);
  //triangle(,,,,,);
  //line(,,,);

  //Next
  fill(black);
  circle(next_but_x, next_but_y, next_but_diameter);
  fill(white);
  rect(next_lin_x_1, next_lin_y_1, next_lin_width, next_lin_height);
  triangle(next_tri_1_x, next_tri_1_y, next_tri_2_x, next_tri_2_y, next_tri_3_x, next_tri_3_y);

  //Previous
  //rect(prev_rect_x, prev_rect_y, prev_rect_width, prev_rect_height);
  fill(black);
  circle(prev_but_x, prev_but_y, prev_but_diameter);
  //rect(prev_rect_x_1, prev_rect_y_1, prev_rect_width_1, prev_rect_height_1);
  fill(white);
  triangle(prev_tri_1_x, prev_tri_1_y, prev_tri_2_x, prev_tri_2_y, prev_tri_3_x, prev_tri_3_y);
  rect(prev_lin_x_1, prev_lin_y_1, prev_lin_width_1, prev_lin_height_1);

  //Loop one
  //circle(,,);
  //rect(,,,);
  //text(,,,,);

  //Loop all
  //circle(,,);
  //rect(,,,);
  //text(,,,,);

  //Volume up
  //circle(,,);
  //line(,,,);
  //line(,,,);

  //Volume down
  //circle(,,);
  //line(,,,);

  //Quit button
  //rect(,,,);
  //text(,,,,);
  
  //Description
  textFont(font, 25); 
  textAlign(CENTER, CENTER);
  desc_text = song_meta_data[currentSong].fileName();
  fill(black);
  text(desc_text, desc_x, desc_y, desc_width, desc_height);
  //meta_data();
}
