class Time_6hour {
  int fixation_s = 0;
  int m = 0;
  int h = 6;
  int count;
  int count2;

  Time_6hour() {
    count = 0;
    fixation_s = second();
  }
  void display(int x, int y) {
    int s = fixation_s - second();
    if (second() == 59 && count == 0) {
      count = 1;
    }
    if (second() == 0 && count == 1) {
      fixation_s -= 60;
      count =0;
    }
    if (s == -1) {
      m --;
      fixation_s += 60;
    }
    if (m == -1 && count2 == 0) {
      m = 59;
      count2 = 1;
    }
    if (m == 59 && count2 == 1) {
      h--;
      count2 = 0;
    }
    text(conv(h) + ":" + conv(m) + ":" + conv(s), x, y);
  }
}

String conv(int i) {
  String s1, s2;
  s1 = String.valueOf(i / 10);
  s2 = String.valueOf(i % 10);
  return s1 + s2;
}
