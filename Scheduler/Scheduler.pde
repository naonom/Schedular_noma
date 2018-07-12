import java.util.Calendar;

import twitter4j.*;
import twitter4j.api.*;
import twitter4j.auth.*;
Twitter twitter;

import twitter4j.conf.*;
import twitter4j.json.*;
import twitter4j.management.*;
import twitter4j.util.*;
import twitter4j.util.function.*;

ArrayList<Tweet> tweets;

Twitter_main tm;
Weather w;
Time_6hour t;
Clock c;
Curriculum cu; 
Task ta;
Sample_life s;
//Twitter tw;
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
int r, g, b;
//page
int page = 4;
int background_count = 1;
//tasks
String task [] = new String [7];

void setup() {
  size(480, 640);
  s = new Sample_life();
  tm = new Twitter_main();
  updateTimeLine();
  w = new Weather();
  c = new Clock();
  t = new Time_6hour();
  ta = new Task();
}

void draw() {
  if (background_count == 1) {
    background(255);
  }   
  colorMode(RGB);
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
  case 5:
    disp5();
    break;
  default:
    break;
  }
}
void disp4() {//HOME
  background(255);
  day_month_year(135, 530, 1.5);
  w.display(110, 80);//x座標, y座標
  c.display(230, 350);//x座標, y座標 
  menu_bar();

  fill(0);
  textSize(20);
  text(digital_clock(), 220, 20);

  mouse_effect(20, 255, 255);//r, g, b
}

void disp0() {//twitter
  background_count = 1;
  tm.display(30);
  menu_bar();

  fill(0);
  textSize(20);
  text(digital_clock(), 220, 20);

  mouse_effect(20, 255, 255);//r, g, b
}

void disp1() {//今日の講義
  background_count = 1;
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

  fill(255);
  noStroke();
  rect(220, 3, 50, 20);
  fill(0);

  textSize(20);
  text(digital_clock(), 220, 20);
}

void disp5() {//予定確認
  background_count = 1;
  ta.display();
  menu_bar_2();
}

void disp3() {//生活例
  background_count = 0;
  s.display(10,30);
  menu_bar();

  fill(0);
  textSize(20);
  text(digital_clock(), 220, 20);

  mouse_effect(20, 255, 255);//r, g, b
}
