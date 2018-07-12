class Task {
  String task_number [];
  Task() {
    task_number = loadStrings("task.txt");
  }
  void display() {
    for (int i = 0; i < task_number.length; i ++) {
      if (i / 2 == 0) { 
        image(loadImage(task_number[i] + ".jpg"), 50 + i * 140, 30, 120, 160 ); 
          
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
