int count_task = 0;
int count_img  = day(); 
int count_color = 0;
int r,g,b;
//menue_bar
float m = 0;
void setup(){
  PFont font = createFont("MS Gothic", 20, true);
  textFont(font);
  size(480, 640);
  background(255);
}
void draw(){
  if(count_task == 1){
    stroke(r, g, b);
    strokeWeight(1);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  if(count_color == 0){//black
    r = 0;
    g = 0;
    b = 0;
  }
  if(count_color == 1){//red
    r = 255;
    g = 0;
    b = 0;
  }
  if(count_color == 2){//green
    r = 0;
    g = 255;
    b = 0;
  }
  if(count_color == 3){//blue
    r = 0;
    g = 0;
    b = 255;
  }
   
 delete_icon();
 save_icon();
 color_icon();
 
 menu_bar();
}

void mousePressed(){
  count_task = 1;  
}

void mouseReleased(){
  count_task = 0;
}

void mouseClicked(){
  if(pow(mouseX - 50, 2) + pow(mouseY - 590, 2) < 1600){//消す
    background(255);
  }
  if(pow(mouseX - 100, 2) + pow(mouseY - 590, 2) < 1600){//保存
  String path = System.getProperty("user.home") + "/Desktop/Scheduler/tasks/" + month() +"," + day() + "," + hour() + ".jpg" ;
  save(path);
  println(path);
  }
  if(pow(mouseX - 150, 2) + pow(mouseY - 590, 2) < 1600){//色変更
    if(count_color < 3){
      count_color ++;
    }else if(count_color == 3){
      count_color = 0;
    }
  }
}
