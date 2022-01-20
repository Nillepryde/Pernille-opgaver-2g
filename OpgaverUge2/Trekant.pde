class Trekant {

  // klassens attributter/ tilstand
  float x, y;
  float x2, y2;
  float x3, y3;

  //konstroktøren
  Trekant() {
    this.x = random(600);      // find to tilfældige værdier inden for canvas størrelsen
    this.y = random(400);
    this.x2 = random(600);
    this.y2 = random(400);
    this.x3 = random(600);
    this.y3 = random(400);
  }

  // klassens metoder

  // tegn firkant på canvas
  void drawTrekant() {
    fill(random(255), random(255), random(255));
    triangle(x,y,x2,y2,x3,y3);
  }
}
