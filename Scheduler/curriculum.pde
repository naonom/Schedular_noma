class Curriculum {
  int year = year();
  int month = month() - 1;
  int date = day();
  int week;
  
  String curriculum_one_day[] = new String[6];

  Curriculum(int x, int y) {
    Calendar cal = Calendar.getInstance();
    cal.set(year, month, date);
    week = cal.get(Calendar.DAY_OF_WEEK) - 1;
    textSize(40);
    if (cal.get(Calendar.DAY_OF_WEEK) == 1) {
      fill(0);
      text("日曜日", x, y);
    }
    if (cal.get(Calendar.DAY_OF_WEEK) == 2) {
      fill(255, 40, 25);
      text("月曜日", x, y);
    }
    if (cal.get(Calendar.DAY_OF_WEEK) == 3) {
      fill(255, 94, 25);
      text("火曜日", x, y);
    }
    if (cal.get(Calendar.DAY_OF_WEEK) == 4) {
      fill(32, 0, 152);
      text("水曜日", x, y);
    }
    if (cal.get(Calendar.DAY_OF_WEEK) == 5) {
      fill(40, 163, 11);
      text("木曜日", x, y);
    }
    if (cal.get(Calendar.DAY_OF_WEEK) == 6) {
      fill(255, 129, 25);
      text("金曜日", x, y);
    }
    if (cal.get(Calendar.DAY_OF_WEEK) == 7) {
      fill(0);
      text("土曜日", x, y);
    }
  }
  void loadData() {
    int i = 0;//曜日によって変わーる
    String curriculum[] = loadStrings("week_curriculum.txt");
    i = week * 7;  
    for (int j = 1; j <= 5; j++) {
      String curriculum_time[] = split(curriculum[j + i], ",");
      if (curriculum_time[1] != null) {
        curriculum_one_day[j] = curriculum_time[1];
      } else {
        curriculum_one_day[j] = " ";
      }
      PFont font = createFont("MS Gothic", 20, true);
      textFont(font);
      fill(0);
      textSize(30);
      text(j + "  " + curriculum_one_day[j], 30, 100 + 50 * j);
    }
  }
}
