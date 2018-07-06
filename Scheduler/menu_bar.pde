void menu_bar() {
  if (mouseX > width - 120 && m < 60) {
    m += 2;
  }
  if (mouseX <= width - 120 && m > 0) {
    m  -= 2;
  }
  noStroke();
  fill(25, 22, 135, 255 - 255 / m * 4.25 + 1);
  rect(width - m * 2, 0, 120, 800);
  textSize(20);
  for (int i = 0; i < 5; i++) {
    fill(255, 255, 255, 255 - 255 / m * 4.25 +1);
    rect(width -m * 2, 20 + i * 60, 120, 40);
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
      text("アラーム", width - m * 2 + 10, 47 + i * 60);
    }
    if (i == 3) {
      fill(0);
      text("カレンダー", width - m * 2 + 10, 47 + i * 60);
    }
    if (i == 4) {
      fill(0);
      text("HOME", width - m * 2 + 10, 47 + i * 60);
    }
  }
  menu_effect();
  println(m);
}

void mouseReleased() {
  if (mouseX > width - 120) {
    for (int i = 0; i < 5; i++) {
      if (mouseY > 20 + i * 60 && mouseY < 60 + i * 60) {
        page = i;
      }
    }
  }
}

void menu_effect() {
  if (mouseX > width - 120) {
    for (int i = 0; i < 5; i++) {
      if (mouseY > 20 + i * 60 && mouseY < 60 + i * 60) {
        fill(0, 125, 125, 80);
        rect(width -m * 2, 20 + i * 60, 120, 40);
      }
    }
  }
}
