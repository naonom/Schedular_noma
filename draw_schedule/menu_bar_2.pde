
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
  fill(88, 191, 63, 255 - 255 / m * 4.25 + 1);
  rect(width - m * 2, 0, 120, 800);
  textSize(20);
  for (int i = 0; i < 3; i++) {
    fill(255, 255, 255);
    rect(width -m * 2, 20 + i * 60, 120, 40);
    if (i == 0) {
      fill(0);
      text("予定追加", width - m * 2 + 10, 47 + i * 60);
    }
    if (i == 1) {
      fill(0);
      text("予定確認", width - m * 2 + 10, 47 + i * 60);
    }
    if (i == 2) {
      fill(0);
      text("戻る", width - m * 2 + 10, 47 + i * 60);
    }
  }
  menu_effect_2();
}

void menu_effect_2() {
  if (mouseX > width - 120) {
    for (int i = 0; i < 3; i++) {
      if (mouseY > 20 + i * 60 && mouseY < 60 + i * 60) {
        noStroke();
        fill(71, 234, 126, 80);
        rect(width - m * 2, 20 + i * 60, 120, 40);
        fill(47, 79, 75);
        rect(width - m *2, 20 + i * 60, 8, 40);
      }
    }
  }
}
