class Circle {
  float x, y;
  float d;

  Circle() {
    this.x = random(600);
    this.y = random(400);
    this.d = random(400);
  }
  void drawCircle() {
    circle(x, y, d);
  }
}
