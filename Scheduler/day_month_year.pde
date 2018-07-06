void day_month_year(int x, int y, float r) {
  PFont font = createFont("MS Gothic", 20, true);
  fill(0);
  textFont(font);
  textSize(20 * r);
  text(year() + "年" + month() + "月" + day() + "日", x, y);
}
