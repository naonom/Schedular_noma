void plans() {
    if (draw_line == 1) {
      stroke(r, g, b);
      strokeWeight(1);
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
    if (count_color == 0) {//black
      r = 0;
      g = 0;
      b = 0;
    }
    if (count_color == 1) {//red
      r = 255;
      g = 0;
      b = 0;
    }
    if (count_color == 2) {//green
      r = 0;
      g = 255;
      b = 0;
    }
    if (count_color == 3) {//blue
      r = 0;
      g = 0;
      b = 255;
    }

    delete_icon();
    save_icon();
    color_icon();
  }

void delete_icon() {
  fill(125);
  noStroke();
  ellipse(50, 590, 40, 40);
  stroke(255);
  strokeWeight(5);
  line(40, 580, 60, 600);
  line(40, 600, 60, 580);
  fill(0);
  textSize(20);
  text("消す", 30, 630);
}

void save_icon() {
  fill(255, 129, 25);
  noStroke();
  ellipse(100, 590, 40, 40);
  stroke(255);
  strokeWeight(3);
  line(87, 580, 113, 580);
  line(87, 580, 87, 600);
  line(113, 580, 113, 600);
  line(87, 600, 113, 600);
  line(100, 592, 100, 574);
  line(100, 592, 92, 584);
  line(100, 592, 108, 584);
  fill(0);
  textSize(20);
  text("保存", 80, 630);
}

void color_icon() {
  fill(r, g, b);
  noStroke();
  ellipse(150, 590, 40, 40);
  fill(0);
  textSize(20);
  text("色", 140, 630);
}
