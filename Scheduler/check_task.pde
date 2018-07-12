class Task {
  String task_number [];
  Task() {
    task_number = loadStrings("task.txt");
  }
  void display() {
    float n = 1;
    for (int i = 0; i < task_number.length; i ++) {
      if (i / 2 == 0) { 
        if(mouseX > 50 + i * 140 && mouseX < 50 + i * 140 + 120 && mouseY > 30 && mouseY < 190){
          n = 2;
        }  
        image(loadImage(task_number[i] + ".jpg"), 50 + i * 140, 30, 120 * n, 160 * n);
        
      }
      if (i / 2 == 1) {
        image(loadImage(task_number[i] + ".jpg"), 50 + (i - 2) * 140, 220, 120, 160);
        
      }
      if (i / 2 == 2) {
        image(loadImage(task_number[i] + ".jpg"), 50 + (i - 4) * 140, 410, 120, 160);

      }
    }
  }
}
