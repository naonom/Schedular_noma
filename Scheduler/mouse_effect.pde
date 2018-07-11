void mouse_effect(int n, int m, int l) {
  if (mouse_count == 1 && ellipse_r <= 255) {
    noFill();
    strokeWeight(3);
    stroke(n, m, l, 255 - r);
    ellipse(x, y, ellipse_r / 3, ellipse_r / 3);
    ellipse_r += 3;
  } else {
    mouse_count = 0;
  }
}

void mouseReleased() {
  if (page != 2) {
    if (mouseX > width - 120) {
      for (int i = 0; i < 5; i++) {
        if (mouseY > 20 + i * 60 && mouseY < 60 + i * 60 && m >= 60) {
          page = i;
          m = 0;
        }
      }
    }
  }
  if (page == 2) {
    draw_line = 0;
    if (mouseX > width - 120) {
      for (int j = 0; j < 5; j++) {
        if (mouseY > 20 + j * 60 && mouseY < 60 + j * 60 && n >= 60) {
          if (j == 0) {//予定追加
            page = 2;
          }
          if (j == 1) {//予定確認
          }
          if (j == 2) {
            background_count = 1;
            page = 4;
            n = 0;
          }
        }
      }
    }
  }
}

void mousePressed() {
  mouse_count = 1;
  ellipse_r = 0;
  x = mouseX;
  y = mouseY;
  if (page == 2) {
    draw_line = 1;
  }
}

void mouseClicked() {
  if (page == 2) {
    if (pow(mouseX - 50, 2) + pow(mouseY - 590, 2) < 1600) {//消す
      background(255);
    }
    if (pow(mouseX - 100, 2) + pow(mouseY - 590, 2) < 1600) {//保存
      String path = System.getProperty("user.home") + "/Desktop/Scheduler/tasks/" + month() +"," + day() + "," + hour() + ".jpg" ;
      save(path);
      println(path);
    }
    if (pow(mouseX - 150, 2) + pow(mouseY - 590, 2) < 1600) {//色変更
      if (count_color < 3) {
        count_color ++;
      } else if (count_color == 3) {
        count_color = 0;
      }
    }
  }
}
