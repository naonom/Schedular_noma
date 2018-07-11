void mouse_effect(int n, int m, int l) {
  if (mouse_count == 1 && r <= 255) {
    noFill();
    strokeWeight(3);
    stroke(n, m, l, 255 - r);
    ellipse(x, y, r / 3, r / 3);
    r += 3;
  } else {
    mouse_count = 0;
  }
}
