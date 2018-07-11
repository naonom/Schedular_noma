import java.util.Calendar;

Weather w;
Time_6hour t;
Clock c;
Curriculum cu; 
//mouse_effect
int mouse_count = 0;
int ellipse_r = 10;
int x;
int y;
//menu_bar
float m = 0;
//menu_bar2
float n = 0;
//Draw_plan
int draw_line = 1;
int count_color = 0;
int r,g,b;
//page
int page = 4;
int background_count = 1;
void setup() {
  size(480, 640);
  w = new Weather();
  c = new Clock();
  t = new Time_6hour();
}

void draw() {
  if(background_count == 1){
    background(255);
  }   
  switch(page) {
  case 0:
    disp0();
    break;
  case 1:
    disp1();
    break;
  case 2:
    disp2();
    break;
  case 3:
    disp3();
    break;
  case 4:
    disp4();
    break;
  default:
    break;
  }
  println(background_count);
}
void disp4() {//HOME
  background(255);
  day_month_year(15, 530, 1.5);
  w.display(20, 60);//x座標, y座標
  c.display(230, 320);//x座標, y座標 
  menu_bar();

  fill(0);
  textSize(20);
  text(digital_clock(), 220, 20);

  mouse_effect(20, 255, 255);//r, g, b
}

void disp0() {//twitter
  fill(255, 0, 0);
  rect(0, 0, 50, 50);
  menu_bar();

  fill(0);
  textSize(20);
  text(digital_clock(), 220, 20);

  mouse_effect(20, 255, 255);//r, g, b
}

void disp1() {//今日の講義
  background(255);
  cu = new Curriculum(30, 70);
  cu.loadData();
  menu_bar();

  fill(0);
  textSize(20);
  text(digital_clock(), 220, 20);

  mouse_effect(20, 255, 255);//r, g, b
}

void disp2() {//予定
  background_count = 0;
  plans();
  menu_bar_2();
  fill(0);
  textSize(20);
  text(digital_clock(), 220, 20);
  fill(255);
  noStroke();
  rect(220, 20, 100, 20);
}

void disp3() {//カレンダー
  fill(0, 0, 0);
  rect(0, 0, 50, 50);
  menu_bar();
  
  fill(0);
  textSize(20);
  text(digital_clock(), 220, 20);

  mouse_effect(20, 255, 255);//r, g, b
}
