class Sample_life {
  String raw_data[][];
  String raw_data_line[];
  int num_data[][];

  Sample_life() {
    raw_data_line = loadStrings("week1_1018080.txt");
    raw_data = new String [raw_data_line.length][6];
    num_data = new int [raw_data_line.length][6];
    for (int i = 0; i < raw_data_line.length; i++) {
      raw_data[i] = raw_data_line[i].split(",");
    }
    for (int n = 1; n < raw_data_line.length; n++) {
      for (int m = 1; m < 6; m++) {
        num_data[n][m] = int(raw_data[n][m]);
      }
    }
  }

  void display(int x, int y) { 
    showBandGraph(num_data, x, y);
  }
}


void showBandGraph(int data[][], float x, float y) {
  float comp[] = new float [8];
  float comp1[] = new float [8];
  int sum = 0;
  int sum1 = 0;

  for (int i = 1; i < 8; i++) {
    sum1 *= 0;
    sum *= 0;
    for (int j = 1; j < 6; j++) {
      comp[j] = 500 * data[i][j] / 288;
      if(i < 7){
      comp1[j] = 500 * data[i + 1][j] / 288;
      }
      fill(255);
      stroke(0);
      strokeWeight(3);
      //rect(10 + 110 * (j - 1), 10, 20, 20);
      rect(x + sum, y + 50 * i, comp[j], 20); 
      if (i != 7) {
        line(x + sum, y + 50 * i +20, x + sum1, y + 50 * (i+1));
      }
      sum += comp[j];
      sum1 += comp1[j];
    }
  }
  fill(0);
  textSize(15);
  text("自習：講義：睡眠：余暇：その他", 10, 430);
}
