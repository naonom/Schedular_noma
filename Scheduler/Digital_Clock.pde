String digital_clock() {
  int m = minute();
  int h = hour();  
  return(conv(h) + ":" + conv(m)); 
}

String conv(int i) {
  String s1, s2;
  s1 = String.valueOf(i / 10);
  s2 = String.valueOf(i % 10);
  return s1 + s2;
}
