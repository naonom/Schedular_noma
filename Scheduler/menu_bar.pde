void menu_bar() {
  if (mouseX > width - 120 && m < 60) {
    m += 2;
  }
  if (mouseX <= width - 120 && m > 0) {
    m  -= 2;
  }
  noStroke();
  fill(255);
  rect(width - 120, 0, 120, 680);
  fill(25, 22, 135, 255 - 255 / m * 4.25 + 1);
  rect(width - m * 2, 0, 120, 800);
  textSize(20);
  for (int i = 0; i < 5; i++) {
    fill(255, 255, 255);
    rect(width - m * 2 + 5, 20 + i * 60, 120, 40);
    if (i == 0) {
      fill(0);
      text("twitter", width - m * 2 + 10, 47 + i * 60);
    }
    if (i == 1) {
      fill(0);
      text("今日の講義", width - m * 2 + 10, 47 + i * 60);
    }
    if (i == 2) {
      fill(0);
      text("予定", width - m * 2 + 10, 47 + i * 60);
    }
    if (i == 3) {
      fill(0);
      text("僕の2週間", width - m * 2 + 10, 47 + i * 60);
    }
    if (i == 4) {
      fill(0);
      text("ホーム", width - m * 2 + 10, 47 + i * 60);
    }
  }
  menu_effect();
  tweet_icon_getup();
  tweet_icon_sleep();
}

void tweet_icon_getup() {
  fill(255, 129, 25);
  stroke(255);
  strokeWeight(2);
  ellipse(width - m * 2 + 60, 400, 40, 40);
  fill(255);
  noStroke();
  ellipse(width - m * 2 + 60, 400, 18, 18); 
  for (int i = 0; i < 8; i ++) {
    ellipse(width - m * 2 + 60 + 13 * sin(PI / 4 * i), 400 + 13 * cos(PI / 4 * i), 5, 5);
  }
}

void tweet_icon_sleep() {
  fill(30, 30, 45);
  stroke(255);
  strokeWeight(2);
  ellipse(width - m * 2 + 60, 460, 40, 40);
  fill(255);
  noStroke();
  ellipse(width - m * 2 + 60 , 460, 25, 25);
  fill(30, 30, 45);
  noStroke();
  ellipse(width - m * 2 + 60 - 4, 460, 22, 22);
}
//width - m * 2 + 60
void menu_effect() {
  if (mouseX > width - 120) {
    for (int i = 0; i < 5; i++) {
      if (mouseY > 20 + i * 60 && mouseY < 60 + i * 60) {
        fill(0, 125, 125, 80);
        rect(width - m * 2, 20 + i * 60, 120, 40);
        fill(135, 0, 205);
        rect(width - m *2, 20 + i * 60, 8, 40);
      }
    }
  }
}
