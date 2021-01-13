void populating_variables() {
  white = #FFFFFF;
  black = #000000;


  //Play Button
  play_but_x = displayWidth*1/2;
  play_but_y = displayHeight*18/20;
  play_but_diameter = displayWidth*1/20;

  play_tri_1_x = displayWidth*59/120;
  play_tri_1_y = displayHeight*35/40;
  play_tri_2_x = displayWidth*59/120;
  play_tri_2_y = displayHeight*37/40;
  play_tri_3_x = displayWidth*31/60;
  play_tri_3_y = displayHeight*18/20;

  play_rect_x = displayWidth*19/40;
  play_rect_y = displayHeight*137/160;
  play_rect_width = displayWidth*1/20;
  play_rect_height = displayHeight*29/320;

  play_rect_x_1 = displayWidth*77/160;
  play_rect_y_1 = displayHeight*140/160;
  play_rect_width_1 = displayWidth*1/25;
  play_rect_height_1 = displayHeight*16/320;


  //Pause Button
  pause_x_1 = displayWidth*235/480;
  pause_y_1 = displayHeight*141/160;
  pause_x_2 = displayWidth*242/480;
  pause_y_2 = displayHeight*141/160;
  pause_width = displayWidth*1/150;
  pause_height = displayHeight*1/27;


  //Next Button
  next_but_x = displayWidth*24/40;
  next_but_y = displayHeight*18/20;
  next_but_diameter = displayWidth*1/27;

  next_tri_1_x = displayWidth*142/240;
  next_tri_1_y = displayHeight*71/80;
  next_tri_2_x = displayWidth*142/240;
  next_tri_2_y = displayHeight*73/80;
  next_tri_3_x = displayWidth*145/240;
  next_tri_3_y = displayHeight*18/20;

  next_lin_x_1 = displayWidth*291/480;
  next_lin_y_1 = displayHeight*142/160;
  next_lin_width = displayWidth*1/250;
  next_lin_height = displayHeight*17/640;

  next_rect_x = displayWidth*93/160;
  next_rect_y = displayHeight*555/640;
  next_rect_width = displayWidth*37/1000;
  next_rect_height = displayHeight*43/640;

  next_rect_x_1 = displayWidth*93/160;
  next_rect_y_1 = displayHeight*71/80;
  next_rect_width_1 = displayWidth*37/1000;
  next_rect_height_1 = displayHeight*17/640;


  //Previous Button
  prev_but_x = displayWidth*16/40;
  prev_but_y =  displayHeight*18/20;
  prev_but_diameter = displayWidth*1/27;

  prev_tri_1_x = displayWidth*95/240;
  prev_tri_1_y = displayHeight*18/20;
  prev_tri_2_x = displayWidth*98/240;
  prev_tri_2_y = displayHeight*71/80;
  prev_tri_3_x = displayWidth*98/240;
  prev_tri_3_y = displayHeight*73/80;

  prev_lin_x_1 = displayWidth*187/480;
  prev_lin_y_1 = displayHeight*142/160;
  prev_lin_width_1 = displayWidth*1/250;
  prev_lin_height_1 = displayHeight*17/640;

  prev_rect_x = displayWidth*61/160;
  prev_rect_y = displayHeight*555/640;
  prev_rect_width = displayWidth*37/1000;
  prev_rect_height = displayHeight*43/640;

  prev_rect_x_1 = displayWidth*123/320;
  prev_rect_y_1 = displayHeight*71/80;
  prev_rect_width_1 = displayWidth*33/1000;
  prev_rect_height_1 = displayHeight*17/640;

  //Description
  desc_x = displayWidth*1/4;
  desc_y = displayHeight*29/40;
  desc_width = displayWidth*1/2;
  desc_height = displayHeight*1/20;

  //Timer
  time_x = displayWidth*1/4;
  time_y = displayHeight*31/40;
  time_width = displayWidth*1/2;
  time_height = displayHeight*1/20;

  font = createFont("Arial", 55);

  number_of_acc_songs = number_of_songs - 1;

  currentSong = 0;
  end_of_list = false;
  next = false;
  reset_time = true;
  recalculate_time = false;
  
  mini_back_x = displayWidth*1/5;
  mini_back_y = displayHeight*0;
  mini_back_width = displayWidth*1;
  mini_back_height = displayHeight*1/2;
}
