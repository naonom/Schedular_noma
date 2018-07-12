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
  if (page == 2 || page == 5) {
    draw_line = 0;
    if (mouseX > width - 120) {
      for (int j = 0; j < 5; j++) {
        if (mouseY > 20 + j * 60 && mouseY < 60 + j * 60 && n >= 60) {
          if (j == 0) {//予定追加
            page = 2;
          }
          if (j == 1) {//予定確認
           page = 5;
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
  if (pow(mouseX - 420, 2) + pow(mouseY - 400, 2) < 400){
    tweet("起きた。" + hour() + ":" + minute());
    println(1);
  }
  if (pow(mouseX - 420, 2) + pow(mouseY - 460, 2) < 400){
    tweet("寝た。" + hour() + ":" + minute());
    println(2);
  }
  int task_count = 0;
  if (page == 2) {
    if (pow(mouseX - 50, 2) + pow(mouseY - 590, 2) < 1600) {//消す
      background(255);
    }
    if (pow(mouseX - 100, 2) + pow(mouseY - 590, 2) < 1600) {//保存
      String path = System.getProperty("user.home") + "/Desktop/Scheduler/data/" + month() +"," + day() + "," + hour() + "," + minute() + ".jpg" ;
      save(path);
      task[task_count] = (month() + "," + day() + "," + hour() + "," + minute());
      saveStrings("task.txt", task);
      task_count ++;
    }
    if (pow(mouseX - 150, 2) + pow(mouseY - 590, 2) < 1600) {//色変更
      if (count_color < 3) {
        count_color ++;
      } else if (count_color == 3) {
        count_color = 0;
      }
    }
    if (pow(mouseX - 200, 2) + pow(mouseY - 590, 2) < 1600) {//更新
      ta = new Task();
    }
  }
  //if(page == 0){
    //if
}
