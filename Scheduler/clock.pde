class Clock {
  float theta_s;
  float theta_m;
  float theta_h;
  float xs, ys;
  float xm, ym;
  float xh, yh;

  Clock() {
  }
  void display(float x, float y) { 
    for(int i = 1; i <= 12; i++){
      fill(0);
      textMode(CENTER);
      text(i, 100 * cos(TWO_PI * i / 12 - PI / 2.0) + x, 100 * sin(TWO_PI * i / 12 - PI / 2.0) + y);
    }
    theta_s = TWO_PI * second() / 60 - PI / 2.0;
    xs = x + 100 * cos(theta_s);
    ys = y + 100 * sin(theta_s);  
    stroke(0);
    strokeWeight(3);
    line(x, y, xs, ys);
    stroke(2);
    noFill();
    ellipse(x + 50 * cos(theta_s), y + 50 * sin(theta_s), 20, 20);
 
    theta_m = TWO_PI * minute() / 60 - PI / 2.0;
    xm = x + 80 * cos(theta_m);
    ym = y + 80 * sin(theta_m); 
    stroke(0, 0, 255);
    strokeWeight(3);
    line(x, y, xm, ym); 
    
    int h;
    if(hour() < 12){
      h = hour() - 12;
    }else{
      h = hour();
    }
    theta_h = TWO_PI * h / 12 - PI / 2.0;
    xh = x + 50 * cos(theta_h);
    yh = y + 50 * sin(theta_h);
    stroke(255, 0, 0);
    strokeWeight(3);
    line(x, y, xh, yh);    
  }
}
