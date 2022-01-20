class Rektangel {

  // klassens attributter/ tilstand
  float x, y;
  float x2, y2;

  //konstroktøren
  Rektangel() {
    this.x = random(600);      // find to tilfældige værdier inden for canvas størrelsen
    this.y = random(400);
    this.x2 = random(600);
    this.y2 = random(400);
  }

  // klassens metoder

  // tegn firkant på canvas
  void drawRektangel() {
    fill(random(255), random(255), random(255));
    rect(x, y, x2, y2);
  }
}
