Weather w;
Time_6hour t;
Clock c;
//mouse_effect
int mouse_count = 0;
int r = 10;
int x;
int y;
//menue_bar
float m = 0;
//page
int page = 4;
void setup() {
  size(480, 640);
  w = new Weather();
  c = new Clock();
  t = new Time_6hour();
}

void mousePressed() {
  mouse_count = 1;
  r = 0;
  x = mouseX;
  y = mouseY;
}

void draw() {
  background(255);
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
}
  void disp4() {//HOME
    day_month_year(15, 530, 1.5);
    w.display(20, 40);//x座標, y座標
    c.display(230, 320);//x座標, y座標 
    mouse_effect(20, 255, 255);//r, g, b
    menu_bar();
  }
  
  void disp0() {//twitter
  fill(255,0,0);
  rect(0,0,50,50);
  menu_bar();
  }
  
  void disp1() {//アラーム
  fill(0,255,0);
  rect(0,0,50,50);
  menu_bar();
  }
  
  void disp2() {//今日の講義
  fill(0,0,255);
  rect(0,0,50,50);
  menu_bar();
  }
  
  void disp3() {//カレンダー
  fill(0,0,0);
  rect(0,0,50,50);
  menu_bar();
  }
